#!/bin/bash

cat > _bibliography/references.bib <<EOD
---
---
References
==========
EOD
cat ~/texmf/bibtex/bib/cp.bib | \
    sed 's/\\textbf{Wallace C}/Wallace C/'  >> _bibliography/references.bib

