### This script sets the scale for graphs ###
## Updated May 10, 2022
## Kaylee Arnold

display.brewer.all(n=NULL, type="all", select=NULL, exact.n=TRUE,
                   colorblindFriendly=T)


##for Relative Abundance 
colourCount <- 10 # max number of categories you need (10 because we are looking at top 10 genera)
getPalette <- colorRampPalette(brewer.pal(10, "Paired")) # 10 is for the number of distinct colors to use, and 12 is the most for "Paired"

colourCount <- 14 # max number of categories you need (14 because we are looking at 14 vertebrate genera)
getPalette_palms <- colorRampPalette(brewer.pal(10, "Paired")) # 10 is for the number of distinct colors to use, and 12 is the most for "Paired"


#for Blood meal richness

colourCount_bloodmeal <- 14
getPalette_bloodmeal <- colorRampPalette(brewer.pal(8, "Paired"))(colourCount_bloodmeal)

scale_color_manual(values = c("setosa" = "purple",
                              "versicolor" ="orange",
                                "virginica"="steelblue")) 

bloodmeal_palette <- c("Didelphis" = "#a1caf1",
                       "Heteromys" = "#b3446c",
                       "Philander" = "#f6a600",
                       "Bos" = "#875692",
                         "Mabuya" = "#8db600",
                         "Piranga" = "#604e97",
                         "Potos" = "#654522",
                         "Other" = '#c2b280',
                         "Thraupis" = "#e25822")


FirstBM_Palette <- c("Didelphis" = "#a1caf1",
                     "Heteromys" = "#be0032",
                     "Philander" = "#f6a600",
                     "Piranga" = "#b3446c")

"#f3c300", "#875692", "#f38400", "#a1caf1", "#be0032", "#c2b280",
"#848482", "#008856", "#e68fac", "#0067a5", "#f99379", "#604e97",
"#f6a600", "#b3446c", "#dcd300", "#882d17", "#8db600", "#654522",
"#e25822", "#2b3d26"


colourCount <- 8
getPalette <- colorRampPalette(brewer.pal(8, "Set2"))



## general palette
cbPalette <- c("#56B4E9", "#009E73", "#999999", "#E69F00", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

cbPalette_habitat_canal <- c("#E69F00", "#0072B2")
cbPalette_habitat_veraguas <- c("#009E73", "#E69F00", "#0072B2")

#for alpha plots
cbPalette_habitat <- c("#009E73", "#E69F00", "#0072B2")

#for beta plots
cbPalette_habitat_beta <- c("#E69F00", "#0072B2","#009E73")

cbPalette_regions <- c("#009E73", "#E69F00", "#0072B2")

cbPalette_infection <- c("#D55E00", "#999999", "#0072B2")
cbPalette_infection_single <- c("#999999", "#D55E00")

cbPalette_infection_single <- c("Negative" = "#999999",
                     "Positive" = "#D55E00")


cbPalette_habitat_canal <- c("#E69F00", "#0072B2")
cbPalette_habitat_veraguas <- c("#009E73", "#E69F00", "#0072B2")



# To use for fills, add
#scale_fill_manual(values=cbPalette)

#colorblind palette

#0072B2 - blue (peridomestic)
#D55E00 - red
#009E73 - green (forest)
#E69F00 - orange (pasture)
#F0E442 - yellow 
#999999 - grey

