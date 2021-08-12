# /srv/gsfs0/projects/snyder/slancast/repertoire/

library(alakazam)
#library(shazam)
library(ggplot2)

# Read in database file
db <- readChangeoDb("/Users/SLancaster/Desktop/14IgGT3_db-pass_clone-pass_germ-pass.tab")

# # Preprocess clone
clone <- subset(db, CLONE = c(1063,1064))
clone <- makeChangeoClone(clone) #text_fields=c("SAMPLE", "ISOTYPE"), , num_fields="DUPCOUNT"
# 
# # Run PHYLIP and process output
makeTempDir("Clone164")
dnapars_exec <- "/Applications/phylip-3.695/exe/dnapars.app/Contents/MacOS/dnapars"
graph <- buildPhylipLineage(clone, dnapars_exec, rm_temp = FALSE,  verbose = TRUE)
# 
# # Plot graph with a tree layout
library(igraph)
ly <- layout_as_tree(graph, root="Germline", circular=F, flip.y=T)
pdf('/Users/SLancaster/Desktop/14IgGT3Clone1.pdf')
plot(graph, layout=ly) #xlim=c(1, 10), ylim=c(1, 10))
dev.off()