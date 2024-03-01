#### Script to load libraries ####
## May 2022 ##
### Kaylee Arnold ###


## Load libraries

#if (!requireNamespace("devtools", quietly = TRUE)){install.packages("devtools")}
#devtools::install_github("jbisanz/qiime2R")
library(qiime2R) #this package converts qiime2 artifacts into phyloseq objects
library(tidyverse)
library(phyloseq)
library(RColorBrewer)
#library(viridis)  #for colors - need to keep?
#devtools::install_github("gadenbuie/ggpomological") # color pallete
# Developmental version
#devtools::install_github("jrnold/ggthemes")
# CRAN version
#install.packages("ggthemes")
library(readr) # read_csv/read_tsv
library(dplyr)
#library(tibble)
library(ggplot2)
library(vegan)
library(microbiome) #for beta diversity
#library(gt) #create tables
library(gridExtra)
#library(ggpubr) # add compare means extension to ggplot - do i use this?
#library(ggprism) # adds add_pvalue extension to ggplot - do i use this?
#library(ggtext) # do i use this??
##ibrary(readxl) #do i use this?
#library(glue) #what is this for?
library("dunn.test")#; packageVersion("dunn.test")
library(devtools)
#install.github("Russel88/MicEco") only do on a new installation of R
#library(picante) ## for phylogenetic diversity (but im currently using qiime to get PD)
library(lme4) #for linear models
library(partR2) #r2 values
library(jtools) #to produce publishable tables
library(emmeans) #for emmeans tukey posthoc test
library(MuMIn)
library(MASS)
#library(edgeR)
library(file2meco) #for shared ASV
library(microeco) #for shared ASV
library(magrittr) #for shared ASV

