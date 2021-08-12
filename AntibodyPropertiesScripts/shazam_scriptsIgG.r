## This file will plot several of the packages from the Kleinstein lab
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgG/analyses/selection
#qsub -cwd -l h_vmem=5g -pe shm 5 shazam_shell_scriptsIgG.r.sh

library(alakazam)
library(shazam)
library(ggplot2)

print("Beginning")

Subject <- Sys.getenv(c("var"))

print("T1")
IgGT1 <- readChangeoDb(paste("../../",Subject,"IgGT1_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgGT1))  { ID <- append(ID,"T1") }
IgGT1 <- cbind(IgGT1, ID)

print("T2")
IgGT2 <- readChangeoDb(paste("../../",Subject,"IgGT2_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgGT2))  { ID <- append(ID,"T2") }
IgGT2 <- cbind(IgGT2, ID)

print("T3")
IgGT3 <- readChangeoDb(paste("../../",Subject,"IgGT3_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgGT3))  { ID <- append(ID,"T3") }
IgGT3 <- cbind(IgGT3, ID)

db <- rbind(IgGT1, IgGT2, IgGT3)

db <- subset(db, ID == c("T1", "T2", "T3"))

baseline <- calcBaseline(db, sequenceColumn = "SEQUENCE_IMGT", regionDefinition =IMGT_V_NO_CDR3, testStatistic = c("local"), nproc = 1)

baseline_group <- groupBaseline(baseline, groupBy= c("ID"))

pbs <- plotBaselineSummary(baseline_group, "ID") 
pdf(paste("IgGBaselineSummary",Subject,".pdf",sep=""))
pbs + geom_point(aes(colour = ID)) 
dev.off()

pbd <- plotBaselineDensity(baseline_group, "ID", sigmaLimits = c(-1, 1)) 
pdf(paste("IgGBaselineDiversity",Subject,".pdf",sep="")) #This requires a groupBaseline object
pbd + geom_line(aes(colour = ID)) 
dev.off()