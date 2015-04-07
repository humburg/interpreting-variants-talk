---
title: "SNPs, ChIPs and RNA"
subtitle: Attempts to understand complex phenotypes
author: Peter Humburg
date: 15th April 2015
---

# Interpreting genomic variation

* Sequencing of patient genomes increasingly common
* Can identify relevant variants

. . .

* ... amongst a large number of unrelated variants
* Computational strategies can narrow the set of candidates

. . .

* ... but non-coding variants are difficult to interpret
* Want to leverage existing data as much as possible 

<div class="notes">
Typical sequencing studies either focus on individual patients (or trios)
or larger cohorts.

Obviously these serve different objectives, either individual diagnosis/treatment
or generally gaining better understanding of phenotype.

Variants of interest may be rare or common.

Understanding the impact of exonic variation is relatively easy (but not without
pitfalls). Non-coding variation is much harder.
</div>

# Exome sequencing
## Identifying novel Breast and Ovarian Cancer risk genes {.small-header}
<div class="twocolumn">
	
* Several DNA repair genes implicated in breast and ovarian cancer susceptability.
* Strong evidence that rare loss-of-function variants confer increased risk.

<div class="fragment">
* Sequenced exomes of 507 DNA repair genes in 1,150 patients.
* Sequenced pools of 24 individuals.
* Included 79 individuals with known mutations in breast cancer predisposition 
  genes as positive controls. 

</div>
</div>

<div class="fragment popup">
![](figure/ppm1d_paper.png)	
</div>

## Analysis strategy

* Sequence pools with HiSeq2000
   * $\gt$ 480$\times$ coverage in 90% of target region
