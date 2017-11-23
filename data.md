---
layout: page
title: Data
permalink: /data/
---


This page holds information about datasets and code used in our papers.  Our intention
is to make the data and code we have used accessible.  If anything is
unclear, please [report it as an issue](https://github.com/chr1swallace/chr1swallace.github.io/issues) so I (and you) can track it.  If
you really don't want to use github, as a last resort, email
=cew54= at =cam.ac.uk=.

<!-- # Code and data organised by papers -->
  
<!-- ## 2015 -->

<!-- *Paper*: {{{PLOSGEN15}}} -->

<!-- *Code*: Uses the R package [GUESSFM](https://github.com/chr1swallace/GUESSFM).  For detailed pipeline of steps to run GUESSFM, see the [vignettes](https://github.com/chr1swallace/GUESSFM/tree/master/vignettes). -->

<!-- *Data*: [ | [T1D ImmunoChip Data) -->



<!-- *Paper*: {{{fortune15}}} -->

<!-- *Data*: [ | [[MS ImmunoChip Data](T1D ImmunoChip Data) | [ | [[T1D ImmunoChip Data](RA ImmunoChip Data) -->

<!-- Complete results are available in the [Supplementary Tables](http://www.nature.com/ng/journal/v47/n7/full/ng.3330.html#supplementary-information). -->

<!-- *Paper*: {{{dopico15}}} -->

<!-- *Data*: [ | [[T1D gene expression](BABYDIET gene expression) | [ -->

<!-- *Paper*: {{{onengut15}}} -->

<!-- *Code*: R code used to perform -->
<!--   numerical calculations exploring the appropriate p value thresholds -->
<!--   for calling genetic association in one disease given genomewide -->
<!--   significant genetic association at the same SNP in a related -->
<!--   disease. https://github.com/chr1swallace/condpp.   -->

<!-- *Results*: Detailed results are curated at the [[http://www.immunobase.org/poster/type-1-diabetes-immunochip-study-onengut-gumuscu/][ImmunoBase poster page](Asthma gene expression), including interactive figures, T1D regions studied and identified, and a full list of the T1D credible SNP set. -->

<!-- *Data*: [ -->


<!-- *Paper*: {{{guo15}}} -->

<!-- *Code*: Uses the R package [[https://github.com/chr1swallace/coloc/][coloc](T1D ImmunoChip Data) (available also from [CRAN](http://cran.r-project.org/web/packages/coloc/index.html)). -->

<!-- *Data*: [ | [[Fairfax eQTL data](ImmunoChip summary statistics) | [ -->

<!-- *Paper*: {{{bowes15}}} -->

<!-- *Code*: R script for fine mapping https://github.com/chr1swallace/finemap-psa  -->

<!-- *Data*: RA p values required for input were downloaded from [[http://www.immunobase.org][ImmunoBase](Cardiogenics eQTL data). -->

<!-- *Paper*: {{{liley15}}} -->

<!-- *Code*: James' code is on https://github.com/jamesliley/cFDR-common-controls. -->

<!-- *Data*: GWAS summary statistics (p values) were downloaded from [. Also uses [[T1D ImmunoChip Data](Immunobase) for simulations to examine properties of the method. -->

<!-- ## 2014 -->
<!-- *Paper*: {{{vseams}}} -->

<!-- *Code*: Olly's pipeline is at [. -->

<!-- *Data*: We used data from [[Cusanovich][Cusanovich et al](http://github.com/ollyburren/vseams)'s transcription factor knockdowns.  In fact, I think our paper was submitted only a month after theirs was published, because the preprint was shared on arXiv (and indexed on [Haldane's Sieve](http://haldanessieve.org/2013/10/22/the-functional-consequences-of-variation-in-transcription-factor-binding), which is where we saw it), and the authors readily shared their data pre-publication.  Open science working at its best. -->

<!-- We also used [. -->

## GWAS

# ATD ImmunoChip 
 
Need to be requested from the original study authors <https://www.ncbi.nlm.nih.gov/pubmed/22922229>

# Coeliac ImmunoChip 

Primary analysis is by [Trynka et al](http://www.nature.com/ng/journal/v43/n12/full/ng.998.html).  Genotype data  is hosted by the European Bioinformatics Institute, under accession number [EGAS00000000053](http://www.ebi.ac.uk/ega/studies/EGAS00000000053).

# MS ImmunoChip 

MS ImmunoChip data was accessed through application to the [International Multiple Sclerosis Genetic Consortium (IMSGC)](http://www.imsgenetics.org/).  Primary analysis of these data is presented in  <http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3882906/> and the dbGaP accession number for the  US cohort is phs000357.v2.p2.

# RA ImmunoChip 

Primary analysis was by [Eyre et al](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3882906/) and data were accessed through a request to the authors.

# T1D ImmunoChip 

is available from [dbGaP](http://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs000180.v3.p2)

# T1D GWAS 

2000 T1D samples were genotyped as part of the WTCCC (and controls) - data access  is described  <https://www.wtccc.org.uk/info/access_to_data_samples.html>. An additional 4000 cases were genotyped by the T1DGC, available at <https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs000180.v3.p2>

Autoantibody data on T1D subjects is available by contacting study authors from <http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1002216>.

# ImmunoChip summary statistics

*ImmunoBase*: ImmunoChip summary GWAS statistics from multiple studies *used to be* nicely curated and available from [ImmunoBase](http://www.immunobase.org) if you first register (free) then go to =Data..downloads= on the right, then click through to =data/immunochip/association_stats=.  I'm not sure how to access it now.

## Expression data

# Fairfax eQTL data 

Ben Fairfax has published eQTL papers on sorted cells (monocytes, stimulated monocytes, B cells) from close to 300 samples.  The expression data are freely available, but the genotype data require a data access agreement, available as detailed in either paper.

*Fairfax et al. (2012) Genetics of gene expression in primary immune cells identifies cell type-specific master regulators and roles of HLA alleles. Nat. Genet. 44, 502-510*

gene expression data: <http://www.ebi.ac.uk/arrayexpress/experiments/E-MTAB-945>; genotyping data: <http://www.ebi.ac.uk/ega/EGAD00010000144>.

*Fairfax et al. (2014) Innate immune activity conditions the effect of regulatory variants upon monocyte gene expression. Science 343, 1246949*

gene expression data: <http://www.ebi.ac.uk/arrayexpress/experiments/E-MTAB-2232>; genotyping data: <http://www.ebi.ac.uk/ega/EGAD00010000144>, <http://www.ebi.ac.uk/ega/EGAD00010000520>.

# Cusanovich et al's transcription factor knockdown 

See <http://europepmc.org/abstract/MED/24603674> for the paper.  This
dataset has a special place in my heart, as we requested it after
Cusanovich posted a preprint and it was shared quickly and freely.  As
a result, I /think/ our paper using this data was actually preprinted and submitted
before the Cusanovich paper was formally published in a journal.  A
true example of preprint publishing furthering research.

# BABYDIET gene expression

PBMC gene expression from longitudinally sampled children at risk of type 1 diabetes, described by [Ferreira et al.](http://www.ncbi.nlm.nih.gov/pubmed/24561305)

http://www.ebi.ac.uk/arrayexpress, accession no. E-MTAB-1724

# T1D gene expression

The T1D PBMCs were collected as part of the Genetic Resource
Investigating Diabetes (GRID) cohort collection
(<http://www.childhood-diabetes.org.uk/grid.shtml>).  Expression data at
<http://www.ebi.ac.uk/arrayexpress>, accession no. E-MTAB-1724

# Asthma gene expression

Asthma cohort described by [Bjornsdottir et al. (2011)](http://www.ncbi.nlm.nih.gov/pubmed/21779351). Raw and normalized data are deposited with ArrayExpress ( <http://www.ebi.ac.uk/arrayexpress/>, E-GEOD-19301).


# Cardiogenics eQTL data

*Garnier S et al. (2013) Genome-wide haplotype analysis of cis expression quantitative trait Loci in monocytes [PLoS Genet. 9(1):e1003240](http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1003240)*

Monocytes eQTL study available from EGA: <https://www.ebi.ac.uk/ega/studies/EGAS00001000411>


