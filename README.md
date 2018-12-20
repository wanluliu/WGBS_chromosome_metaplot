# Metaplot R script for WGBS of Lansberg ecotype 
(chromosome 3 only, 100kb resolution)

## Script
*tair100kbbin_metaplot_Ler_chr3.R*

## Input file 1
*methratio_files.txt*
tab-delimited
Ccount & CTcount over chromosomes,  containing chromosome,start position, end position, Ccount, CTcount. 
Example file *Ler1_total.bam_ler_chr3_100kb_CG.txt* is shown below: 

---
```
Chr	start	end	C_count	CT_count
ENA_LUHQ01000003_LUHQ01000003_1	1	100001	7723	61182
ENA_LUHQ01000003_LUHQ01000003_1	100001	200001	9276	57799
ENA_LUHQ01000003_LUHQ01000003_1	200001	300001	6864	66631
ENA_LUHQ01000003_LUHQ01000003_1	300001	400001	5763	63172
```
## Input file 2

*configure_file.txt*
tab-delimited
configure file contains the name of *methratio_files.txt* as well as the type (CG/CHG/CHH) and genotype of the methratio_files.txt.
Example *configure.txt* is shown below: 

---
```
Ler1_total.bam_ler_chr3_100kb_CG.txt	CG	ler	ler1
Ler1_total.bam_ler_chr3_100kb_CHG.txt	CHG	ler	ler1
Ler1_total.bam_ler_chr3_100kb_CHH.txt	CHH	ler	ler1
```
## Output figure
metaplot over whole chromosome in pdf format.
Example output is in *Ler_100kb_metaplot.pdf*.
