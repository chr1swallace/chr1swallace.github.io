OBJS = index.html group.html research.html code.html contact.html

main: $(OBJS)
	echo "done"

%.html: %.org
	emacs -batch -Q -L lisp -l ~/.emacs --visit $^ -f org-html-export-to-html

