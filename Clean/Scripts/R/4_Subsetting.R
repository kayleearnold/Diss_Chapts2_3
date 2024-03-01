### This script subsets the Updated Metadata for various questions ###
## Updated May 10, 2022 ##
## Updated October 2023 ##
## Kaylee Arnold ##


#Variable Names
sample_variables(phyloseq_cleaned)

#Starting with phyloseq_cleaned with lab and field R. pallescens samples and no wolbachia (355 total samples, 41 palms)

rpal <- subset_samples(phyloseq_cleaned, Especie == "R. pallescens") ## from 355 samples of R pallescens from field and lab, to 324 (google doc shows 325 because there is one recorded sample that was not sequenced, molt only) ## this DOES NOT include wolbachia

rpal_field <- subset_samples(rpal, Habitat != "Lab") ## reduced to 282 field samples (without the 36 lab samples) ## this DOES NOT include wolbachia



#Blood meal
#run both rpal_fieldBM to get the correct samples
rpal_field_BM <- subset_samples(rpal_field, FirstBM != "Human")#remove humans
rpal_field_BM <- subset_samples(rpal_field, TypeBM_Updated != "Human")
rpal_field_BM <- subset_samples(rpal_field_BM, FirstBM != "Mus") #remove mus
rpal_field_BM <- subset_samples(rpal_field_BM, TypeBM_Updated != "Mus") #remove mus
rpal_field_BM <- subset_samples(rpal_field_BM, NumberBM != "Five") #without humans and mus
#rpal_field_BM_Dominant <- subset_samples(rpal_field_BM, TypeBM_Updated == "Human" | FirstBM == "Heteromys" | TypeBM_Updated == "Mus")


##AGE GROUPS

rpal_field_N1N3 <- subset_samples(rpal_field_BM, Age_Group == "N1_N3") #191 samples
rpal_field_N4Adult <- subset_samples(rpal_field_BM, Age_Group == "N4_Adult") #91 samples

rpal_field_N1N3_canal <- subset_samples(rpal_field_N1N3, Region == "La Chorrera" | Region == "Capira")
rpal_field_N1N3_veraguas <- subset_samples(rpal_field_N1N3, Region == "Veraguas")


rpal_field_N4Adult_canal <- subset_samples(rpal_field_N4Adult, Region == "La Chorrera" | Region == "Capira")
rpal_field_N4Adult_veraguas <- subset_samples(rpal_field_N4Adult, Region == "Veraguas")



#rpal_field_canal_pasture <- subset_samples(rpal_field_canal, HABITAT == "Pasture") #using only field samples (no wolbachia wolabchia) at canal pasture sites

#rpal_field_canal_peridomestic <- subset_samples(rpal_field_canal, HABITAT == "Peridomestic") #using only field samples (no wolbachia wolabchia) at canal peridomestic sites


#rpal_field_veraguas_pasture <- subset_samples(rpal_field_veraguas, HABITAT == "Pasture") #using only field samples (no wolbachia wolabchia) at veraguas pasture sites

#rpal_field_veraguas_peridomestic <- subset_samples(rpal_field_veraguas, HABITAT == "Peridomestic") #using only field samples (no wolbachia wolabchia) at veraguas peridomestic sites

#rpal_field_veraguas_forest <- subset_samples(rpal_field_veraguas, HABITAT == "Forest") #using only field samples (no wolbachia wolabchia) at veraguas forest sites

#rpal_field_N1N2 <- subset_samples(rpal_field, ESTADIO == c("N1", "N2"))
#rpal_field_N2N3 <- subset_samples(rpal_field, ESTADIO == c("N2", "N3"))
#rpal_field_N3N4 <- subset_samples(rpal_field, ESTADIO == c("N3", "N4"))
#rpal_field_N4N5 <- subset_samples(rpal_field, ESTADIO == c("N4", "N5"))
#rpal_field_N5Adult <- subset_samples(rpal_field, ESTADIO == c("N5", "Adult"))
#rpal_field_N3Adult <- subset_samples(rpal_field, ESTADIO == c("N3", "N4", "N5", "Adult"))

