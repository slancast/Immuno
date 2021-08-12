#slancast@scg4.stanford.edu:/home/slancast

.libPaths( c( .libPaths(), "/usr/local/lib/R/site-library/3.2"))
library(igraph)
library(qgraph)
library(getopt)

#######################################################################
#the .gml files must be gunzipped

print("r program beginning")

graph <- "p1t2.gml"
print("gmlfile:")
output <- substr(graph, 1, nchar(graph)-4)
print(output)
print(graph)

g<-read.graph(graph,format=c("gml"))

print(vcount(g))

print("graph read")

#size <- c()

for (i in 1:vcount(g)) {
V(g)$size[i] <- as.numeric(0.2 + V(g)$frequency[i]*0.01) }

e <- get.edgelist(g)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(g), niter=3000)

for (i in 1:vcount(g)) {
if(V(g)$isotype[i] == "hIGHM") {
V(g)$color[i] <- "red" 
V(g)$r[i] <- 1
V(g)$b[i] <- 0
V(g)$g[i] <- 0 }
if(V(g)$isotype[i] == "hIGHG4") {
V(g)$color[i] <- "lightblue" 
V(g)$r[i] <- 30/255
V(g)$b[i] <- 1
V(g)$g[i] <- 144/255 }
if(V(g)$isotype[i] == "hIGHG3") {
V(g)$color[i] <- "blue" 
V(g)$r[i] <- 0
V(g)$b[i] <- 1
V(g)$g[i] <- 0 }
if(V(g)$isotype[i] == "hIGHG2") {
V(g)$color[i] <- "darkblue" 
V(g)$r[i] <- 0
V(g)$b[i] <- 200/255
V(g)$g[i] <- 0 }
if(V(g)$isotype[i] == "hIGHG1") {
V(g)$color[i] <- "midnightblue" 
V(g)$r[i] <- 0
V(g)$b[i] <- 139/255
V(g)$g[i] <- 0 }
if(V(g)$isotype[i] == "hIGHA1") {
V(g)$color[i] <- "yellow" 
V(g)$r[i] <- 1
V(g)$b[i] <- 0
V(g)$g[i] <- 1}
if(V(g)$isotype[i] == "hIGHA2") {
V(g)$color[i] <- "orange" 
V(g)$r[i] <- 1
V(g)$b[i] <- 0
V(g)$g[i] <- 165/255 }
if(V(g)$isotype[i] == "hIGHD") {
V(g)$color[i] <- "green" 
V(g)$r[i] <- 0 
V(g)$b[i] <- 0
V(g)$g[i] <- 1 }
if(V(g)$isotype[i] == "hIGHE") {
V(g)$color[i] <- "black" 
V(g)$r[i] <- 0
V(g)$b[i] <- 0
V(g)$g[i] <- 0 }}


for (i in 1:length(V(g)$size)) {
if(V(g)$size[i] > 1) {
V(g)$transparency[i]<- as.numeric(0.5)
print(V(g)$size[i])}
if (V(g)$size[i] <= as.numeric(1)) {
V(g)$transparency[i]<-1} }

print("plotting qgraph")
pdf(paste("CDR3",output,"with_freq_3000.pdf",sep=""))
plot(g,layout=l,
edge.width = 0.01,
edge.arrow.width = 0.01,
vertex.size = V(g)$size,
edge.arrow.size = 0.01,
vertex.label = NA,
edge.label = NA,
vertex.shape="circle",
vertex.color=rgb(V(g)$r,V(g)$g,V(g)$b,V(g)$transparency),
vertex.frame.color = NA
)
dev.off()


