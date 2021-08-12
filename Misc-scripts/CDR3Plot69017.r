#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/CDR3networks

library(igraph)
library(qgraph)
library(getopt)

#######################################################################
#the .gml files must be gunzipped

print("r program beginning")

graph <- Sys.getenv(c("var"))
print("gmlfile:")
output <- substr(graph, 1, nchar(graph)-4)
print(output)
print(graph)

g<-read.graph(graph,format=c("gml"))

print(vcount(g))

print("graph read")


for (i in 1:vcount(g)) {
if(V(g)$isotype[i] == "hIGHM") {
V(g)$color[i] <- "red" }
if(V(g)$isotype[i] == "hIGHG4") {
V(g)$color[i] <- "lightblue" }
if(V(g)$isotype[i] == "hIGHG3") {
V(g)$color[i] <- "blue" }
if(V(g)$isotype[i] == "hIGHG2") {
V(g)$color[i] <- "darkblue" }
if(V(g)$isotype[i] == "hIGHG1") {
V(g)$color[i] <- "midnightblue" }
if(V(g)$isotype[i] == "hIGHA1") {
V(g)$color[i] <- "yellow" }
if(V(g)$isotype[i] == "hIGHA2") {
V(g)$color[i] <- "orange" }
if(V(g)$isotype[i] == "hIGHD") {
V(g)$color[i] <- "green" }
if(V(g)$isotype[i] == "hIGHE") {
V(g)$color[i] <- "black" }}

print(V(g)$color)


e <- get.edgelist(g)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(g), niter=1000)


print("plotting qgraph")
pdf(paste("CDR3",output,"no_freq.pdf",sep=""))
plot(g,layout=l,
edge.width = 0.01,
edge.arrow.width = 0.01,
vertex.size =  0.35,
edge.arrow.size = 0.01,
vertex.size2 = 0.35,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color=V(g)$color,
vertex.frame.color = NA
)
dev.off()


