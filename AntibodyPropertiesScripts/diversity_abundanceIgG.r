#This file will break off the diversity and abundance analyses from the BASELINe analyses
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgG/analyses/diversity_abundance
#qsub -cwd -l h_vmem=5g -pe shm 5 diversity_abundanceIgG.r.sh

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

div1 <- testDiversity(db, 1, "ID", clone = "CLONE", copy = NULL, min_n = 30, max_n = NULL, nboot = 2000)

write.table(div1@tests, file = paste(Subject,"IgGtests.csv",sep=""), row.names = c(Subject,Subject,Subject), col.names = FALSE, sep=",")
write.table(div1@summary, file = paste(Subject,"IgGsummary.csv",sep=""), row.names = c(Subject,Subject,Subject), col.names = FALSE, sep=",")

div <- rarefyDiversity(db, "ID", clone = "CLONE", copy = NULL, min_q = 0, max_q = 4, step_q = 0.05, min_n = 30, max_n = NULL, ci = 0.95, nboot = 2000)

plot <- plotDiversityCurve(div, legend_title="Time Point") 
pdf(paste("Diversity",Subject,".pdf",sep=""))
plot + theme(axis.text=element_text(size=6,face="bold"),axis.text.x=element_text(size=6),axis.text.y=element_text(size=6),legend.title=element_text(size=6),axis.title.x=element_text(size=6),axis.title.y=element_text(size=6),legend.text=element_text(size=12),plot.title=element_text(vjust=1))
dev.off()

abund <- estimateAbundance(db, "ID", nboot=60)

pdf(paste("Abundance",Subject,".pdf",sep=""))
plotAbundance(abund, "CLONE", colors = NULL, main_title = "Rank Abundance", silent = FALSE)+theme(axis.text=element_text(size=6,face="bold"),axis.text.x=element_text(size=6),axis.text.y=element_text(size=6),legend.title=element_text(size=6),axis.title.x=element_text(size=6),axis.title.y=element_text(size=6),legend.text=element_text(size=12),plot.title=NULL)
dev.off()