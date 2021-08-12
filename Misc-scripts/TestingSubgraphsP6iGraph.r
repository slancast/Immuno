#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/rigraph/igraph/P6

library(igraph) 
library(qgraph)
library(ggplot2)
 
g<-read.graph("P6T1.gml",format=c("gml"))
print(ecount(g))
print(vcount(g))
edge_size<-500/ecount(g)

print("graph read")

e <- get.edgelist(g)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(g))

##########################################################
######################## Communities #####################
##########################################################

community.object<-fastgreedy.community(g)
print(g)
x <- which.max(sizes(community.object))
subg <- induced.subgraph(g, which(membership(community.object) == x))

pdf("P6T1Communities.pdf")
plot(g,layout=l,
edge.width = edge_size,
edge.color = "black",
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

pdf("P6T1SubgraphCommunitiesOL.pdf")
plot(subg,layout=ly,
edge.width = edge_size,
edge.color = "red",
edge.arrow.width = 0.01,
vertex.size = 0.5,
edge.arrow.size = 0.01,
vertex.size2 = 0.5,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="gold",
vertex.frame.color = NA)
dev.off()

gse <- get.edgelist(subg)
gsl <- qgraph.layout.fruchtermanreingold(gse,vcount=vcount(subg))
pdf("P6T1SubgraphCommunitiesGSL.pdf")
plot(subg,layout=gsl,
edge.width = edge_size,
edge.color = "red",
edge.arrow.width = 0.01,
vertex.size = 0.5,
edge.arrow.size = 0.01,
vertex.size2 = 0.5,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="gold",
vertex.frame.color = NA)
dev.off()

pdf("P6T1CombinedCommunities.pdf")
par(mfrow=c(1,1))
plot(g,layout=l,
edge.width = edge_size,
edge.color = "black",
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

par(new=TRUE)

plot(subg,layout=l,
edge.width = edge_size,
edge.color = "red",
edge.arrow.width = 0.01,
vertex.size = 0.5,
edge.arrow.size = 0.01,
vertex.size2 = 0.5,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="gold",
vertex.frame.color = NA)
dev.off()

##########################################################
######################## Clusters ########################
##########################################################

c <- clusters(g)
print(c)
gs <- induced.subgraph(g, c$membership==order(-c$csize)[1])
print(c$membership==order(-c$csize)[1])
print(gs)

c <- clusters(g)
most_common <- c$membership==order(-c$csize)[1]
vcolor <- c()
vsize <- c()
for (i in most_common){
if (i == TRUE) { vcolor <- c(vcolor,"gold")
vsize <- c(vsize,0.8)}
else { vcolor <- c(vcolor,"black")
vsize <- c(vsize,0.3)}}

pdf("P6T1CombinedClusters.pdf")
plot(g,layout=l,
edge.width = edge_size,
edge.color = "black",
edge.arrow.width = 0.01,
vertex.size = vsize,
edge.arrow.size = 0.01,
vertex.size2 = vsize,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color=vcolor,
vertex.frame.color = NA)
dev.off()



#List of subgraph nodes
V(g)$id <- seq(vcount(g))
gsVId <- V(gs)$id
gsVId <- 1+gsVId
print(gsVId)

#extracting subgraph node layouts
l <- cbind(l,V(g)$id)
ly <- l[l[,3] %in% gsVId, ]
print(nrow(ly))


# Add edge attribute id values
E(g)$id <- seq(ecount(g))
V(g)$id <- seq(vcount(g))

gsEId <- E(gs)$id
gsVId <- V(gs)$id

E(g)$color="black"
E(g)$width=edge_size
E(g)$arrow.size=0.01
E(g)$arrow.width=0.01
E(g)[gsEId]$color <- "#DC143C" # Crimson *************
E(g)[gsEId]$width <- edge_size
V(g)$size <- 0.3
V(g)$color="black"
V(g)[gsVId]$color <- "gold" # Crimson
V(g)[gsVId]$size <- 0.3

print("plotting qgraph")

pdf("P6T1Clusters.pdf")
par(mfrow=c(1,1))
plot(g,layout=l,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.frame.color = NA)
dev.off()

pdf("P6T1SubgraphClusters.pdf")
plot(gs,layout=l,
edge.width = edge_size,
edge.color = "red",
edge.arrow.width = 0.01,
vertex.size = 0.5,
edge.arrow.size = 0.01,
vertex.size2 = 0.5,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="gold",
vertex.frame.color = NA)
dev.off()


lmar1 <- min(l[,2], na.rm = TRUE)
lmar2 <- min(l[,1], na.rm = TRUE)
lmar3 <- max(l[,2], na.rm = TRUE)
lmar4 <- max(l[,1], na.rm = TRUE)

lymar1 <- min(ly[,2], na.rm = TRUE)
lymar2 <- min(ly[,1], na.rm = TRUE)
lymar3 <- max(ly[,2], na.rm = TRUE)
lymar4 <- max(ly[,1], na.rm = TRUE)

maradj1 <- lymar1/lmar1
maradj2 <- lymar2/lmar2
maradj3 <- lymar3/lmar3
maradj4 <- lymar4/lmar4

pinadj1 <- (lymar2-lymar4)/(lmar2-lmar4)
pinadj2 <- (lymar1-lymar3)/(lmar1-lmar3)

pdf("P6T1CombinedClusters.pdf")
plot(g,layout=l,
edge.width = edge_size,
edge.color = "black",
edge.arrow.width = 0.01,
vertex.size = 0.3,
edge.arrow.size = 0.01,
vertex.size2 = 0.3,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color=vcolor,
vertex.frame.color = NA)
dev.off()

par(new=TRUE,pin=c(7*pinadj2,7*pinadj1))

plot(gs,layout=ly,
edge.width = edge_size,
edge.color = "red",
edge.arrow.width = 0.02,
vertex.size = 1,
edge.arrow.size = 0.02,
vertex.size2 = 1,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="gold",
axis(1),
vertex.frame.color = NA)
dev.off()

par(pin=c(7,7))
rescale=F,
ylim=c(-10000,10000),
xlim=c(-10000,10000),
axis(1),

cdist <- component_distribution(g, cumulative = FALSE, mul.size = FALSE)
pdf("P6T1ComponentDist.pdf")
qplot(cdist, geom="histogram")
dev.off()

##########################################################
######################## T2 ##############################
##########################################################

g<-read.graph("P6T2.gml",format=c("gml"))
print(ecount(g))
print(vcount(g))
edge_size<-500/ecount(g)

print("graph read")

e <- get.edgelist(g)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(g))

print("plotting qgraph")

pdf("P6T2.pdf")
plot(g,layout=l,
edge.width = edge_size,
edge.color = "black",
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

 
g<-read.graph("P6T3.gml",format=c("gml"))
print(ecount(g))
print(vcount(g))
edge_size<-500/ecount(g)

print("graph read")

e <- get.edgelist(g)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(g))

print("plotting qgraph")

pdf("P6T3.pdf")
plot(g,layout=l,
edge.width = edge_size,
edge.color = "black",
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