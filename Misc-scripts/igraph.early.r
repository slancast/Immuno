#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/

library("igraph")

edges <- read.csv("edgesstring.csv", header=FALSE, stringsAsFactors = FALSE)
edges <- as.matrix(edges)
g <- graph_from_edgelist(edges, directed = FALSE)

fc <-walktrap.community(g, modularity = TRUE, membership = TRUE)
cg <- contract.vertices(g, membership(fc))
E(cg)$weight <- 1
cg2 <- simplify(cg, remove.loops=FALSE)

pdf("plotlarge.pdf")
plot(cg2, margin=.5, layout=layout_with_fr(cg2),edge.label = NA, edge.width = 0.1, vertex.label = NA,vertex.size = 1)
dev.off()