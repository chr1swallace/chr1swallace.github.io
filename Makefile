OBJS = index.html group.html research.html code.html contact.html pubs.html data.html pubs2.html background.html vacancies.html pubs3.html talks.html charlie.html

main: $(OBJS) orcid-out.org
	echo "done"

fresh:
	touch *.org

%.html: %.org nav2.org setup3.org 
	emacs24 -batch -Q -L lisp -l efun.el --visit $< -f org-html-export-to-html

view: $(OBJS)
	gnome-www-browser index.html &

orcid-renew: 
	curl -H "Accept: application/orcid+xml" 'http://pub.orcid.org/v1.2/0000-0001-9755-1703/orcid-works' -L -i > orcid.html
	sed -n '/^<.xml version/,$p' orcid.html | sed 's/orcid-//g' > orcid.xml

# awk 'NR>9 {print}' orcid.html | sed 's/orcid-//g' > orcid.xml

orcid-tbl.org: orcid.xml orcid-format-org-tbl.rb
	./orcid-format-org-tbl.rb
	touch pubs3.org

orcid-out.org: orcid.xml orcid-format-org.rb
	./orcid-format-org.rb
	touch pubs2.org

# cp pubs-a.html pubs.html
# ./orcid-format-html.rb
#curl  http://feed.labs.orcid-eu.org/0000-0001-9755-1703?format=txt > orcid.txt