* Call variants in pools with [Syzygy](http://sourceforge.net/projects/syzygy/)
    * Good sensitivity for rare variants (24/26 SNPs and 51/54 indels)
    * Identified 34,564 variants
* <span class="fragment highlight-current-red" data-fragment-index="0">
  Functional annotation obtained via EnsEMBL</span> 
    * <span class="fragment highlight-current-red" data-fragment-index="0">
      Substantial clean-up and curation of annotations</span> 
    * <span class="fragment highlight-current-red" data-fragment-index="0">
      Focused on 1,044 protein truncating variants</span>
      
## Variant annotation

* Variant annotations depend on quality of transcript annotations.
* Different annotation software may give different results.

<div class="fragment current-visible popup">
![](figure/annotation_paper.png)
</div> 

<div class="fragment current-visible popup">
![](figure/annotation.png)
</div>

## Results

* Identified genes enriched for PTVs.
* Strongest PTV enrichment observed for PPM1D.
* Observed clustering of variants in final exon.

<div class="fragment">
Sequenced affected exon in  7,781 cases and 5,861 controls

* 18 PTVs in 6,912 breast cancer cases
* 12 PTVs in 1,121 ovarian cancer cases
* 1 PTV in controls
</div>
<div class="fragment current-visible popup">
![](figure/ppm1d_cluster.png)
</div>

<div class="notes">
* Removed variants used as positive controls.
* Five individuals had PPM1D PTVs in discovery cohort.
* 25 PTVs total
* Relative risk: BC 2.7, OV 11.5
</div>

## PPM1D

* Induced in p53 dependent manner
* Contributes to deactivation of p53
* Part of negative feedback loop required to escape p53-dependent cell cycle arrest

. . .

* Identified truncated proteins show increased activity.
* PPM1D over-expression previously associated with breast cancer. 


# Non-coding variants: More information needed {.small-header}

## Interpreting non-coding variants {.small-header}

<div class="twocolumn">
* Impact of non-coding variants unclear
* Affected genes not obvious
* Effect on gene expression typically unknown
* <span class="fragment highlight-current-red" data-fragment-index="0">
  Existing epigenetic data may help</span>
* <span class="fragment highlight-current-red" data-fragment-index="1">
  eQTL analyses can help to establish links between SNPs and genes</span>

<div class="fragment current-visible overlap" data-fragment-index="0">
![](figure/encode.png)
![](figure/blueprint.jpg)
</div>

<div class="fragment current-visible overlap" data-fragment-index="1">
![](figure/eqtl_network.png)
</div>

</div>

## Using additional genome-wide data {.small-header}

ChIP-seq and RNA-seq data provide insight into the functional implications
of genotypes. **But** need to consider

* Relevant cell type
* Relevant conditions

<div class="fragment popup2" data-fragment-index="2">
![](figure/treatment_eqtl_paper.png)
</div>
<div class="fragment popup" data-fragment-index="1">
![](figure/cell_type_eqtl_paper.png)
</div>

## The role of rs11074938 {.small-header}

<div class="twocolumn">
* [SNP](http://www.ensembl.org/Homo_sapiens/Variation/Explore?db=core;r=16:10912624-10912751;v=rs11074938;vdb=variation;vf=7436168)
  (A/G) located in intron of CIITA
* Inside regulatory region
* ENCODE data shows DHS and NF-$\kappa$B binding
* CIITA is important regulator of MHC class II expression
* Could have implications for immune related diseases  
  (*if this SNP affects CIITA*)

<div class="fragment" data-fragment-index="0">
![](figure/CIITA_encode.png)
</div>

</div>
<div class="fragment fade-out popup" data-fragment-index="0">
![](figure/rs11074938.png)
</div>

<div class="fragment popup">
![](figure/CIITA_paper.png)
</div>


<div class="notes">
Annotations suggest SNP may have functional significance.

ENCODE data shows evidence of NF-$\kappa$B in LCLs and DHS in
LCLs and primary B cells (but not monocytes)

Unclear which gene is affected and to what extend.
</div>

## Changes to gene expression {.small-header}
<div class="fragment fade-out popup" data-fragment-index="0">
![](figure/cell_type_eqtl_paper.png)
</div>

<div class="twocolumn">
* <span class="fragment highlight-current-red" data-fragment-index="1">
  eQTL analysis in B cells shows reduced expression of CIITA associated with G allele
  </span>
* <span class="fragment highlight-current-red" data-fragment-index="2">
  Evidence for changes in expression of CIITA target genes
  </span>
* <span class="fragment highlight-current-red" data-fragment-index="3">
  Reduced presence of MHC class II proteins on cell surface associated with G allele
  </span>

<div class="fragment current-visible overlap" data-fragment-index="1">
![](figure/CIITA_expression.png)
</div>

<div class="fragment overlap current-visible" data-fragment-index="2">
![](figure/CIITA_network.png)
</div>

<div class="fragment overlap current-visible" data-fragment-index="3">
![](figure/MHC_protein.png)
</div>

## Transcription factor binding {.small-header}

<div class="twocolumn">
* Reduced NF-$\kappa$B binding due to sequence change plausible
* Used existing ChIP-seq data$^*$
  to assess allele specific binding
  
<div>
![](figure/CIITA_asb.png)
</div>

<div class="footnote">
$^*$ Kasowski *et al.*, Science (2010). PMID: [20299548](http://www.ncbi.nlm.nih.gov/pubmed/20299548?dopt=Abstract)
</div>
</div>

## Does it matter?

* No known GWAS associations
* Good to see that available data and methods can identify functional non-coding SNPs.

. . .

* Some evidence for association with the presence of nasal polyps in asthma patients$^*$


<div class="footnote">
$^*$ Bae *et al.*, Mol Med Rep (2013). PMID: [23292525](http://www.ncbi.nlm.nih.gov/pubmed/23292525?dopt=Abstract)
</div>

# Conclusions
## This could be easier...

* Functional annotation of genomic variants is still difficult.
* Coding variants should be relatively easy, but annotations can be unreliable.
* Non-coding variants are still difficult.

. . .

* Understanding the effect of genomic variation requires a lot of work.
* Generating the data is easier than understanding it.

## Challenges ahead

* Data volume is increasing, can the analysis keep pace?
* More and more public data sets available. Are we using them as much as we could?
* Better integration of all types of genomic data.

<div class="notes">
If we want to analyse patient genomes on a large scale the analysis needs to be completed
on time scales similar to the data generation.

This requires reliable, automated procedures.

Good quality data are available, some from large consortia, some from smaller studies.

Identifying the data that are most relevant to a given project isn't always easy.

Should systematically incorporate existing data into the analysis to provide 
additional context.
</div>

## Acknowledgments {.acknowledge .small-header}
### Breast cancer risk and variant annotation

      WTCHG                                           ICR                           
--------------------------------- ------------------- -----------------------------  ------
![](figure/peter-donnelly.jpg)    **Peter Donnelly**  ![](figure/nazneen-rahman.jpg) **Nazneen Rahman**
![](figure/manuel-rivas.jpg)      Manuel A. Rivas     ![](figure/katie-snape.jpg)    Katie Snape
![](figure/andrew-rimmer.jpg)     Andrew Rimmer                                      Elise Ruark
![](figure/davis-mccarthy.jpeg)   Davis McCarthy
--------------------------------- ------------------- ----------------------------- ------

## Acknowledgments {.acknowledge .small-header}
### eQTL and CIITA

-------------------------------- -------------------
![](figure/julian-knight.jpg)    **Julian C. Knight**
![](figure/daniel-wong.jpg)      Daniel Wong
                                 Wanseon Lee
![](figure/ben-fairfax.jpg)      Benjamin P. Fairfax
![](figure/seiko-makino.jpg)     Seiko Makino
------------------------------- -------------------
