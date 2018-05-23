#!/bin/bash

cat > _bibliography/references.bib <<EOD
---
---
References
==========
EOD
cat ~/Dropbox/Words/cv/me.bib | \
    sed 's/\\textbf{Wallace C}/Wallace C/'  >> _bibliography/references.bib

