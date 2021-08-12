#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgA/analyses/nucplots/plots

library(igraph)
library(qgraph)
library(getopt)

#######################################################################
#the .gml files must be gunzipped

graph <- Sys.getenv(c("var"))
print(graph)

g<-read.graph(graph,format=c("gml"))
print(vcount(g))

print("graph read")

e <- get.edgelist(g)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(g))

print("plotting qgraph")

pdf(paste(graph,".pdf",sep=""))
plot(g,layout=l,
edge.width = 0.01,
edge.arrow.width = 0.01,
vertex.size = 0.3,
edge.arrow.size = 0.01,
vertex.size2 = 0.3,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="black",
vertex.frame.color = NA)
dev.off()
