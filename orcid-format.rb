#!/usr/bin/ruby

require 'nokogiri'


doc = Nokogiri::XML(File.open("./orcid.xml"))
@block = doc.css("works work")
puts "Works found: " + @block.count


## prepare output
OFILE = File.open('orcid-out.html','w')
years = Hash.new(0)

def addlink(type, id) 
  if type=="pmid"
    OFILE.write(" [<a href=\"http://ukpmc.ac.uk/abstract/MED/#{id}\"><b><tt>ukpmc</tt></b></a>]")
  end
  if type=="doi"
    OFILE.write(" [<a href=\"http://dx.doi.org/#{id}\"><b><tt>doi</tt></b></a>]")    
  end
end

def bstart
  OFILE.write("<li>")
end

def bend
  OFILE.write("</li>\n\n")
end

def auput i
  comma_re=/,/
  i.gsub!("\.","") # remove .
  comma = comma_re.match(i)
  if(comma)
    second,first = i.split(',').map(&:strip)
    i = "#{first} #{second}"
  end  
  i.sub("C Wallace","<b>C Wallace</b>")
  i.sub("J Liley","<b>J Liley</b>")
  i.sub("H Guo","<b>H Guo</b>")
  i.sub("MD Fortune","<b>MD Fortune</b>")
  i.sub("X Yang","<b>X Yang</b>")
  i.sub("N Pontikos","<b>N Pontikos</b>")
end

OFILE.write("<ol>\n")

@block.map { |node| 

  ti = node.css("title").children.text
  yr = node.css("year").children.text

  if years[yr] == 0
    OFILE.write("<div style=\"font-weight:bold\">" + yr + "</div>")
    years[yr] = 1
  end

  bstart()

  @au = node.css("credit-name").children.map { |i| i.text }
  @au.map!{ |i| auput(i) }
  if @au.count > 20
    n=@au.count
    no=n-20
    @au = [ @au[0..9], "... #{no} other(s)...", @au[(n-10)..n] ].flatten
  end
  OFILE.write(@au.join(", ") + ".\n" + yr + ".\n" + ti + ".\n")

  @types = node.css('work-external-identifier-type').map { |i| i.text }
  @ids = node.css('work-external-identifier-id').map { |i| i.text }

  for i in 0 ... @ids.size
    addlink(@types[i], @ids[i])
  end

  bend()
}

OFILE.write("</ol>\n")

## close output
OFILE.close()

























parsed_res = Crack::XML.parse(xx)

@doc.xpath("//")

thing = doc.at_xpath('//things')
puts "ID   = " + thing.at_xpath('//Id').content
puts "Name = " + thing.at_xpath('//Name').content


arxiv_re = /http:\/\/arxiv.org\/abs\/([\.\d]+)\"/
oldstyle_re = /^<a name=\"(\w+)(\d{2})/
newstyle_re = /^<a name=\"(\d{4})_/

year_re = /\((\d{4})\)/
years = Hash.new(0)

doi_re = /doi:(.*)/

IO.foreach('orcid.txt') { |line|
  ## get year
  year = year_re.match(line)
  if year
    yearn = year.captures[0]
    if years[yearn] == 0
      ofile.write('#+LATEX: <div style="font-weight:bold">' + yearn + ' </div>')
      years[yearn] = 1
    end
  end

  ## any doi
  doi = doi_re.match(doi)

  ## if arxiv, split line after first ' '
  arxiv = arxiv_re.match(line)
  if arxiv
#     puts("found arxiv")
#     puts(line)
    line=line.sub("</a>, ", "</a>, \n" )
#     puts(line)
  end
  ofile.write(line)
}
