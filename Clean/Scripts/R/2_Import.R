#######

#author: "Kaylee Arnold"
#date: "Most recent update - May 10, 2022"

#####

## This script converts qiime2 artifacts into phyloseq object
##source: #https://rdrr.io/github/jbisanz/qiime2R/man/qza_to_phyloseq.html

#### Relevant libraries. Load using Libraries.R


#install.packages("remotes")
#remotes::install_github("jbisanz/qiime2R")
#library(qiime2R) #this package converts qiime artifacts into phyloseq objects
#library(tidyverse)
#library(phyloseq)

library(here)

phyloseq <- qza_to_phyloseq(features = "./Data/Scripts/Qiime2/table_guts-August2019.qza", 
                           tree = "./Data/Scripts/Qiime2/rooted-tree_guts-August2019.qza", 
                          taxonomy = "./Data/Scripts/Qiime2/Guts_taxonomy-Sept2019.qza", 
                          metadata = "./Data/Metadata/Cleaned_metadata/2024_Updated_Cleaned_Metadata.tsv")


metadata = read_tsv("./Data/Metadata/Cleaned_metadata/2024_Updated_Cleaned_Metadata.tsv")

bloodmeal_data <- read_tsv("./Data/Metadata/Cleaned_metadata/2022_Updated_Cleaned_Metadata.tsv")

#modify tsv


############### Manual option in case above package does not work, it sometimes breaks ###########

#Source: https://rdrr.io/github/jbisanz/qiime2R/man/qza_to_phyloseq.html

#metadata<-read_tsv("/Volumes/Kaylee2.0/Dissertation_projects/Chapter2/Metadata/Cleaned_metadata/2022_Updated_Cleaned_Metadata.tsv")
#SVs<-read_qza("/Volumes/Kaylee2.0/Dissertation_projects/Chapter2/16S_guts_project_August2019/table_guts-August2019.qza")
#taxonomy<-read_qza("/Volumes/Kaylee2.0/Dissertation_projects/Chapter2/16S_guts_project_August2019/Guts_taxonomy-Sept2019.qza")
#taxtable<-taxonomy$data %>% as_tibble() %>% separate(Taxon, sep="; ", c("Kingdom","Phylum","Class","Order","Family","Genus","Species")) #convert the table into a tabular split version
#tree<-read_qza("/Volumes/Kaylee2.0/Dissertation_projects/Chapter2/16S_guts_project_August2019/rooted-tree_guts-August2019.qza")
#shannon<-read_qza("/Volumes/Kaylee2.0/Dissertation_projects/Chapter2/16S_guts_project_August2019/core-metrics-results_2022/shannon_vector.qza")
#pco<-read_qza("/Volumes/Kaylee2.0/Dissertation_projects/Chapter2/16S_guts_project_August2019/core-metrics-results_2022/unweighted_unifrac_pcoa_results.qza")


#phyloseq<-phyloseq(
 #  otu_table(SVs$data, taxa_are_rows = T), 
 #  phy_tree(tree$data), 
 #  tax_table(as.data.frame(taxtable) %>% select(-Confidence) %>% column_to_rownames("Feature.ID") %>% as.matrix()), #moving the taxonomy to the way phyloseq wants it
 #  sample_data(metadata %>% as.data.frame() %>% column_to_rownames("#SampleID"))
#)
