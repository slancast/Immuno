#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/

library(ggplot2)

print("beginning")

CDR3_Mut <- read.csv("CDR3_Mut.csv", stringsAsFactors = FALSE)
CDR3_Mut <- data.frame(CDR3_Mut)

print("table_read")
    
pdf("Total_Mutations.pdf")
ggplot(CDR3_Mut, aes(x=II, y=Total_Mutations)) +
	geom_violin(aes(fill=II)) +
    ggtitle("Mutations_per_V_gene") + 
    xlab("II") + 
    ylab("Mutations_per_V_gene") +
    theme(panel.background = element_rect(fill = "white"))
dev.off()

ist1 <- subset(CDR3_Mut, II == "IS.T1")
ist2 <- subset(CDR3_Mut, II == "IS.T2")
irt1 <- subset(CDR3_Mut, II == "IR.T1")
irt2 <- subset(CDR3_Mut, II == "IR.T2")

print(t.test(ist1$Total_Mutations,ist2$Total_Mutations))
print(t.test(irt1$Total_Mutations,irt2$Total_Mutations))