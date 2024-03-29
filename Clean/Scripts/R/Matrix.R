## Reshape ASV Data

library(here)
library(readr)
here()

ASV_table <- read_csv("./Clean/Metadata/ASV_Table_allSpecies.csv")

library(reshape2)
library(ggplot2)

meltData <- dcast(ASV_table, Sample_Name~OTU, fun.aggregate=length)
write.csv(meltData, "./Clean/Metadata/meltData.csv")

presabs_AllBugs <-ifelse(meltData>0,1,0)
write.csv(presabs_AllBugs, "./Clean/Metadata/presabs_All.csv")

meltData.V2 <- dcast(ASV_table, OTU~Sample_Name, fun.aggregate=length)
write.csv(meltData.V2, "./Clean/Metadata/meltData.V2.csv")

presabs_AllBugs.V2 <-ifelse(meltData.V2>0,1,0)
write.csv(presabs_AllBugs.V2, "./Clean/Metadata/presabs_All.V2.csv")

#####

meltData_Region <- dcast(ASV_table, Region~OTU, fun.aggregate=length)

presabs_Region <-ifelse(meltData_Region>0,1,0)

write.csv(presabs_Region, "./Clean/Metadata/presabs_Region.csv")

####
meltData_Habitat <- dcast(ASV_table, Habitat~OTU, fun.aggregate=length)

presabs_Habitat <-ifelse(meltData_Habitat>0,1,0)
write.csv(presabs_Habitat, "./Clean/Metadata/presabs_Habitat.csv")

###
meltData_Infection <- dcast(ASV_table, SingleInf_Tcruzi~OTU, fun.aggregate=length)

presabs_Infection <-ifelse(meltData_Infection>0,1,0)
write.csv(presabs_Infection, "./Clean/Metadata/presabs_Infection.csv")

###
meltData_BM <- dcast(ASV_table, TypeBM_Updated~OTU, fun.aggregate=length)

presabs_BM <-ifelse(meltData_BM>0,1,0)
write.csv(presabs_BM, "./Clean/Metadata/presabs_BM.csv")



meltData.1 <- melt(ASV_table, value.name = "OTU")

meltData <- ASV_table %>% spread(variable = "OTU")

matrix_ASVData <- matrix(meltData)


ggplot(melt(ASV_table), aes(OTU, Sample, fill = Phylum)) +
  geom_tile(colour = "gray50") +
  scale_alpha_identity(guide = "none") +
  coord_equal(expand = 0) +
  theme_bw() +
  theme(panel.grid.major = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  xlab("Unique ASVs (N = 86)") + ylab("Samples (N = 154)") +
  theme(axis.text.x = element_blank(),
        axis.text.y = element_blank())


tableTD <- table(meltData)
g <- graph_from_biadjacency_matrix(tableTD, weighted = TRUE)
g1 <- graph_from_adjacency_matrix(tableTD)


colrs <- c("green", "cyan")[V(g)$type + 1L]
plot(g, vertex.color = colrs, layout = layout_as_bipartite)


tableTD_reduced <- ASV_Table %>% 
  select(c(Region, TypeBM))
ASV_network=graph_from_data_frame(d=tableTD_reduced,directed = FALSE)
plot(ASV_network)


## store the fullname
Region=V(ASV_network)$name[1:3]
Region
TypeBM=V(ASV_network)$name[4:7]
TypeBM
#get family name


# add vertices attributes
V(ASV_network)$Region=Region
V(ASV_network)$TypeBM=TypeBM

vcol=V(ASV_network)$Region
#vcol[(vcol!="Stark")&(vcol!="Lannister")]="gray50"
vcol[vcol=="Veraguas"]="tomato"
vcol[vcol=="Capira"]="gold"
vcol[vcol=="La Chorrera"]="blue"
vcol[vcol=="Other"]="purple"
vcol[vcol=="Mammal"]="red"
vcol[vcol=="Mix"]="black"
vcol[vcol=="Bird"]="green"
V(ASV_network)$color=vcol
#V(ASV_network)$size=igraph::degree(ASV_network)%>%log()*4
#E(ASV_network)$width=E(ASV_network)$weight%>%log()/2
plot(ASV_network, vertex.label.color="black", 
     vertex.label.cex=.5, vertex.label.dist=2, edge.curved=0.5,layout=layout_with_kk)
legend("right", legend = c("Capira","La Chorrera","Veraguas", "Other","Mammal","Mix","Bird"), pch=21,
       col=c("tomato","gold","blue","purple","red","black",'green'), pt.bg=c("tomato","gold","blue", "purple", "red","black","green"), pt.cex=1, cex=.8, bty="n", ncol=1)

