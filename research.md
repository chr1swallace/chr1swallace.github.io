---
layout: page
title: Research
permalink: /research/
---

## Causal variants

<img src="/assets/GUESSFM_small.png" alt="portrait" style="float:left;margin:10px;" />


Genetic association studies have identified many DNA sequence variants
that associate with disease risk. By exploiting the known correlation
that exists between neighbouring variants in the genome, inference can
be extended beyond those individual variants tested to identify sets
within which a causal variant is likely to reside. However, this
correlation, particularly in the presence of multiple disease causing
variants in relative proximity, makes disentangling the specific
causal variants difficult. Statistical approaches to this fine mapping
problem have traditionally taken a stepwise search approach, beginning
with the most associated variant in a region, then iteratively
attempting to find additional associated variants. We adapted a
stochastic search approach that avoids this stepwise process and is
explicitly designed for dealing with highly correlated predictors to
the fine mapping problem. We showed in simulated data that it
outperforms its stepwise counterpart and other variable selection
strategies such as the lasso. We applied our approach to understand
the association of two immune-mediated diseases to a region on
chromosome 10p15. We identified a model for multiple sclerosis
containing two variants, neither of which was found through a stepwise
search, and functionally linked both of these to the neighbouring
candidate gene, IL2RA, in independent data. Our approach can be used
to aid fine mapping of other disease-associated regions, which is
critical for design of functional follow-up studies required to
understand the mechanisms through which genetic variants influence
disease.

<div style="clear:both"></div>
**Related papers** <a href="/papers/index.html#2015_il2ra">Wallace et al. (2015)</a>

## Causal genes


Genomewide association studies (GWAS) have been hugely successful in
identifying associations between genetic variation and risk of common
diseases.  However, genetic variation will not be a pharmaceutical
target for these disease and translating this knowledge into
understanding the genes, cells and pathways involved in disease
aetiology has been slow.  This is because the associated genetic
variants do not typically reside in genes and change the protein they
encode, but lie between genes and are presumed to regulate their
expression in some cells, perhaps under specific conditions.


<img src="/assets/ctsh.jpg" alt="portrait" style="float:right;margin:10px;" />

As GWAS studies for disease have been conducted over the past decade,
so people have conducted GWAS for other, more gene specific traits,
such as parallel GWAS for the expression levels of each of the ~20,000
protein coding genes in a given cell type, called "eQTL" studies.
These produce a local GWAS trace just as a disease GWAS does.  We use
a pattern matching technique called colocalisation to determine
whether the two GWAS traces are compatible with the two traits,
disease risk and expression of a given gene in a given cell type and
condition, sharing a causal variant.

<div style="clear:both"></div>

<img src="/assets/pchic.png" alt="portrait" style="float:left;margin:10px;" />

Another approach is to exploit knowledge about the 3D folding of
chromatin derived from high throughput Chromosome Conformation Capture
(Hi-C) in its targetted form: Capture Hi-C (CHi-C).  This allows us to link GWAS causal variants (mapped probabilistically) to the genes they regulate, and we have deployed this approach across 17 primary human sorted cell types.

<div style="clear:both"></div>

**Related papers** 
 <a href="/papers/index.html#2013_genepi_coloc">Wallace (2013)</a> // 
 <a href="/papers/index.html#2014_plosgen_giambartolomei">Giambartolomei et al. (2014)</a> // 
 <a href="/papers/index.html#2015_hgm_guo">Guo et al. (2015)</a> // 
 <a href="/papers/index.html#2017_genbiol_burren">Burren et al. (2017)</a>
 
<div style="clear:both"></div>

## Diseases, their relationships and divisions

<img src="/assets/disease-network.png" alt="portrait" style="float:left;margin:10px;" />

We study the shared and distinct genetic aetiology between related
autoimmune diseases both at the genomewide and region specific level,
addressing two separate questions.  First, at a the level of the whole
genome, do associations with one disease predict associations with
another disease?  We do this using an approach which estimates
conditional false discovery rates for association of each disease
at each SNP conditional on the other disease.  Because this uses
genomewide associations, it includes information from individual loci
that are not genomewide significant, but show a trend to shared
association for two diseases.  However, because genes with similar
function are often located close to one another, and because genetic
variants also show a spatial correlation due to linkage
disequilibrium, this does not autoimattically imply that the two
diseases share the same causal variants.  We therefore use a
complementary approach, applying the an adapted colocalisation method that we use for matching disease and gene expression signatures to investigate sharing of causal variants in detail.
This shows that even for two apparently closely related autoimmune
diseases which both show association to the same genetic region
(delineated by two recombination hotspots), this will relate to them
sharing the same causal variant only about 50% of the time.

More recently, we have developed a genome-wide test for determining whether some phenotypically or clinically defined division of patients corresponds to a genetic signature of aetiological heterogeneity.

<div style="clear:both"></div>

**Related papers**
<a href="/papers/index.html#2015_plosgen_liley">Liley and Wallace (2015)</a> //
<a href="/papers/index.html#2015_ng_onengut">Onengut et al. (2015)</a> //
<a href="/papers/index.html#2015_ng_fortune">Fortune et al. (2015)</a> //
<a href="/papers/index.html#2015_ng_liley">Liley et al. (2016)</a>

<div style="clear:both"></div>

## Gene expression in immune cells

<img src="/assets/ferreira.jpg" style="float:right;margin:10px;" />

The BABYDIET study led by Annette Ziegler and Ezio Bonifacio collected
blood samples longitudinally from 109 children genetically at risk of,
but initially unaffected by type 1 diabetes.  We were lucky to have
access to white blood cells (PBMCs) from these samples and measured
the gene expression in them.  We were particularly interested in
expression of interferon responsive genes, given previous links
between type 1 diabetes and infection.  Indeed, we saw an upregulation
of these genes in children who went on to develop the autoantibodies
that are strongly predictive of T1D diagnosis, but, crucially, the
upregulation was transient and preceded the appearance of
autoantibodies.  It was also temporally correlated with recent upper
respiratory infection, and may represent a biomarker for the response
to infection or the mechanism by which the infection influences type 1
diabetes risk.

We also used these data to investigate seasonal variation in gene
expression, and found that 25% of the genes expressed in these cells
in these children varied in their expression throughout the year.  In
winter, we saw that this expression profile produced a
pro-inflammatory environment.  This might be advantageous during a
season when infectious diseases are at a peak, but is a risk factor
for other diseases associated with inflammation such as cardiovascular
also peak in winter.  We replicated this finding in multiple datasets,
including one from the Southern hemisphere when winter occurs during
June-August.

<div style="clear:both"></div>

**Related papers**
<a href="/papers/index.html#2014_diabetes_ifnsig">Ferreira et al. (2014)</a> //
<a href="/papers/index.html#2015_castro">Castro Dopico et al. (2015)</a>

