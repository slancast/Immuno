#Using shazam to generate mutation frequency
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgA/analyses/mutation_frequency
#

library(alakazam)
library(shazam)
library(ggplot2)

Subject <- Sys.getenv(c("var"))

print("T1")
IgAT1 <- readChangeoDb(paste("../../P",Subject,"T1_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgAT1))  { ID <- append(ID,paste(Subject,"T1",sep="")) }
IgAT1 <- cbind(IgAT1, ID)

print("T2")
IgAT2 <- readChangeoDb(paste("../../P",Subject,"T2_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgAT2))  { ID <- append(ID,paste(Subject,"T2",sep="")) }
IgAT2 <- cbind(IgAT2, ID)

print("T3")
IgAT3 <- readChangeoDb(paste("../../P",Subject,"T3_db-pass_clone-pass_germ-pass.tab",sep=""))
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgAT3))  { ID <- append(ID,paste(Subject,"T3",sep="")) }
IgAT3 <- cbind(IgAT3, ID)

db <- rbind(IgAT1, IgAT2, IgAT3)

db_new <- calcDBObservedMutations(db, sequenceColumn="SEQUENCE_IMGT", germlineColumn="GERMLINE_IMGT_D_MASK", frequency=FALSE,regionDefinition=IMGT_V_BY_REGIONS)
print("mutations_calculated")

print("db type")
print(typeof(db_new))

print(ncol(db_new))

write.table(db_new, file=paste(Subject,"db_new.csv", sep=""), sep=",")

pdf(paste("Mutation_frequency_",Subject,"_0FWR1.pdf",sep=""))
ggplot(db_new, aes(x=ID, y=OBSERVED_FWR1_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_FWR1_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()


pdf(paste("Mutation_frequency_",Subject,"_0CDR1.pdf",sep=""))
ggplot(db_new, aes(x=ID, y=OBSERVED_CDR1_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_CDR1_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()


pdf(paste("Mutation_frequency_",Subject,"_0FWR2.pdf",sep=""))
ggplot(db_new, aes(x=ID, y=OBSERVED_FWR2_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_FWR2_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()


pdf(paste("Mutation_frequency_",Subject,"_0CDR2.pdf",sep=""))
ggplot(db_new, aes(x=ID, y=OBSERVED_CDR2_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_CDR2_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()

pdf(paste("Mutation_frequency_",Subject,"_0FWR3.pdf",sep=""))
ggplot(db_new, aes(x=ID, y=OBSERVED_FWR3_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_FWR3_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()


pdf(paste("Mutation_frequency_",Subject,"_0CDR3.pdf",sep=""))
ggplot(db_new, aes(x=ID, y=OBSERVED_CDR3_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_CDR3_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()


print("db type")
print(typeof(db_new))
CDR3_Mut <- matrix(nrow = 0,ncol = 62)
colnames(CDR3_Mut) <- colnames(db_new)

print(CDR3_Mut)
print(ncol(db_new))
print("beginning for loop")


for (i in 1:nrow(db_new)){
if (as.integer(db_new[i,]$OBSERVED_CDR3_R) >= 1){
print(i)
CDR3_Mut <- rbind(CDR3_Mut, db_new[i,])  }}
write.table(CDR3_Mut, "CDR3_Mut.tab", sep="\t")
CDR3_Mut <- data.frame(CDR3_Mut)

print("making plots without no mutations")

pdf(paste("Mutation_frequency_",Subject,"_FWR1.pdf",sep=""))
ggplot(CDR3_Mut, aes(x=ID, y=OBSERVED_FWR1_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_FWR1_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()


pdf(paste("Mutation_frequency_",Subject,"_CDR1.pdf",sep=""))
ggplot(CDR3_Mut, aes(x=ID, y=OBSERVED_CDR1_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_CDR1_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()


pdf(paste("Mutation_frequency_",Subject,"_FWR2.pdf",sep=""))
ggplot(CDR3_Mut, aes(x=ID, y=OBSERVED_FWR2_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_FWR2_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()


pdf(paste("Mutation_frequency_",Subject,"_CDR2.pdf",sep=""))
ggplot(CDR3_Mut, aes(x=ID, y=OBSERVED_CDR2_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_CDR2_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()
    
pdf(paste("Mutation_frequency_",Subject,"_FWR3.pdf",sep=""))
ggplot(CDR3_Mut, aes(x=ID, y=OBSERVED_FWR3_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_FWR3_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()


pdf(paste("Mutation_frequency_",Subject,"_CDR3.pdf",sep=""))
ggplot(CDR3_Mut, aes(x=ID, y=OBSERVED_CDR3_R)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("OBSERVED_CDR3_R") + 
    xlab("ID") + 
    ylab("Mutation_Frequency") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()
