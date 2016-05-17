OBJS = index.html group.html research.html code.html contact.html pubs.html data.html pubs2.html background.html vacancies.html

main: $(OBJS) orcid-out.org
	echo "done"

%.html: %.org
	emacs24 -batch -Q -L lisp -l efun.el --visit $^ -f org-html-export-to-html

view: $(OBJS)
	gnome-www-browser index.html &

orcid-renew: 
	curl -H "Accept: application/orcid+xml" 'http://pub.orcid.org/v1.2/0000-0001-9755-1703/orcid-works' -L -i > orcid.html
	awk 'NR>9 {print}' orcid.html | sed 's/orcid-//g' > orcid.xml

orcid-out.org: orcid.xml
	./orcid-format-org.rb
	touch pubs2.org

# cp pubs-a.html pubs.html
# ./orcid-format-html.rb
#curl  http://feed.labs.orcid-eu.org/0000-0001-9755-1703?format=txt > orcid.txt
