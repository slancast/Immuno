#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/

library(alakazam)
library(shazam)
library(ggplot2)



print("P2")
IgMP2 <- readChangeoDb("19336_2T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP2))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
IgMP2 <- cbind(IgMP2, ID, Insulin_Status, Time)

print("P3")
IgMP3 <- readChangeoDb("19346_3T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP3))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
IgMP3 <- cbind(IgMP3, ID, Insulin_Status, Time)

print("P4")
IgMP4 <- readChangeoDb("19335_4T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP4))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
IgMP4 <- cbind(IgMP4, ID, Insulin_Status, Time)

print("P5")
IgMP5 <- readChangeoDb("19112_5T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP5))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
IgMP5 <- cbind(IgMP5, ID, Insulin_Status, Time)

print("P6")
IgMP6 <- readChangeoDb("19119_6T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP6))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
IgMP6 <- cbind(IgMP6, ID, Insulin_Status, Time)

print("P7")
IgMP7 <- readChangeoDb("19120_7T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP7))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
IgMP7 <- cbind(IgMP7, ID, Insulin_Status, Time)

print("P8")
IgMP8 <- readChangeoDb("19122_8T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP8))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
IgMP8 <- cbind(IgMP8, ID, Insulin_Status, Time)

print("P9")
IgMP9 <- readChangeoDb("19121_9T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP9))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
IgMP9 <- cbind(IgMP9, ID, Insulin_Status, Time)

print("P10")
IgMP10 <- readChangeoDb("19106_10T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP10))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
IgMP10 <- cbind(IgMP10, ID, Insulin_Status, Time)

print("P11")
IgMP11 <- readChangeoDb("19125_11T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP11))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
IgMP11 <- cbind(IgMP11, ID, Insulin_Status, Time)

print("P12")
IgMP12 <- readChangeoDb("19110_12T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP12))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
IgMP12 <- cbind(IgMP12, ID, Insulin_Status, Time)

print("P13")
IgMP13 <- readChangeoDb("19418_13T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP13))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
IgMP13 <- cbind(IgMP13, ID, Insulin_Status, Time)

print("P14")
IgMP14 <- readChangeoDb("19415_14T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP14))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
IgMP14 <- cbind(IgMP14, ID, Insulin_Status, Time)

print("P15")
IgMP15 <- readChangeoDb("19422_15T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP15))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
IgMP15 <- cbind(IgMP15, ID, Insulin_Status, Time)

print("P16")
IgMP16 <- readChangeoDb("19376_16T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP16))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
IgMP16 <- cbind(IgMP16, ID, Insulin_Status, Time)

print("P17")
IgMP17 <- readChangeoDb("19379_17T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(IgMP17))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
IgMP17 <- cbind(IgMP17, ID, Insulin_Status, Time)

#######################T1

print("P2")
P2 <- readChangeoDb("19332_2T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P2))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P2 <- cbind(P2, ID, Insulin_Status, Time)

print("P3")
P3 <- readChangeoDb("19347_3T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P3))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P3 <- cbind(P3, ID, Insulin_Status, Time)

print("P4")
P4 <- readChangeoDb("19343_4T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P4))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P4 <- cbind(P4, ID, Insulin_Status, Time)

print("P5")
P5 <- readChangeoDb("19114_5T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P5))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P5 <- cbind(P5, ID, Insulin_Status, Time)

print("P6")
P6 <- readChangeoDb("19109_6T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P6))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P6 <- cbind(P6, ID, Insulin_Status, Time)

print("P7")
P7 <- readChangeoDb("19109_7T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P7))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P7 <- cbind(P7, ID, Insulin_Status, Time)

print("P8")
P8 <- readChangeoDb("19123_8T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P8))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P8 <- cbind(P8, ID, Insulin_Status, Time)

print("P9")
P9 <- readChangeoDb("19115_9T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P9))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P9 <- cbind(P9, ID, Insulin_Status, Time)

print("P10")
P10 <- readChangeoDb("19103_10T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P10))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P10 <- cbind(P10, ID, Insulin_Status, Time)

print("P11")
P11 <- readChangeoDb("19104_11T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P11))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P11 <- cbind(P11, ID, Insulin_Status, Time)

print("P12")
P12 <- readChangeoDb("19108_12T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P12))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P12 <- cbind(P12, ID, Insulin_Status, Time)

print("P13")
P13 <- readChangeoDb("19414_13T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P13))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P13 <- cbind(P13, ID, Insulin_Status, Time)

print("P14")
P14 <- readChangeoDb("19419_14T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P14))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P14 <- cbind(P14, ID, Insulin_Status, Time)

print("P15")
P15 <- readChangeoDb("19421_15T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P15))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P15 <- cbind(P15, ID, Insulin_Status, Time)

print("P16")
P16 <- readChangeoDb("19377_16T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P16))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P16 <- cbind(P16, ID, Insulin_Status, Time)

print("P17")
P17 <- readChangeoDb("19372_17T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P17))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P17 <- cbind(P17, ID, Insulin_Status, Time)


print("db")
db <- rbind(P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P14, P15, P16, P17, IgMP2, IgMP3, IgMP4, IgMP5, IgMP6, IgMP7, IgMP8, IgMP9, IgMP10, IgMP11, IgMP12, IgMP13, IgMP14, IgMP15, IgMP16, IgMP17)

db$IT <- interaction(db$Insulin_Status, db$Time)

div <- rarefyDiversity(db, "IT", clone = "CLONE", copy = NULL, min_q = 0, max_q = 4, step_q = 0.05, min_n = 30, max_n = NULL, ci = 0.95, nboot = 2000)

plot <- plotDiversityCurve(div, legend_title="Time Point") 
pdf('DiversityIgMct.pdf')
plot + theme(axis.text=element_text(size=14,face="bold"),axis.text.x=element_text(size=14),axis.text.y=element_text(size=14),legend.title=element_text(size=14),axis.title.x=element_text(size=14),axis.title.y=element_text(size=14),legend.text=element_text(size=12),plot.title=element_text(vjust=1))
dev.off()

#abund <- estimateAbundance(db, "IT", nboot=140)

#pdf('TestingAbundance14.pdf')
#plotAbundance(abund, "IT", colors = NULL, main_title = "Rank Abundance", silent = FALSE)
#dev.off()