#Using shazam to generate mutation frequency
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgG/analyses/mutation_frequency
#

library(alakazam)
library(shazam)
library(ggplot2)

Subject <- Sys.getenv(c("var"))

print("T1")
IgGT1 <- readChangeoDb(paste("../../",Subject,"IgGT1_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgGT1))  { ID <- append(ID,paste(Subject,"T1",sep="")) }
IgGT1 <- cbind(IgGT1, ID)

print("T2")
IgGT2 <- readChangeoDb(paste("../../",Subject,"IgGT2_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgGT2))  { ID <- append(ID,paste(Subject,"T2",sep="")) }
IgGT2 <- cbind(IgGT2, ID)

print("T3")
IgGT3 <- readChangeoDb(paste("../../",Subject,"IgGT3_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgGT3))  { ID <- append(ID,paste(Subject,"T3",sep="")) }
IgGT3 <- cbind(IgGT3, ID)


db <- rbind(IgGT1, IgGT2, IgGT3)


db_new <- calcDBObservedMutations(db, sequenceColumn="SEQUENCE_IMGT", germlineColumn="GERMLINE_IMGT_D_MASK", frequency=FALSE,regionDefinition=IMGT_V_BY_REGIONS)
print("mutations_calculated")

print("db type")
print(typeof(db_new))
#CDR3_Mut <- matrix(nrow = 0,ncol = 63)
#colnames(CDR3_Mut) <- c(colnames(db_new), "Mutations") #I don't think I use this anymore.

print(ncol(db_new))

write.table(db_new, file=paste(Subject,"db_new.csv", sep=""), sep=",")
