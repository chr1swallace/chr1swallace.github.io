---
layout: page
title: Code
permalink: /code/
---

## R packages 
# coloc

[CRAN](http://cran.r-project.org/web/packages/coloc/index.html) | [github](https://github.com/chr1swallace/coloc) | *Note the github repository has important bug fixes that haven't reached CRAN.*

a package of R functions used to test for
colocalisation of two genetic traits.  For more detail or
the statistical background and applications see:


# colocCommonControl
[CRAN](http://cran.r-project.org/web/packages/colocCommoncontrol/index.html) // [github](https://github.com/mdfortune/colocCommonControl)
Adaptation of coloc for comparing two GWAS studies which share controls

# snpStatsWriter
[github](https://github.com/mdfortune/colocCommonControl)

allows writing snpStats objects to disk in formats suitable
for reading by snphap, phase, mach, IMPUTE, beagle, and
(almost) anything else that expects a rectangular format.

# wgsea
[CRAN](http://cran.r-project.org/web/packages/wgsea/index.html) 

implements a
Wilcoxon-based test for Gene Set Enrichment Analysis when
testing regions of the genome according to GWAS derived
evidence for SNP-trait association.  For more detail, see
the supplementary methods of	  

# extraBinomial
[CRAN](http://cran.r-project.org/web/packages/extraBinomial)

(author Xin Yang, listed here because Xin doesn't have her own website)
uses an extra binomial model to test for case-control
allele frequency differences in pooled sequence data.  See
    Yang X, Todd JA, Clayton D, and Wallace C.
    Extra-binomial variation approach for analysis of pooled DNA sequencing data.
    /Bioinformatics/ 2012.
    [ [Europe PMC](http://europepmc.org/abstract/MED/22976083) ]

## R packages from github
To install these from github, do, in R:
#+BEGIN_SRC R
install.packages("devtools")
library(devtools)
install_github("chr1swallace/package.name", "chr1swallace")
#+END_SRC
# annotSnpStats
[github](https://github.com/chr1swallace/annotSnpStats)

extends SnpMatrix objects from the snpStats package by tying in
sample and snp annotation data.frames.  It allows the joint
manipulation, and binding, of such objects, and includes a few
functions I use for finding duplicate samples, applying QC, and
aligning alleles between different datasets.  It seems to work,
and I intend to push it to CRAN in the future.
# GUESSFM
[github](https://github.com/chr1swallace/GUESSFM)
A wrapper around the GUESS stochastic model search method for fine
mapping causal variants in genetic data.   See [more detail here](file:research.org::*Causal%20variant%20identification).
# origin
[github](https://github.com/chr1swallace/origin) 
implements an   extension to the Weinberg method for testing for parent of origin
effects to allow for multiple affected offspring in a nuclear
family.  I haven't used it in a while, and it requires some checking
just to get it to pass the CRAN tests.  Unless I need to revisit it
for another reason, I am unlikely to push it to CRAN, but it is a
finished package.
For more detail see:

Weinberg et al. Methods for detection of parent-of-origin effects in
    genetic studies of case-parents triads. /Am J Hum Genet/
    65:229-235. 1999.
    
Wallace et al. The imprinted DLK1-MEG3 gene region on chromosome
14q32.2 alters susceptibility to type 1 diabetes. /Nat
Genet/ 2010.
[ [Europe PMC](http://europepmc.org/abstract/MED/19966805) ]

## Non-R packages
# VSEAMS (Olly Burren)
Variant set enrichment analysis (of association summary statistics) using multivariate sampling. Please see the wiki available at [this wiki](http://github.com/ollyburren/vseams/wiki) for further details.  Method described in 
{{{vseams}}}

<!-- ### IBDSCORE  -->

<!-- implements a score test for the Rice-Holmans IBD -->
<!-- 	regression model. -->
<!-- 	The model is described by -->

<!--  Holmans, P. /Human Heredity/ 2002. 53:92-102 -->

<!-- Rice et al. /Genet Epidemiol/ 1999. 17:S691-S695 -->

<!-- and this score test by -->

<!-- Wallace et al. /Am J Hum Genet/ 2006. 79:323-31 [ [Europe PMC](http://europepmc.org/abstract/MED/16826522) ] {{{padlock}}} -->

<!-- [ [download](http://www-gene.cimr.cam.ac.uk/staff/wallace/soft/ibdscore.tgz) ] -->

## See also...

 [published R packages on CRAN](http://crantastic.org/authors/2111) // [all code at github](http://github.com/chr1swallace) // [code blog](http://cwcode.wordpress.com) 
