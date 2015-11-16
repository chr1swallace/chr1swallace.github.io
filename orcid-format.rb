#!/usr/bin/ruby

require 'nokogiri'

## prepare output
ofile = File.open('orcid.org','w')

doc = Nokogiri::XML(File.open("./orcid.xml"))
@block = doc.css("works work")
puts "Works found: " + @block.count

@block.map { |node| 
  ti = node.css("title").children
  ti.sub(<title>, </title> -> "")
  ci = node.css("citation").children
ci.sub("Wallace C" -> bold)
@ids = node.css('work-external-identifier')
}



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

## close output
ofile.close()
