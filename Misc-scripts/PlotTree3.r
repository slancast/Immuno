# slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/


library(alakazam)
library(shazam)
library(ggplot2)
library(igraph)

print("reading db")
# Read in database file
db <- readChangeoDb("/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgG/14IgGT1_db-pass_clone-pass_germ-pass.tab")
dnapars_exec <- "/home/slancast/softwarePATH/phylip-3.696/exe/dnapars"


print("creating most abundant clone vector")
most_abundant_clones <- sort(table(db$CLONE),decreasing=TRUE)[1:10]
print(most_abundant_clones)

print("beginning making tree")
# # Preprocess clone ####### Something is going wrong now that I iterate over the list. I'll try to int the clone name
for (i in 1:nrow(most_abundant_clones)){
print(i)
clone <- subset(db, CLONE == as.integer(names(most_abundant_clones[i]))) #Two freaking =='s!!!!!!!!
print("clone subsetted")
print(clone)
clone <- makeChangeoClone(clone)
print("made changeo clone")
graph <- buildPhylipLineage(clone, dnapars_exec, rm_temp=TRUE)
V(graph)$label <- V(graph)$SAMPLE
print("labeled")
V(graph)$label[V(graph)$name == "Germline"] <- ""
print("named")
V(graph)$label[grepl("Inferred", V(graph)$name)] <- ""
print("inferred")
par(mar=c(0, 0, 0, 0) + 0.05)
print("graph built")
pdf(paste("14IgGT1clone",i,".pdf",sep=""))
plot(graph, layout=layout_as_tree, vertex.frame.color="grey", 
     vertex.label.color="black", edge.label.color="black", 
     edge.arrow.mode=0)
dev.off()
df <- summarizeSubtrees(graph)
p1 <- plotSubtrees(graph_list, "SAMPLE", "outdegree", colors=sample_colors, 
                   main_title="Node outdegree", legend_title="Time", 
                   style="box", silent=TRUE)
p2 <- plotSubtrees(graph_list, "SAMPLE", "size", colors=sample_colors, 
                   main_title="Subtree size", legend_title="Time", 
                   style="box", silent=TRUE)
p3 <- plotSubtrees(graph_list, "ISOTYPE", "pathlength", colors=IG_COLORS, 
                   main_title="Subtree path length", legend_title="Isotype", 
                   style="violin", silent=TRUE)
p4 <- plotSubtrees(graph_list,  "ISOTYPE", "depth", colors=IG_COLORS, 
                   main_title="Subtree depth", legend_title="Isotype", 
                   style="violin", silent=TRUE)
gridPlot(p1, p2, p3, p4, ncol=2)
}


# Set node colors
#V(graph)$color[V(graph)$SAMPLE == "-1h"] <- "seagreen"
#V(graph)$color[V(graph)$SAMPLE == "+7d"] <- "steelblue"
#V(graph)$color[V(graph)$name == "Germline"] <- "black"
#V(graph)$color[grepl("Inferred", V(graph)$name)] <- "white"

# Set node labels
#V(graph)$label <- paste(V(graph)$SAMPLE, V(graph)$ISOTYPE, sep=", ")
#V(graph)$label[V(graph)$name == "Germline"] <- ""
#V(graph)$label[grepl("Inferred", V(graph)$name)] <- ""


# Set node shapes
#V(graph)$shape <- "crectangle"
#V(graph)$shape[V(graph)$name == "Germline"] <- "circle"
#V(graph)$shape[grepl("Inferred", V(graph)$name)] <- "circle"

# Set node sizes
##V(graph)$size <- 60
#V(graph)$size[V(graph)$name == "Germline"] <- 30
#V(graph)$size[grepl("Inferred", V(graph)$name)] <- 15 

# Remove large default margins
#par(mar=c(0, 0, 0, 0) + 0.05)

# Plot the example tree


# Add legend
#legend("topleft", c("Germline", "Inferred", "-1h", "+7d"), 
       fill=c("black", "white", "seagreen", "steelblue"), cex=0.75)
       
# Set sample colors
#sample_colors <- c("-1h"="seagreen", "+7d"="steelblue")

# Box plots of node outdegree by sample
#p1 <- plotSubtrees(graph_list, "SAMPLE", "outdegree", colors=sample_colors, 
#                   main_title="Node outdegree", legend_title="Time", 
#                   style="box", silent=TRUE)
# Box plots of subtree size by sample
#p2 <- plotSubtrees(graph_list, "SAMPLE", "size", colors=sample_colors, 
#                   main_title="Subtree size", legend_title="Time", 
#                   style="box", silent=TRUE)
# Violin plots of subtree path length by isotype
#p3 <- plotSubtrees(graph_list, "ISOTYPE", "pathlength", colors=IG_COLORS, 
#                   main_title="Subtree path length", legend_title="Isotype", 
#                   style="violin", silent=TRUE)
# Violin plots of subtree depth by isotype
#p4 <- plotSubtrees(graph_list,  "ISOTYPE", "depth", colors=IG_COLORS, 
#                   main_title="Subtree depth", legend_title="Isotype", 
#                   style="violin", silent=TRUE)

# Plot in a 2x2 grid
#gridPlot(p1, p2, p3, p4, ncol=2)

