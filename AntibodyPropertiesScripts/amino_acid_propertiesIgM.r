#This will use alakzam to find the physiochemical properties of the amino acids from the IgH sequences
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgM/analyses/aa_properties
#qsub -cwd -l h_vmem=5g -pe shm 5 amino_acid_properties.r.sh

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

################################################################################################

aa_length <- c()
aa_gravy <- c()
aa_basic <- c()
aa_acidic <- c()

T1_props <- aminoAcidProperties(IgMT1, seq="JUNCTION", nt=TRUE, trim=TRUE, label="CDR3")
aa_length <- c(aa_length, mean(T1_props$CDR3_AA_LENGTH), sd(T1_props$CDR3_AA_LENGTH))
aa_gravy <- c(aa_gravy, mean(T1_props$CDR3_AA_GRAVY), sd(T1_props$CDR3_AA_GRAVY))
aa_basic <- c(aa_basic, mean(T1_props$CDR3_AA_BASIC), sd(T1_props$CDR3_AA_BASIC))
aa_acidic <- c(aa_acidic, mean(T1_props$CDR3_AA_ACIDIC), sd(T1_props$CDR3_AA_ACIDIC))

T2_props <- aminoAcidProperties(IgMT2, seq="JUNCTION", nt=TRUE, trim=TRUE, label="CDR3")
aa_length <- c(aa_length, mean(T2_props$CDR3_AA_LENGTH), sd(T2_props$CDR3_AA_LENGTH))
aa_gravy <- c(aa_gravy, mean(T2_props$CDR3_AA_GRAVY), sd(T2_props$CDR3_AA_GRAVY))
aa_basic <- c(aa_basic, mean(T2_props$CDR3_AA_BASIC), sd(T2_props$CDR3_AA_BASIC))
aa_acidic <- c(aa_acidic, mean(T2_props$CDR3_AA_ACIDIC), sd(T2_props$CDR3_AA_ACIDIC))

T3_props <- aminoAcidProperties(IgMT3, seq="JUNCTION", nt=TRUE, trim=TRUE, label="CDR3")
aa_length <- c(aa_length, mean(T3_props$CDR3_AA_LENGTH), sd(T3_props$CDR3_AA_LENGTH))
aa_gravy <- c(aa_gravy, mean(T3_props$CDR3_AA_GRAVY), sd(T3_props$CDR3_AA_GRAVY))
aa_basic <- c(aa_basic, mean(T3_props$CDR3_AA_BASIC), sd(T3_props$CDR3_AA_BASIC))
aa_acidic <- c(aa_acidic, mean(T3_props$CDR3_AA_ACIDIC), sd(T3_props$CDR3_AA_ACIDIC))

aa_length <- as.matrix(t(aa_length))
aa_gravy <- as.matrix(t(aa_gravy))
aa_basic <- as.matrix(t(aa_basic))
aa_acidic <- as.matrix(t(aa_acidic))

write.table(aa_length, file = paste(Subject,"IgMaa_length.csv",sep=""), row.names = Subject, col.names = FALSE, sep=",")
write.table(aa_gravy, file = paste(Subject,"IgMaa_gravy.csv",sep=""), row.names = Subject, col.names = FALSE, sep=",")
write.table(aa_basic, file = paste(Subject,"IgMaa_basic.csv",sep=""), row.names = Subject, col.names = FALSE, sep=",")
write.table(aa_acidic, file = paste(Subject,"IgMaa_acidic.csv",sep=""), row.names = Subject, col.names = FALSE, sep=",")

################################################################################################


db_props <- aminoAcidProperties(db, seq="JUNCTION", nt=TRUE, trim=TRUE, 
                                label="CDR3")

tmp_theme <- theme_bw() + theme(legend.position="bottom")
fit <- aov(CDR3_AA_LENGTH ~ ID, data=db_props)
print("CDR3_Length")
summary(fit)
g1 <- ggplot(db_props, aes(x=ID, y=CDR3_AA_LENGTH)) + tmp_theme +
    ggtitle("CDR3 length") + 
    xlab("ID") + ylab("Amino acids") +
    geom_boxplot(aes(fill=ID))
fit <- aov(CDR3_AA_GRAVY ~ ID, data=db_props)
print("CDR3_AA_GRAVY")
summary(fit)
g2 <- ggplot(db_props, aes(x=ID, y=CDR3_AA_GRAVY)) + tmp_theme + 
    ggtitle("CDR3 hydrophobicity") + 
    xlab("ID") + ylab("GRAVY") +
    geom_boxplot(aes(fill=ID))
fit <- aov(CDR3_AA_BASIC ~ ID, data=db_props)
print("CDR3_AA_BASIC")
summary(fit)
g3 <- ggplot(db_props, aes(x=ID, y=CDR3_AA_BASIC)) + tmp_theme +
    ggtitle("CDR3 basic residues") + 
    xlab("ID") + ylab("Basic residues") +
    scale_y_continuous(labels=scales::percent) +
    geom_boxplot(aes(fill=ID))
fit <- aov(CDR3_AA_ACIDIC ~ ID, data=db_props)
print("CDR3_AA_ACIDIC")
summary(fit)
g4 <- ggplot(db_props, aes(x=ID, y=CDR3_AA_ACIDIC)) + tmp_theme +
    ggtitle("CDR3 acidic residues") + 
    xlab("ID") + ylab("Acidic residues") +
    scale_y_continuous(labels=scales::percent) +
    geom_boxplot(aes(fill=ID))
pdf(paste("AA_properties_",Subject,".pdf",sep=""))
multiggplot(g1, g2, g3, g4, ncol=2)
dev.off()


