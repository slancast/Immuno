#This file will break off the diversity and abundance analyses from the BASELINe analyses
#that were performed in the shazam_shell_scrips.r
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/

library(alakazam)
library(shazam)
library(ggplot2)

P2 <- readChangeoDb("19336_2T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P2))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P2 <- cbind(P2, ID, Insulin_Status, Isotype)

P3 <- readChangeoDb("19346_3T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P3))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P3 <- cbind(P3, ID, Insulin_Status, Isotype)

P4 <- readChangeoDb("19335_4T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P4))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P4 <- cbind(P4, ID, Insulin_Status, Isotype)

P5 <- readChangeoDb("19112_5T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P5))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P5 <- cbind(P5, ID, Insulin_Status, Isotype)

P6 <- readChangeoDb("19119_6T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P6))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P6 <- cbind(P6, ID, Insulin_Status, Isotype)

P7 <- readChangeoDb("19120_7T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P7))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P7 <- cbind(P7, ID, Insulin_Status, Isotype)

P8 <- readChangeoDb("19122_8T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P8))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P8 <- cbind(P8, ID, Insulin_Status, Isotype)

P9 <- readChangeoDb("19121_9T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P9))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P9 <- cbind(P9, ID, Insulin_Status, Isotype)

P10 <- readChangeoDb("19106_10T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P10))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P10 <- cbind(P10, ID, Insulin_Status, Isotype)

P11 <- readChangeoDb("19125_11T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P11))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P11 <- cbind(P11, ID, Insulin_Status, Isotype)

P12 <- readChangeoDb("19110_12T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P12))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P12 <- cbind(P12, ID, Insulin_Status, Isotype)

P13 <- readChangeoDb("19418_13T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P13))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P13 <- cbind(P13, ID, Insulin_Status, Isotype)

P14 <- readChangeoDb("19415_14T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P14))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P14 <- cbind(P14, ID, Insulin_Status, Isotype)

P15 <- readChangeoDb("19422_15T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P15))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P15 <- cbind(P15, ID, Insulin_Status, Isotype)

P16 <- readChangeoDb("19376_16T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P16))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P16 <- cbind(P16, ID, Insulin_Status, Isotype)

P17 <- readChangeoDb("19379_17T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P17))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P17 <- cbind(P17, ID, Insulin_Status, Isotype)

P2IgG <- readChangeoDb("IMGTIgG/2IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P2IgG))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgG")}
P2IgG <- cbind(P2IgG, ID, Insulin_Status, Isotype)

P3IgG <- readChangeoDb("IMGTIgG/3IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P3IgG))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgG")}
P3IgG <- cbind(P3IgG, ID, Insulin_Status, Isotype)

P4IgG <- readChangeoDb("IMGTIgG/4IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P4IgG))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgG")}
P4IgG <- cbind(P4IgG, ID, Insulin_Status, Isotype)

P5IgG <- readChangeoDb("IMGTIgG/5IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P5IgG))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgG")}
P5IgG <- cbind(P5IgG, ID, Insulin_Status, Isotype)

P6IgG <- readChangeoDb("IMGTIgG/6IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P6IgG))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgG")}
P6IgG <- cbind(P6IgG, ID, Insulin_Status, Isotype)

P7IgG <- readChangeoDb("IMGTIgG/7IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P7IgG))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgG")}
P7IgG <- cbind(P7IgG, ID, Insulin_Status, Isotype)

P8IgG <- readChangeoDb("IMGTIgG/8IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P8IgG))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgG")}
P8IgG <- cbind(P8IgG, ID, Insulin_Status, Isotype)

P9IgG <- readChangeoDb("IMGTIgG/9IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P9IgG))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgG")}
P9IgG <- cbind(P9IgG, ID, Insulin_Status, Isotype)

P10IgG <- readChangeoDb("IMGTIgG/10IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P10IgG))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgG")}
P10IgG <- cbind(P10IgG, ID, Insulin_Status, Isotype)

P11IgG <- readChangeoDb("IMGTIgG/11IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P11IgG))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgG")}
P11IgG <- cbind(P11IgG, ID, Insulin_Status, Isotype)

P12IgG <- readChangeoDb("IMGTIgG/12IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P12IgG))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgG")}
P12IgG <- cbind(P12IgG, ID, Insulin_Status, Isotype)

P13IgG <- readChangeoDb("IMGTIgG/13IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P13IgG))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgG")}
P13IgG <- cbind(P13IgG, ID, Insulin_Status, Isotype)

P14IgG <- readChangeoDb("IMGTIgG/14IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P14IgG))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgG")}
P14IgG <- cbind(P14IgG, ID, Insulin_Status, Isotype)

P15IgG <- readChangeoDb("IMGTIgG/15IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P15IgG))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgG")}
P15IgG <- cbind(P15IgG, ID, Insulin_Status, Isotype)

P16IgG <- readChangeoDb("IMGTIgG/16IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P16IgG))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgG")}
P16IgG <- cbind(P16IgG, ID, Insulin_Status, Isotype)

P17IgG <- readChangeoDb("IMGTIgG/17IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P17IgG))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgG")}
P17IgG <- cbind(P17IgG, ID, Insulin_Status, Isotype)

db <- rbind(P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P14, P15, P16, P17, P2IgG, P3IgG, P4IgG, P5IgG, P6IgG, P7IgG, P8IgG, P9IgG, P10IgG, P11IgG, P12IgG, P13IgG, P14IgG, P15IgG, P16IgG, P17IgG)

print(nrow(db$II))
print(nrow(db))

db$II <- interaction(db$Insulin_Status, db$Isotype)

div <- rarefyDiversity(db, "II", clone = "CLONE", copy = NULL, min_q = 0, max_q = 4, step_q = 0.05, min_n = 30, max_n = NULL, ci = 0.95, nboot = 2000)

plot <- plotDiversityCurve(div, legend_title="Time Point") 
pdf('CrossSectionalDiversity.pdf')
plot + theme(axis.text=element_text(size=14,face="bold"),axis.text.x=element_text(size=14),axis.text.y=element_text(size=14),legend.title=element_text(size=14),axis.title.x=element_text(size=14),axis.title.y=element_text(size=14),legend.text=element_text(size=12),plot.title=element_text(vjust=1))
dev.off()

#abund <- estimateAbundance(db, "II", nboot=140)

#pdf('TestingAbundance14.pdf')
#plotAbundance(abund, "II", colors = NULL, main_title = "Rank Abundance", silent = FALSE)
#dev.off()