#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/rigraph/igraph
 
 library(igraph)
 
 g<-read.graph("P14T2.gml",format=c("gml"))

 coords <- matrix(, nrow = vcount(g), ncol = 2)
 for (i in 1:vcount(g)) { coords[i,] <- c(runif(1, -1, 1),runif(1, -1, 1))}
 
 ly <- layout_with_fr(g, coords=coords, grid="nogrid")
 
 pdf("RIgraphP14T2_2D.pdf")
 plot(g, layout = ly,
      edge.width = 0.1,
      edge.arrow.width = 0.03,
      vertex.size = 1.5,
      edge.arrow.size = 0.05,
      vertex.size2 = 1.5,
      vertex.label = NA,
      edge.label = NA,
      vertex.label.dist=1)
dev.off() 


ly <- layout_with_fr(g, dim=3, grid="nogrid")
 
pdf("RIgraphP14T2_3D.pdf")
plot(g, layout = ly,
      edge.width = 0.1,
      edge.arrow.width = 0.03,
      vertex.size = 1.5,
      edge.arrow.size = 0.05,
      vertex.size2 = 1.5,
      vertex.label = NA,
      edge.label = NA,
      vertex.label.dist=1)
dev.off() 
