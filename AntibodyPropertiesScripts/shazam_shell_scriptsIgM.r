## This file will plot several of the packages from the Kleinstein lab
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgM/analyses/selection
#qsub -cwd -l h_vmem=5g -pe shm 5 shazam_shell_scriptsIgM.r.sh

library(alakazam)
library(shazam)
library(ggplot2)

print("Beginning")

Subject <- Sys.getenv(c("var"))

print("T1")
IgMT1 <- readChangeoDb(paste("../../",Subject,"T1_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgMT1))  { ID <- append(ID,"T1") }
IgMT1 <- cbind(IgMT1, ID)

print("T2")
IgMT2 <- readChangeoDb(paste("../../",Subject,"T2_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgMT2))  { ID <- append(ID,"T2") }
IgMT2 <- cbind(IgMT2, ID)

print("T3")
IgMT3 <- readChangeoDb(paste("../../",Subject,"T3_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgMT3))  { ID <- append(ID,"T3") }
IgMT3 <- cbind(IgMT3, ID)

db <- rbind(IgMT1, IgMT2, IgMT3)

db <- subset(db, ID == c("T1", "T2", "T3"))

baseline <- calcBaseline(db, sequenceColumn = "SEQUENCE_IMGT", regionDefinition =IMGT_V_NO_CDR3, testStatistic = c("local"), nproc = 1)

baseline_group <- groupBaseline(baseline, groupBy= c("ID"))

pbs <- plotBaselineSummary(baseline_group, "ID") 
pdf(paste("IgMBaselineSummary",Subject,".pdf",sep=""))
pbs + geom_point(aes(colour = ID)) 
dev.off()

pbd <- plotBaselineDensity(baseline_group, "ID", sigmaLimits = c(-1, 1)) 
pdf(paste("IgMBaselineDiversity",Subject,".pdf",sep="")) #This requires a groupBaseline object
pbd + geom_line(aes(colour = ID)) 
dev.off()