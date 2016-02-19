#!/usr/bin/ruby

require 'nokogiri'


doc = Nokogiri::XML(File.open("./orcid.xml"))
@block = doc.css("works work")
puts "Works found: " + @block.count.to_s


## prepare output
OFILE = File.open('pubs.html','a')
years = Hash.new(0)
titles = Hash.new(0)

def addlink(type, id) 
  if type=="pmid"
    OFILE.write(" [<a href=\"http://ukpmc.ac.uk/abstract/MED/#{id}\"><tt>ukpmc</tt></a>]")
  end
  if type=="doi"
    OFILE.write(" [<a href=\"http://dx.doi.org/#{id}\"><tt>doi</tt></a>]")    
  end
end

def bstart
  OFILE.write("<li>")
end

def bend
  OFILE.write("</li>\n\n")
end

def bold_authors i
  i.sub!("Wallace C","<b>Wallace C</b>")
  i.sub!("Liley J","<b>Liley J</b>")
  i.sub!("Guo H","<b>Guo H</b>")
  i.sub!("Fortune MD","<b>Fortune MD</b>")
  i.sub!("Yang X","<b>Yang X</b>")
  i.sub!("Pontikos N","<b>Pontikos N</b>")
  i
end

def auput i
  comma_re=/,/
  i.gsub!("\.","") # remove .
  i.gsub!(",","") # remove ,
  # comma = comma_re.match(i)
  # if(comma)
  #   second,first = i.split(',').map(&:strip)
  #   i = "#{first} #{second}"
  # end  
  bold_authors(i)
  i
end

OFILE.write("<ol>\n")

skip_re=/Erratum|Corrigendum/
source_re=/Scopus/

@block.map { |node| 

  so = node.css("source-name").children.text
  source = source_re.match(so)
  if source
    next
  end

  ti = node.css("title").children.text
  ti.sub!("\.$","")
  # TODO: skip Erratum/Corigendum
  skip=skip_re.match(ti)
  if(skip)
    next
  end
  # TODO: make and check hash of titles
  ti2=ti.downcase.gsub(/[^a-z]/, '')
  if titles[ti2] ==0
    titles[ti2] = 1
  else
    next
  end

  yr = node.css("year").children.text

  if years[yr] == 0
    OFILE.write("<div style=\"font-weight:bold; font-size:150%; margin-top:10px\">" + yr + "</div>")
    years[yr] = 1
  end

  ci = node.css("citation").children.text

  bstart()

  @au = node.css("credit-name").children.map { |i| i.text }
  au_complete = @au.join(", ")
  ci.sub!("#{au_complete}, ","")
  @au.map!{ |i| auput(i) }
  if @au.count > 20
    n=@au.count
    no=n-20
    @au = [ @au[0..9], "... #{no} other(s)...", @au[(n-10)..n] ].flatten
  end
  au_long = @au.join(", ")
  OFILE.write("#{ti}<br/>\n#{au_long}.<br/>\n#{ci}.<br/>\n")

  @types = node.css('work-external-identifier-type').map { |i| i.text }
  @ids = node.css('work-external-identifier-id').map { |i| i.text }

  for i in 0 ... @ids.size
    addlink(@types[i], @ids[i])
  end

  bend()
}

OFILE.write("</ol>\n")
OFILE.write("</div></div></body></html>")

## close output
OFILE.close()
























