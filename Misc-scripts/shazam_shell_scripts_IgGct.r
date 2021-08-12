#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/

library(alakazam)
library(shazam)
library(ggplot2)

P2 <- readChangeoDb("IMGTIgG/2IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P2))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
P2 <- cbind(P2, ID, Insulin_Status, Time)

P3 <- readChangeoDb("IMGTIgG/3IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P3))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
P3 <- cbind(P3, ID, Insulin_Status, Time)

P4 <- readChangeoDb("IMGTIgG/4IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P4))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
P4 <- cbind(P4, ID, Insulin_Status, Time)

P5 <- readChangeoDb("IMGTIgG/5IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P5))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
P5 <- cbind(P5, ID, Insulin_Status, Time)

P6 <- readChangeoDb("IMGTIgG/6IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P6))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
P6 <- cbind(P6, ID, Insulin_Status, Time)

P7 <- readChangeoDb("IMGTIgG/7IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P7))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
P7 <- cbind(P7, ID, Insulin_Status, Time)

P8 <- readChangeoDb("IMGTIgG/8IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P8))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
P8 <- cbind(P8, ID, Insulin_Status, Time)

P9 <- readChangeoDb("IMGTIgG/9IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P9))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
P9 <- cbind(P9, ID, Insulin_Status, Time)

P10 <- readChangeoDb("IMGTIgG/10IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P10))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
P10 <- cbind(P10, ID, Insulin_Status, Time)

P11 <- readChangeoDb("IMGTIgG/11IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P11))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
P11 <- cbind(P11, ID, Insulin_Status, Time)

P12 <- readChangeoDb("IMGTIgG/12IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P12))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
P12 <- cbind(P12, ID, Insulin_Status, Time)

P13 <- readChangeoDb("IMGTIgG/13IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P13))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
P13 <- cbind(P13, ID, Insulin_Status, Time)

P14 <- readChangeoDb("IMGTIgG/14IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P14))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
P14 <- cbind(P14, ID, Insulin_Status, Time)

P15 <- readChangeoDb("IMGTIgG/15IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P15))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
P15 <- cbind(P15, ID, Insulin_Status, Time)

P16 <- readChangeoDb("IMGTIgG/16IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P16))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")}
P16 <- cbind(P16, ID, Insulin_Status, Time)

P17 <- readChangeoDb("IMGTIgG/17IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P17))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")}
P17 <- cbind(P17, ID, Insulin_Status, Time)

##########################T2

P2IgG <- readChangeoDb("IMGTIgG/2IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P2IgG))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P2IgG <- cbind(P2IgG, ID, Insulin_Status, Time)

P3IgG <- readChangeoDb("IMGTIgG/3IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P3IgG))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P3IgG <- cbind(P3IgG, ID, Insulin_Status, Time)

P4IgG <- readChangeoDb("IMGTIgG/4IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P4IgG))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P4IgG <- cbind(P4IgG, ID, Insulin_Status, Time)

P5IgG <- readChangeoDb("IMGTIgG/5IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P5IgG))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P5IgG <- cbind(P5IgG, ID, Insulin_Status, Time)

P6IgG <- readChangeoDb("IMGTIgG/6IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P6IgG))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P6IgG <- cbind(P6IgG, ID, Insulin_Status, Time)

P7IgG <- readChangeoDb("IMGTIgG/7IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P7IgG))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P7IgG <- cbind(P7IgG, ID, Insulin_Status, Time)

P8IgG <- readChangeoDb("IMGTIgG/8IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P8IgG))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P8IgG <- cbind(P8IgG, ID, Insulin_Status, Time)

P9IgG <- readChangeoDb("IMGTIgG/9IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P9IgG))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P9IgG <- cbind(P9IgG, ID, Insulin_Status, Time)

P10IgG <- readChangeoDb("IMGTIgG/10IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P10IgG))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P10IgG <- cbind(P10IgG, ID, Insulin_Status, Time)

P11IgG <- readChangeoDb("IMGTIgG/11IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P11IgG))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P11IgG <- cbind(P11IgG, ID, Insulin_Status, Time)

P12IgG <- readChangeoDb("IMGTIgG/12IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P12IgG))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P12IgG <- cbind(P12IgG, ID, Insulin_Status, Time)

P13IgG <- readChangeoDb("IMGTIgG/13IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P13IgG))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P13IgG <- cbind(P13IgG, ID, Insulin_Status, Time)

P14IgG <- readChangeoDb("IMGTIgG/14IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P14IgG))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P14IgG <- cbind(P14IgG, ID, Insulin_Status, Time)

P15IgG <- readChangeoDb("IMGTIgG/15IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P15IgG))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P15IgG <- cbind(P15IgG, ID, Insulin_Status, Time)

P16IgG <- readChangeoDb("IMGTIgG/16IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P16IgG))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")}
P16IgG <- cbind(P16IgG, ID, Insulin_Status, Time)

P17IgG <- readChangeoDb("IMGTIgG/17IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
for (i in 1:nrow(P17IgG))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")}
P17IgG <- cbind(P17IgG, ID, Insulin_Status, Time)

db <- rbind(P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P14, P15, P16, P17, P2IgG, P3IgG, P4IgG, P5IgG, P6IgG, P7IgG, P8IgG, P9IgG, P10IgG, P11IgG, P12IgG, P13IgG, P14IgG, P15IgG, P16IgG, P17IgG)

db$IT <- interaction(db$Insulin_Status, db$Time)

db <- subset(db, IT == c("IR.T1", "IS.T1", "IS.T2", "IR.T2"))

baseline <- calcBaseline(db, sequenceColumn = "SEQUENCE_IMGT", regionDefinition =IMGT_V_NO_CDR3, testStatistic = c("local"), nproc = 1)

baseline_group <- groupBaseline(baseline, groupBy= c("IT"))

print(summarizeBaseline(baseline_group, returnType = c("baseline", "df"), nproc = 1))

pbd <- plotBaselineDensity(baseline_group, "IT", sigmaLimits = c(-1, 0)) 
pdf('SelectionDistributionIgGct.pdf') #This requires a groupBaseline object
pbd + geom_line(aes(colour = IT)) 
dev.off()

