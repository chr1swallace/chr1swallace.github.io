(require 'ox-latex)

(defun org-beamer-export-body-only-to-latex ()
  "Export only code between \"\begin{document}\" and \"\end{document}\" to a LaTeX file."
  (interactive)
  (org-beamer-export-to-latex nil nil nil t))
