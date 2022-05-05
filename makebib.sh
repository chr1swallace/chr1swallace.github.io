#!/bin/bash

cat > _bibliography/references.bib <<EOD
---
---
References
==========
EOD
cat ~/Dropbox/Words/cv/me.bib | \
    grep -v '^@Comment' | \
    sed 's/\\textbf{Wallace C}/Wallace C/'  | \
    sed 's/{\*Wallace C}/Wallace C/'  | \
    sed 's/\*//'  >> _bibliography/references.bib

