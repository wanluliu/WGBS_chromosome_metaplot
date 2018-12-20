# Metaplot R script for WGBS
(100kb resolution)

## Script (for Lansberg, chr3 only)
*tair100kbbin_metaplot_Ler_chr3.R*

## Input file 1 (for Lansberg, chr3 only)
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
## Input file 2 (for Lansberg, chr3 only)

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
## Output figure (for Lansberg, chr3 only)
metaplot over whole chromosome in pdf format.
Example output is in *Ler_100kb_metaplot.pdf*.

## Script (for fwa, chr1 to chr5)
*tair100kbbin_metaplot_fwa.R*

## Input file 1 (for fwa, chr1 to chr5)
*methratio_files.txt*
tab-delimited
Ccount & CTcount over chromosomes,  containing chromosome,start position, end position, Ccount, CTcount. 
Example file *fwa_total.bam_tair10_100kb_CG.txt* is shown below: 

---
```
Chr	start	end	C_count	CT_count
chr1	0	100000	1272	43264
chr1	100000	200000	534	52396
chr1	200000	300000	2115	47835
chr1	300000	400000	238	46497
chr1	400000	500000	1458	48794
```
## Input file 2 (for fwa, chr1 to chr5)

*configure_file.txt*
tab-delimited
configure file contains the name of *methratio_files.txt* as well as the type (CG/CHG/CHH) and genotype of the methratio_files.txt.
Example *configure_fwa.txt* is shown below: 

---
```
fwa_total.bam_tair10_100kb_CG.txt	CG	fwa	fwa
fwa_total.bam_tair10_100kb_CHG.txt	CHG	fwa	fwa
fwa_total.bam_tair10_100kb_CHH.txt	CHH	fwa	fwa
```

## Output figure (for fwa, chr1 to chr5)
metaplot over whole chromosome in pdf format.
Example output is in *fwa_100kb_metaplot.pdf*.


