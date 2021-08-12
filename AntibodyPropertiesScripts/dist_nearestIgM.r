#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgM/analyses/dist_nearest
#qsub -cwd -l h_vmem=5g -pe shm 5 dist_nearest.r.sh

library(alakazam)
library(shazam)
library(ggplot2)

Subject <- Sys.getenv(c("var"))

# Read in database file
db <- readChangeoDb(paste("../../",Subject,"T1_db-pass_clone-pass_germ-pass.tab",sep=""))
# Calculate distance to nearest neighbor
db <- distToNearest(db, model="hs1f", symmetry="min")
# Plot resulting histogram with vertical threshold line
p1 <- ggplot() + theme_bw() + 
ggtitle("Distance to nearest clone using hs1f metric") + xlab("hs1f Distance") +
geom_histogram(data=db, aes(x=DIST_NEAREST), binwidth=0.025, 
fill="steelblue", color="white") + 
geom_vline(xintercept=0.155, linetype=2, color="red")
ggsave(paste(Subject,"IgMT1.pdf",sep=""))

# Read in database file
db <- readChangeoDb(paste("../../",Subject,"T2_db-pass_clone-pass_germ-pass.tab",sep=""))
# Calculate distance to nearest neighbor
db <- distToNearest(db, model="hs1f", symmetry="min")
# Plot resulting histogram with vertical threshold line
p1 <- ggplot() + theme_bw() +
ggtitle("Distance to nearest clone using hs1f metric") + xlab("hs1f Distance") +
geom_histogram(data=db, aes(x=DIST_NEAREST), binwidth=0.025,
fill="steelblue", color="white") +
geom_vline(xintercept=0.155, linetype=2, color="red")
ggsave(paste(Subject,"IgMT2.pdf",sep=""))

# Read in database file
db <- readChangeoDb(paste("../../",Subject,"T3_db-pass_clone-pass_germ-pass.tab",sep=""))
# Calculate distance to nearest neighbor
db <- distToNearest(db, model="hs1f", symmetry="min")
# Plot resulting histogram with vertical threshold line
p1 <- ggplot() + theme_bw() +
ggtitle("Distance to nearest clone using hs1f metric") + xlab("hs1f Distance") +
geom_histogram(data=db, aes(x=DIST_NEAREST), binwidth=0.025,
fill="steelblue", color="white") +
geom_vline(xintercept=0.155, linetype=2, color="red")
ggsave(paste(Subject,"IgMT3.pdf",sep=""))