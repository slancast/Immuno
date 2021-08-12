#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/rigraph/igraph
 
 library(igraph)
 
 g<-read.graph("P17T3.gml",format=c("gml"))
 
 print("graph read")
 
 ly <- layout_with_fr(g,grid="nogrid")
 
 print("layout made")
 
 pdf("RiGraphP17T3.pdf")
 plot(g, layout = ly,
      edge.width = 0.1,
      edge.arrow.width = 0.03,
      vertex.size = 0.15,
      edge.arrow.size = 0.05,
      vertex.size2 = 0.1,
      vertex.label = NA,
      edge.label = NA,
      vertex.label.dist=1,
      vertex.shape="circle",
      vertex.color="black",
      vertex.frame.color = NA)
dev.off() 