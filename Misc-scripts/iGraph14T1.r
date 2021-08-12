#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/rigraph/igraph
 
 library(igraph)
 
 g<-read.graph("P14T1.gml",format=c("gml"))
 print(vcount(g))

 print("graph read")

#ly <- layout_with_fr(g,niter=500,grid="nogrid") #I will probably increase these during the final production

#print("layout made")
 
#pdf("RIgraphP14T1.pdf")
#plot(g, layout = ly,
#      edge.width = 0.01,
#      edge.arrow.width = 0.01,
#      vertex.size = 0.5,
#      edge.arrow.size = 0.01,
#      vertex.size2 = 0.5,
#      vertex.label = NA,
#      edge.label = NA,
#      vertex.label.dist=1,
#      vertex.shape="circle",
#      vertex.color="black",
#      vertex.frame.color = NA)
#dev.off()

ncoords <- layout_in_circle(g)

print("graph read")

ly <- layout_with_fr(g,coords=ncoords,niter=500,grid="nogrid")

print("layout made")

pdf("RIgraphP14T1CircleCoords.pdf")
plot(g, layout = ly,
edge.width = 0.01,
edge.arrow.width = 0.01,
vertex.size = 0.5,
edge.arrow.size = 0.01,
vertex.size2 = 0.5,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="black",
vertex.frame.color = NA)
dev.off()

rand_coords <- matrix(, nrow = vcount(g), ncol = 2)
for (i in 1:vcount(g)) { rand_coords[i,] <- c(runif(1, -1, 1),runif(1, -1, 1))}
rownames(rand_coords) <- V(g)
print(rand_coords)

print("graph read")

ly <- layout_with_fr(g,coords=rand_coords,niter=500,grid="nogrid")

print("layout made")

pdf("RIgraphP14T1NamedRand.pdf")
plot(g, layout = ly,
edge.width = 0.01,
edge.arrow.width = 0.01,
vertex.size = 0.5,
edge.arrow.size = 0.01,
vertex.size2 = 0.5,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="red",
vertex.frame.color = NA)
dev.off()

print("graph read")

ly <- layout_with_fr(g,coords=rand_coords,niter=100,grid="nogrid")

print("layout made")

pdf("RIgraphP14T1Rand100.pdf")
plot(g, layout = ly,
edge.width = 0.01,
edge.arrow.width = 0.01,
vertex.size = 0.5,
edge.arrow.size = 0.01,
vertex.size2 = 0.5,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="black",
vertex.frame.color = NA)
dev.off()

ly <- layout_with_fr(g,coords=rand_coords,niter=1000,grid="nogrid")

print("layout made")

pdf("RIgraphP14T1Rand1000.pdf")
plot(g, layout = ly,
edge.width = 0.01,
edge.arrow.width = 0.01,
vertex.size = 0.5,
edge.arrow.size = 0.01,
vertex.size2 = 0.5,
vertex.label = NA,
edge.label = NA,
vertex.label.dist=1,
vertex.shape="circle",
vertex.color="black",
vertex.frame.color = NA)
dev.off()