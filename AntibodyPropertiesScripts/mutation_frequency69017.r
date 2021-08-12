#Using shazam to generate mutation frequency
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/69-017/mutation_freq
#

library(alakazam)
library(shazam)
library(ggplot2)

Subject <- Sys.getenv(c("var"))
output <- substr(Subject, 6, 9)

print("T1")
db <- readChangeoDb(Subject)
ID <- c()
Isotype <- c()
for (i in 1:nrow(db))  { ID <- append(ID,Subject) }
db <- cbind(db, ID)

db_new <- calcDBObservedMutations(db, sequenceColumn="SEQUENCE_IMGT", germlineColumn="GERMLINE_IMGT_D_MASK", frequency=FALSE,regionDefinition=IMGT_V_BY_REGIONS)
print("mutations_calculated")
ls
print("db type")
print(typeof(db_new))
#CDR3_Mut <- matrix(nrow = 0,ncol = 63)
#colnames(CDR3_Mut) <- c(colnames(db_new), "Mutations") #I don't think I use this anymore.

print(ncol(db_new))

write.table(db_new, file=paste(output,"db_new.csv", sep=""), sep=",")
