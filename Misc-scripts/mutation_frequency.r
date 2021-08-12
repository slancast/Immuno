#Using shazam to generate mutation frequency
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/
#

library(alakazam)
library(shazam)
library(ggplot2)

print("GT1")
IgG6T3 <- readChangeoDb("IMGTIgG/6IgGT3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgG6T3))  { ID <- append(ID,"6T3")
Isotype <- append(Isotype, "IgG")}
IgG6T3 <- cbind(IgG6T3, ID, Isotype)

print("GT2")
IgG6T2 <- readChangeoDb("IMGTIgG/6IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgG6T2))  { ID <- append(ID,"6T2")
Isotype <- append(Isotype, "IgG")}
IgG6T2 <- cbind(IgG6T2, ID, Isotype)

print("GT3")
IgG6T1 <- readChangeoDb("IMGTIgG/6IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgG6T1))  { ID <- append(ID,"6T1")
Isotype <- append(Isotype, "IgG")}
IgG6T1 <- cbind(IgG6T1, ID, Isotype)

print("MT1")
IgM6T3 <- readChangeoDb("19107_6T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgM6T3))  { ID <- append(ID,"6T3")
Isotype <- append(Isotype, "IgM")}
IgM6T3 <- cbind(IgM6T3, ID, Isotype)

print("MT2")
IgM6T2 <- readChangeoDb("19109_6T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgM6T2))  { ID <- append(ID,"6T2")
Isotype <- append(Isotype, "IgM")}
IgM6T2 <- cbind(IgM6T2, ID, Isotype)

print("MT3")
IgM6T1 <- readChangeoDb("19119_6T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgM6T1))  { ID <- append(ID,"6T1")
Isotype <- append(Isotype, "IgM")}
IgM6T1 <- cbind(IgM6T1, ID, Isotype)

db <- rbind(IgG6T1, IgG6T2, IgG6T3, IgM6T1, IgM6T2, IgM6T3)

db$II <- interaction(db$ID, db$Isotype)

db_new <- calcDBObservedMutations(db, sequenceColumn="SEQUENCE_IMGT", germlineColumn="GERMLINE_IMGT_D_MASK", frequency=FALSE,regionDefinition=IMGT_V_BY_REGIONS)
print("mutations_calculated")

print("db type")
print(typeof(db_new))
CDR3_Mut <- matrix(nrow = 0,ncol = 63)
colnames(CDR3_Mut) <- c(colnames(db_new), "Mutations")

print(CDR3_Mut)
print(ncol(db_new))
print("beginning for loop")

write.table(db_new, file="db_new.csv", sep=",")

