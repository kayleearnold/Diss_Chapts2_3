## Dataframe wth sample variables and diversity metrics


adiv_all_variables <- data.frame(estimate_richness(rpal_field, measures = c("Observed", "Shannon", "Chao1", "Simpson", "InvSimpson")),
                                    "Sample" = phyloseq::sample_data(rpal_field)$Sample_Name,
                                    "Region" = phyloseq::sample_data(rpal_field)$Region, 
                                    "Age_Group" = phyloseq::sample_data(rpal_field)$Age_Group,
                                    "PalmID" = phyloseq::sample_data(rpal_field)$PalmID,
                                    "ESPECIE" = phyloseq::sample_data(rpal_field)$ESPECIE,
                                    "PROCEDENCIA" = phyloseq::sample_data(rpal_field)$PROCEDENCIA,
                                    "HABITAT" = phyloseq::sample_data(rpal_field)$HABITAT,
                                    "TypeBM_Updated" = phyloseq::sample_data(rpal_field)$TypeBM_Updated,
                                    "HumanBM" = phyloseq::sample_data(rpal_field)$HumanBM,
                                    "MammalBM" = phyloseq::sample_data(rpal_field)$MammalBM,
                                    "BirdBM" = phyloseq::sample_data(rpal_field)$BirdBM,
                                    "ReptileBM" = phyloseq::sample_data(rpal_field)$ReptileBM,
                                    "NumberBM" = phyloseq::sample_data(rpal_field)$NumberBM,
                                    "FirstBM" = phyloseq::sample_data(rpal_field)$FirstBM,
                                    "SecondBM" = phyloseq::sample_data(rpal_field)$SecondBM,
                                    "ThirdBM" = phyloseq::sample_data(rpal_field)$ThirdBM,
                                    "FourthBM" = phyloseq::sample_data(rpal_field)$FourthBM,
                                    "FifthBM" = phyloseq::sample_data(rpal_field)$FifthBM,
                                    "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field)$SingleInf_Tcruzi)



adiv_all_variables_BM <- data.frame(estimate_richness(rpal_field_BM, measures = c("Observed", "Shannon", "Chao1", "Simpson", "InvSimpson")),
                                 "Sample" = phyloseq::sample_data(rpal_field_BM)$Sample_Name,
                                 "Region" = phyloseq::sample_data(rpal_field_BM)$Region, 
                                 "Age_Group" = phyloseq::sample_data(rpal_field_BM)$Age_Group,
                                 "PalmID" = phyloseq::sample_data(rpal_field_BM)$PalmID,
                                 "Especie" = phyloseq::sample_data(rpal_field_BM)$Especie,
                                 "Procedencia" = phyloseq::sample_data(rpal_field_BM)$Procedencia,
                                 "Habitat" = phyloseq::sample_data(rpal_field_BM)$Habitat,
                                 "TypeBM_Updated" = phyloseq::sample_data(rpal_field_BM)$TypeBM_Updated,
                                 #"MammalBM" = phyloseq::sample_data(rpal_field_BM)$MammalBM,
                                 #"BirdBM" = phyloseq::sample_data(rpal_field_BM)$BirdBM,
                                 #"ReptileBM" = phyloseq::sample_data(rpal_field_BM)$ReptileBM,
                                 "NumberBM" = phyloseq::sample_data(rpal_field_BM)$NumberBM,
                                 "FirstBM" = phyloseq::sample_data(rpal_field_BM)$FirstBM,
                                 #"SecondBM" = phyloseq::sample_data(rpal_field_BM)$SecondBM,
                                 #"ThirdBM" = phyloseq::sample_data(rpal_field_BM)$ThirdBM,
                                 #"FourthBM" = phyloseq::sample_data(rpal_field_BM)$FourthBM,
                                 #"FifthBM" = phyloseq::sample_data(rpal_field_BM)$FifthBM,
                                 "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field_BM)$SingleInf_Tcruzi)

##split by age group (shannon mixed model shows that age group is important and we know that there are difference between age groups)


adiv_all_variables_N4Adult <- data.frame(estimate_richness(rpal_field_N4Adult, measures = c("Observed", "Shannon", "Chao1", "Simpson", "InvSimpson")),
                                 "Sample" = phyloseq::sample_data(rpal_field_N4Adult)$Sample_Name,
                                 "Region" = phyloseq::sample_data(rpal_field_N4Adult)$Region, 
                                 "Age_Group" = phyloseq::sample_data(rpal_field_N4Adult)$Age_Group,
                                 "PalmID" = phyloseq::sample_data(rpal_field_N4Adult)$PalmID,
                                 "Especie" = phyloseq::sample_data(rpal_field_N4Adult)$Especie,
                                 #"PROCEDENCIA" = phyloseq::sample_data(rpal_field_N4Adult)$PROCEDENCIA,
                                 "Habitat" = phyloseq::sample_data(rpal_field_N4Adult)$Habitat,
                                 "TypeBM_Updated" = phyloseq::sample_data(rpal_field_N4Adult)$TypeBM_Updated,
                                 "HumanBM" = phyloseq::sample_data(rpal_field_N4Adult)$HumanBM,
                                 "MammalBM" = phyloseq::sample_data(rpal_field_N4Adult)$MammalBM,
                                 "BirdBM" = phyloseq::sample_data(rpal_field_N4Adult)$BirdBM,
                                 "ReptileBM" = phyloseq::sample_data(rpal_field_N4Adult)$ReptileBM,
                                 "NumberBM" = phyloseq::sample_data(rpal_field_N4Adult)$NumberBM,
                                 "FirstBM" = phyloseq::sample_data(rpal_field_N4Adult)$FirstBM,
                                 "SecondBM" = phyloseq::sample_data(rpal_field_N4Adult)$SecondBM,
                                 "ThirdBM" = phyloseq::sample_data(rpal_field_N4Adult)$ThirdBM,
                                 "FourthBM" = phyloseq::sample_data(rpal_field_N4Adult)$FourthBM,
                                 "FifthBM" = phyloseq::sample_data(rpal_field_N4Adult)$FifthBM,
                                 "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field_N4Adult)$SingleInf_Tcruzi)

adiv_all_variables_N1N3 <- data.frame(estimate_richness(rpal_field_N1N3, measures = c("Observed", "Shannon", "Chao1", "Simpson", "InvSimpson")),
                                         "Sample" = phyloseq::sample_data(rpal_field_N1N3)$Sample_Name,
                                         "Region" = phyloseq::sample_data(rpal_field_N1N3)$Region, 
                                         "Age_Group" = phyloseq::sample_data(rpal_field_N1N3)$Age_Group,
                                         "PalmID" = phyloseq::sample_data(rpal_field_N1N3)$PalmID,
                                         "Especie" = phyloseq::sample_data(rpal_field_N1N3)$Especie,
                                         "Habitat" = phyloseq::sample_data(rpal_field_N1N3)$Habitat,
                                         "TypeBM_Updated" = phyloseq::sample_data(rpal_field_N1N3)$TypeBM_Updated,
                                         "HumanBM" = phyloseq::sample_data(rpal_field_N1N3)$HumanBM,
                                         "MammalBM" = phyloseq::sample_data(rpal_field_N1N3)$MammalBM,
                                         "BirdBM" = phyloseq::sample_data(rpal_field_N1N3)$BirdBM,
                                         "ReptileBM" = phyloseq::sample_data(rpal_field_N1N3)$ReptileBM,
                                         "NumberBM" = phyloseq::sample_data(rpal_field_N1N3)$NumberBM,
                                         "FirstBM" = phyloseq::sample_data(rpal_field_N1N3)$FirstBM,
                                         "SecondBM" = phyloseq::sample_data(rpal_field_N1N3)$SecondBM,
                                         "ThirdBM" = phyloseq::sample_data(rpal_field_N1N3)$ThirdBM,
                                         "FourthBM" = phyloseq::sample_data(rpal_field_N1N3)$FourthBM,
                                         "FifthBM" = phyloseq::sample_data(rpal_field_N1N3)$FifthBM,
                                         "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field_N1N3)$SingleInf_Tcruzi)


#write.csv(adiv_regions,"/Volumes/GoogleDrive/Shared drives/Gottdenker Lab New/Kaylee/Chapter 2/Manuscript Drafts/Chapter 2/CSVs\\GutDiversity.csv", row.names = TRUE)


###### Split by canal and veraguas

adiv_all_variables_canal <- data.frame(estimate_richness(rpal_field_canal, measures = c("Observed", "Shannon", "Chao1", "Simpson")),
                                 "Sample" = phyloseq::sample_data(rpal_field_canal)$Sample_Name,
                                 "Region" = phyloseq::sample_data(rpal_field_canal)$Region, 
                                 "PalmID" = phyloseq::sample_data(rpal_field_canal)$PalmID,
                                 "ESPECIE" = phyloseq::sample_data(rpal_field_canal)$ESPECIE,
                                 "Age_Group" = phyloseq::sample_data(rpal_field_canal)$Age_Group,
                                 "PROCEDENCIA" = phyloseq::sample_data(rpal_field_canal)$PROCEDENCIA,
                                 "HABITAT" = phyloseq::sample_data(rpal_field_canal)$HABITAT,
                                 "TypeBM" = phyloseq::sample_data(rpal_field_canal)$TypeBM,
                                 "HumanBM" = phyloseq::sample_data(rpal_field_canal)$HumanBM,
                                 "MammalBM" = phyloseq::sample_data(rpal_field_canal)$MammalBM,
                                 "BirdBM" = phyloseq::sample_data(rpal_field_canal)$BirdBM,
                                 "ReptileBM" = phyloseq::sample_data(rpal_field_canal)$ReptileBM,
                                 "NumberBM" = phyloseq::sample_data(rpal_field_canal)$NumberBM,
                                 "FirstBM" = phyloseq::sample_data(rpal_field_canal)$FirstBM,
                                 "SecondBM" = phyloseq::sample_data(rpal_field_canal)$SecondBM,
                                 "ThirdBM" = phyloseq::sample_data(rpal_field_canal)$ThirdBM,
                                 "FourthBM" = phyloseq::sample_data(rpal_field_canal)$FourthBM,
                                 "FifthBM" = phyloseq::sample_data(rpal_field_canal)$FifthBM,
                                 "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field_canal)$SingleInf_Tcruzi)



adiv_all_variables_veraguas <- data.frame(estimate_richness(rpal_field_veraguas, measures = c("Observed", "Shannon", "Chao1", "Simpson")),
                                       "Sample" = phyloseq::sample_data(rpal_field_veraguas)$Sample_Name,
                                       "Region" = phyloseq::sample_data(rpal_field_veraguas)$Region, 
                                       "PalmID" = phyloseq::sample_data(rpal_field_veraguas)$PalmID,
                                       "ESPECIE" = phyloseq::sample_data(rpal_field_veraguas)$ESPECIE,
                                       "Age_Group" = phyloseq::sample_data(rpal_field_veraguas)$Age_Group,
                                       "PROCEDENCIA" = phyloseq::sample_data(rpal_field_veraguas)$PROCEDENCIA,
                                       "HABITAT" = phyloseq::sample_data(rpal_field_veraguas)$HABITAT,
                                       "TypeBM" = phyloseq::sample_data(rpal_field_veraguas)$TypeBM,
                                       "HumanBM" = phyloseq::sample_data(rpal_field_veraguas)$HumanBM,
                                       "MammalBM" = phyloseq::sample_data(rpal_field_veraguas)$MammalBM,
                                       "BirdBM" = phyloseq::sample_data(rpal_field_veraguas)$BirdBM,
                                       "ReptileBM" = phyloseq::sample_data(rpal_field_veraguas)$ReptileBM,
                                       "NumberBM" = phyloseq::sample_data(rpal_field_veraguas)$NumberBM,
                                       "FirstBM" = phyloseq::sample_data(rpal_field_veraguas)$FirstBM,
                                       "SecondBM" = phyloseq::sample_data(rpal_field_veraguas)$SecondBM,
                                       "ThirdBM" = phyloseq::sample_data(rpal_field_veraguas)$ThirdBM,
                                       "FourthBM" = phyloseq::sample_data(rpal_field_veraguas)$FourthBM,
                                       "FifthBM" = phyloseq::sample_data(rpal_field_veraguas)$FifthBM,
                                       "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field_veraguas)$SingleInf_Tcruzi)



adiv_all_variables_veraguas_N1N3 <- data.frame(estimate_richness(rpal_field_N1N3_veraguas, measures = c("Observed", "Shannon", "Chao1", "Simpson")),
                                          "Sample" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$Sample_Name,
                                          "Region" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$Region, 
                                          "PalmID" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$PalmID,
                                          "Especie" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$Especie,
                                          "Age_Group" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$Age_Group,
                                          "Habitat" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$Habitat,
                                          "TypeBM_Updated" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$TypeBM_Updated,
                                          "NumberBM" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$NumberBM,
                                          "FirstBM" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$FirstBM,
                                          "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field_N1N3_veraguas)$SingleInf_Tcruzi)


adiv_all_variables_veraguas_N4Adult <- data.frame(estimate_richness(rpal_field_N4Adult_veraguas, measures = c("Observed", "Shannon", "Chao1", "Simpson")),
                                               "Sample" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$Sample_Name,
                                               "Region" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$Region, 
                                               "PalmID" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$PalmID,
                                               "Especie" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$Especie,
                                               "Age_Group" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$Age_Group,
                                               "Habitat" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$Habitat,
                                               "TypeBM_Updated" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$TypeBM_Updated,
                                               "NumberBM" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$NumberBM,
                                               "FirstBM" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$FirstBM,
                                               "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field_N4Adult_veraguas)$SingleInf_Tcruzi)


##### CANAL split by age group

adiv_all_variables_N1N3_canal <- data.frame(estimate_richness(rpal_field_N1N3_canal, measures = c("Observed", "Shannon", "Chao1", "Simpson")),
                                               "Sample" = phyloseq::sample_data(rpal_field_N1N3_canal)$Sample_Name,
                                               "Region" = phyloseq::sample_data(rpal_field_N1N3_canal)$Region, 
                                               "PalmID" = phyloseq::sample_data(rpal_field_N1N3_canal)$PalmID,
                                               "Especie" = phyloseq::sample_data(rpal_field_N1N3_canal)$Especie,
                                               "Age_Group" = phyloseq::sample_data(rpal_field_N1N3_canal)$Age_Group,
                                               "Habitat" = phyloseq::sample_data(rpal_field_N1N3_canal)$Habitat,
                                               "TypeBM_Updated" = phyloseq::sample_data(rpal_field_N1N3_canal)$TypeBM_Updated,
                                               "NumberBM" = phyloseq::sample_data(rpal_field_N1N3_canal)$NumberBM,
                                               "FirstBM" = phyloseq::sample_data(rpal_field_N1N3_canal)$FirstBM,
                                               "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field_N1N3_canal)$SingleInf_Tcruzi)


adiv_all_variables_N4Adult_canal <- data.frame(estimate_richness(rpal_field_N4Adult_canal, measures = c("Observed", "Shannon", "Chao1", "Simpson")),
                                                  "Sample" = phyloseq::sample_data(rpal_field_N4Adult_canal)$Sample_Name,
                                                  "Region" = phyloseq::sample_data(rpal_field_N4Adult_canal)$Region, 
                                                  "PalmID" = phyloseq::sample_data(rpal_field_N4Adult_canal)$PalmID,
                                                  "Especie" = phyloseq::sample_data(rpal_field_N4Adult_canal)$Especie,
                                                  "Age_Group" = phyloseq::sample_data(rpal_field_N4Adult_canal)$Age_Group,
                                                  "Habitat" = phyloseq::sample_data(rpal_field_N4Adult_canal)$Habitat,
                                                  "TypeBM_Updated" = phyloseq::sample_data(rpal_field_N4Adult_canal)$TypeBM_Updated,
                                                  "NumberBM" = phyloseq::sample_data(rpal_field_N4Adult_canal)$NumberBM,
                                                  "FirstBM" = phyloseq::sample_data(rpal_field_N4Adult_canal)$FirstBM,
                                                  "SingleInf_Tcruzi" = phyloseq::sample_data(rpal_field_N4Adult_canal)$SingleInf_Tcruzi)



FaithPD <- read_csv("./Data/FaithPD.csv")

#convert character columns to factors
FaithPD <- as.data.frame(unclass(FaithPD), stringsAsFactors = TRUE)
sapply(FaithPD,class) #check to see if there are no characters

FaithPD_N4Adult <- filter(FaithPD, Age_Group == "N4_Adult")



#Split by BM (run both to remove five bloodmeals)
Faith_BM <- filter(FaithPD, FirstBM != "Human") #remove humans and mus
Faith_BM <- filter(Faith_BM, FirstBM != "Mus") #remove humans and mus
Faith_BM <- filter(Faith_BM, TypeBM_Updated != "Mus") #remove humans and mus
Faith_BM <- filter(Faith_BM, TypeBM_Updated != "Human") #remove humans and mus
Faith_BM <- filter(Faith_BM, NumberBM != "Five") #without humans and mus


FaithBM_Canal <- filter(Faith_BM, Region == "La Chorrera" | Region == "Capira")
FaithBM_Canal_N1N3 <- filter(FaithBM_Canal, Age_Group == "N1_N3")
FaithBM_Canal_N4Adult <- filter(FaithBM_Canal, Age_Group == "N4_Adult")

FaithBM_Veraguas <- filter(Faith_BM, Region == "Veraguas")
FaithBM_Veraguas_N1N3 <- filter(FaithBM_Veraguas, Age_Group == "N4_Adult")
FaithBM_Veraguas_N4Adult <- filter(FaithBM_Veraguas, Age_Group == "N4_Adult")


#Split by habitat

FaithPD_Pasture <- filter(FaithPD, HABITAT == "Pasture")
FaithPD_BM_Pasture <- filter(Faith_BM, HABITAT == "Pasture")
Faith_BM_Pasture <- filter(Faith_BM, HABITAT == "Pasture")
FaithPD_Peridomestic <- filter(FaithPD, HABITAT == "Peridomestic") 
Faith_BM_Peridomestic <- filter(Faith_BM, HABITAT == "Peridomestic")
FaithPD_Forest <- filter(FaithPD, HABITAT == "Forest") 


#Split by infection status
FaithPD_Tcruzi <- filter(FaithPD, SingleInf_Tcruzi == "Positive")
FaithPD_negative <- filter(FaithPD, SingleInf_Tcruzi == "Negative")


#Region and Infection Status
FaithPD_veraguas_tcruzi <- filter(FaithPD_Veraguas, SingleInf_Tcruzi == "Positive")
FaithPD_veraguas_negative <- filter(FaithPD_Veraguas, SingleInf_Tcruzi == "Negative")

FaithPD_capira_tcruzi <- filter(FaithPD_Capira, SingleInf_Tcruzi == "Positive")
FaithPD_capira_negative <- filter(FaithPD_Capira, SingleInf_Tcruzi == "Negative")

FaithPD_chorrera_tcruzi <- filter(FaithPD_Chorrera, SingleInf_Tcruzi == "Positive")
FaithPD_chorrera_negative <- filter(FaithPD_Chorrera, SingleInf_Tcruzi == "Negative")


#import Pielou's evenness
Pielous_Evenness <- read_csv("/Volumes/Kaylee2.0/Dissertation_projects/Chapter2/16S_guts_project_August2019/AlphaDiversity/evenness.csv")

#convert columns to factors
Pielous_Evenness <- as.data.frame(unclass(Pielous_Evenness), stringsAsFactors = TRUE)
sapply(Pielous_Evenness,class)

#blood meal
Pielous_BM <- filter(Pielous_Evenness, FirstBM != "Human") #remove humans and mus and Piranga
Pielous_BM <- filter(Pielous_BM, FirstBM != "Mus")
Pielous_BM <- filter(Pielous_BM, NumberBM != "Five") #without humans and mus
Pielous_Dominant <- filter(Pielous_BM, FirstBM == "Didelphis" | FirstBM == "Heteromys" | FirstBM == "Philander")



Didelphis_Pielou <- filter(Pielous_BM, FirstBM == "Didelphis")
Didelphis_Pielou <- filter(Didelphis_Pielou, Region == "Veraguas")
Heteromys_Pielou <- filter(Pielous_BM, FirstBM == "Heteromys")
Heteromys_Pielou <- filter(Heteromys_Pielou, Region == "Veraguas")
Philander_Pielou <- filter(Pielous_BM, FirstBM == "Philander")
Philander_Pielou <- filter(Philander_Pielou, Region == "Capira" | Region == "La Chorrera")




#split datasets by region
Pielous_Evenness_Capira <- filter(Pielous_Evenness, Region == "Capira")
Pielous_BM_Capira <- filter(Pielous_BM, Region == "Capira")
Pielous_Evenness_Chorrera <- filter(Pielous_Evenness, Region == "La Chorrera")
Pielous_BM_Chorrera <- filter(Pielous_BM, Region == "La Chorrera")
Pielous_Evenness_Veraguas <- filter(Pielous_Evenness, Region == "Veraguas")  
Pielous_BM_Veraguas <- filter(Pielous_BM, Region == "Veraguas")  


#Split by habitat
Pielous_Evenness_Forest <- filter(Pielous_Evenness, HABITAT == "Forest")
Pielous_BM_Forest <- filter(Pielous_BM, HABITAT == "Forest")
Pielous_Evenness_Pasture <- filter(Pielous_Evenness, HABITAT == "Pasture")
Pielous_BM_Pasture <- filter(Pielous_BM, HABITAT == "Pasture")
Pielous_Evenness_Peridomestic <- filter(Pielous_Evenness, HABITAT == "Peridomestic")  
Pielous_BM_Peridomestic <- filter(Pielous_BM, HABITAT == "Peridomestic")  
Pielous_Evenness_Forest <- filter(Pielous_Evenness, HABITAT == "Forest")  

