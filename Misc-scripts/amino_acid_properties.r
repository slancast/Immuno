#This will use alakzam to find the physiochemical properties of the amino acids from the IgH sequences
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/
#qsub -cwd -l h_vmem=5g -pe shm 5 amino_acid_properties.r.sh

library(alakazam)
library(shazam)
library(ggplot2)

print("Beginning")

IgG15T3 <- readChangeoDb("IMGTIgG/15IgGT3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgG15T3))  { ID <- append(ID, "15T3")
Isotype <- append(Isotype, "IgG")}
IgG15T3 <- cbind(IgG15T3, ID, Isotype)
print("IgG15T3")

IgG15T2 <- readChangeoDb("IMGTIgG/15IgGT2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgG15T2))  { ID <- append(ID,"15T2")
Isotype <- append(Isotype, "IgG")}
IgG15T2 <- cbind(IgG15T2, ID, Isotype)
print("IgG15T2")

IgG15T1 <- readChangeoDb("IMGTIgG/15IgGT1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgG15T1))  { ID <- append(ID,"15T1")
Isotype <- append(Isotype, "IgG")}
IgG15T1 <- cbind(IgG15T1, ID, Isotype)
print("IgG15T1")

IgM15T3 <- readChangeoDb("19417_15T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgM15T3))  { ID <- append(ID,"15T3")
Isotype <- append(Isotype, "IgM")}
IgM15T3 <- cbind(IgM15T3, ID, Isotype)
print("IgM15T3")

IgM15T2 <- readChangeoDb("19421_15T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgM15T2))  { ID <- append(ID,"15T2")
Isotype <- append(Isotype, "IgM")}
IgM15T2 <- cbind(IgM15T2, ID, Isotype)
print("IgM15T2")

IgM15T1 <- readChangeoDb("19422_15T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Isotype <- c()
for (i in 1:nrow(IgM15T1))  { ID <- append(ID,"15T1")
Isotype <- append(Isotype, "IgM")}
IgM15T1 <- cbind(IgM15T1, ID, Isotype)
print("IgM15T1")

db <- rbind(IgG15T1, IgG15T2, IgG15T3, IgM15T1, IgM15T2, IgM15T3)

db$II <- interaction(db$ID, db$Isotype)


db_props <- aminoAcidProperties(db, seq="JUNCTION", nt=TRUE, trim=TRUE, 
                                label="CDR3")

#print(db_props[,c("ID")])

# The full set of properties are calculated by default
#dplyr::select(db_props[1:3], starts_with("CDR3"))

tmp_theme <- theme_bw() + theme(legend.position="bottom")
fit <- aov(CDR3_AA_LENGTH ~ ID, data=db_props)
print("CDR3_Length")
summary(fit)
g1 <- ggplot(db_props, aes(x=ID, y=CDR3_AA_LENGTH)) + tmp_theme +
    ggtitle("CDR3 length") + 
    xlab("II") + ylab("Amino acids") +
    geom_boxplot(aes(fill=II))
#paste("CDR3 length", toString(signif(summary(fit)[[1]][["Pr(>F)"]][[1]]),3), sep=" ")
fit <- aov(CDR3_AA_GRAVY ~ ID, data=db_props)
print("CDR3_AA_GRAVY")
summary(fit)
g2 <- ggplot(db_props, aes(x=ID, y=CDR3_AA_GRAVY)) + tmp_theme + 
    ggtitle("CDR3 hydrophobicity") + 
    xlab("II") + ylab("GRAVY") +
    geom_boxplot(aes(fill=II))
#paste("CDR3 hydrophobicity", toString(signif(summary(fit)[[1]][["Pr(>F)"]][[1]]),3), sep=" ")
fit <- aov(CDR3_AA_BASIC ~ ID, data=db_props)
print("CDR3_AA_BASIC")
summary(fit)
g3 <- ggplot(db_props, aes(x=ID, y=CDR3_AA_BASIC)) + tmp_theme +
    ggtitle("CDR3 basic residues") + 
    xlab("II") + ylab("Basic residues") +
    scale_y_continuous(labels=scales::percent) +
    geom_boxplot(aes(fill=II))
#paste("CDR3 basic residues", toString(signif(summary(fit)[[1]][["Pr(>F)"]][[1]]),3), sep=" ")
fit <- aov(CDR3_AA_ACIDIC ~ ID, data=db_props)
print("CDR3_AA_ACIDIC")
summary(fit)
g4 <- ggplot(db_props, aes(x=ID, y=CDR3_AA_ACIDIC)) + tmp_theme +
    ggtitle("CDR3 acidic residues") + 
    xlab("II") + ylab("Acidic residues") +
    scale_y_continuous(labels=scales::percent) +
    geom_boxplot(aes(fill=II))
pdf("AA_properties_15.pdf")
multiggplot(g1, g2, g3, g4, ncol=2)
dev.off()
#paste("CDR3 acidic residues", toString(signif(summary(fit)[[1]][["Pr(>F)"]][[1]]),3), sep=" ")
#fit <- aov(y ~ A, data=mydataframe)


