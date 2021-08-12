#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgM/analyses/mutation_frequency

library(ggplot2)

Subject <- Sys.getenv(c("var"))

print("beginning")

CDR3_Mut <- read.csv(paste(Subject,"CDR3_Mut.csv",sep=""), stringsAsFactors = FALSE)
CDR3_Mut <- data.frame(CDR3_Mut)


T1 <- subset(CDR3_Mut, ID == paste(Subject,"T1",sep=""))
T2 <- subset(CDR3_Mut, ID == paste(Subject,"T2",sep=""))
T3 <- subset(CDR3_Mut, ID == paste(Subject,"T3",sep=""))
mutations <- c(mean(T1$Total_Mutations),sd(T1$Total_Mutations),mean(T2$Total_Mutations),sd(T2$Total_Mutations),mean(T3$Total_Mutations),sd(T3$Total_Mutations))
mutations <- as.matrix(t(mutations))
write.table(mutations, file = paste(Subject,"IgMmutations.csv",sep=""), row.names = Subject, col.names = FALSE, sep=",")


print("table_read")
    
pdf(paste(Subject,"Total_Mutations.pdf",sep=""))
ggplot(CDR3_Mut, aes(x=ID, y=Total_Mutations)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("Mutations_per_V_gene") + 
    xlab("ID") + 
    ylab("Mutations_per_V_gene") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()