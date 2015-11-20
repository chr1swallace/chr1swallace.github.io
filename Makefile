OBJS = index.html group.html research.html code.html contact.html pubs.html

main: $(OBJS)
	echo "done"

%.html: %.org
	emacs -batch -Q -L lisp -l ~/.emacs.org --visit $^ -f org-html-export-to-html

view: $(OBJS)
	gnome-www-browser index.html

orcid-renew: 
	curl -H "Accept: application/orcid+xml" 'http://pub.orcid.org/v1.2/0000-0001-9755-1703/orcid-works' -L -i > orcid.html
	awk 'NR>9 {print}' orcid.html | sed 's/orcid-//g' > orcid.xml

orcid-format: 
	./orcid-format.rb
	touch pubs.org

#curl  http://feed.labs.orcid-eu.org/0000-0001-9755-1703?format=txt > orcid.txt
