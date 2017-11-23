#!/usr/bin/env ruby

require 'nokogiri'


doc = Nokogiri::XML(File.open("./orcid.xml"))
@block = doc.css("works work")
puts "Works found: " + @block.count.to_s


## prepare output
OFILE = File.open('orcid-out.org','w')
years = Hash.new(0)
titles = Hash.new(0)

def addlink(type, id) 
  if type=="pmid"
    OFILE.write(" [ [[http://ukpmc.ac.uk/abstract/MED/#{id}][=ukpmc=]] ]")
  end
  if type=="doi"
    OFILE.write(" [ [[http://dx.doi.org/#{id}][=doi=]] ]")
  end
end

def bstart
  OFILE.write("1. ")
end

def bend
  OFILE.write("\n")
end

def bold_authors i
  i.sub!("Wallace C","*Wallace C*")
  i.sub!("Liley J","*Liley J*")
  i.sub!("Burren O","*Burren O*")
  i.sub!("Guo H","*Guo H*")
  i.sub!("Fortune MD","*Fortune MD*")
  i.sub!("Yang X","*Yang X*")
  i.sub!("Pontikos N","*Pontikos N*")
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

#OFILE.write("<ol>\n")

skip_re=/Erratum|Corrigendum/
source_re=/Scopus/

@block.map { |node| 

  so = node.css("source-name").children.text
  source = source_re.match(so)
  if source
    next
  end

  type = node.css("work-type").children.text
  if(type=="other")
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
  if(titles[ti2]==1)
    next
  end
  titles[ti2] = 1

  yr = node.css("year").children.text

  if years[yr] == 0
    #    OFILE.write("<div style=\"font-weight:bold; font-size:150%; margin-top:10px\">" + yr + "</div>")
    OFILE.write("\n\n** " + yr + "\n\n")
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
  OFILE.write("#{ti}@@html:<br/>@@ #{au_long}.@@html:<br/>@@ #{ci}.@@html:<br/>@@ ")

  citype=node.css("work-citation-type").children.text
  if(citype=="bibtex") then
    jo = node.css("journal-title").children.text
  else
    jo = node.css("citation").children.text
    jo.sub!("#{au_complete}, ","")
    jo.sub!(/, .*/,"")
  end

  @types = node.css('work-external-identifier-type').map { |i| i.text }
  @ids = node.css('work-external-identifier-id').map { |i| i.text }

  for i in 0 ... @ids.size
    addlink(@types[i], @ids[i])
  end

  if ti=="Widespread seasonal gene expression reveals annual differences in human immunity and physiology." then
    OFILE.write(" [ [[https://www.wired.com/2015/05/dna-changes-seasons-just-like-weather][=WIRED article=]] ]")
    OFILE.write(" [ [[http://www.livescience.com/50806-seasonal-variation-human-genes-immune-inflammation.html][=LIVE SCIENCE article=]] ]")
  end

  bend()
}

OFILE.write("\n\n")

## close output
OFILE.close()
























