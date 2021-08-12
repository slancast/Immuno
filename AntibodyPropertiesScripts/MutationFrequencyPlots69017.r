#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/69-017/mutation_freq

library(ggplot2)

Subject <- Sys.getenv(c("var"))
output <- substr(subject, 6, 9)

print("beginning")

CDR3_Mut <- read.csv(paste(output,"CDR3_Mut.csv",sep=""), stringsAsFactors = FALSE)
CDR3_Mut <- data.frame(CDR3_Mut)

print("table_read")
    
pdf(paste(Subject,"Total_Mutations.pdf",sep=""))
ggplot(CDR3_Mut, aes(x=ID, y=Total_Mutations)) +
	geom_violin(aes(fill=ID)) +
    ggtitle("Mutations_per_V_gene") + 
    xlab("ID") + 
    ylab("Mutations_per_V_gene") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()

#ist1 <- subset(CDR3_Mut, ID == "IS.T1")
#ist2 <- subset(CDR3_Mut, ID == "IS.T2")
#irt1 <- subset(CDR3_Mut, ID == "IR.T1")
#irt2 <- subset(CDR3_Mut, ID == "IR.T2")

#print(t.test(ist1$Total_Mutations,ist2$Total_Mutations))
#print(t.test(irt1$Total_Mutations,irt2$Total_Mutations))