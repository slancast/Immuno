
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/



library(tigger)
library(dplyr)
library(fmsb)


germline_ighv <- readIgFasta("/srv/gsfs0/projects/snyder/slancast/repertoire/IgGermlineFromIMGT.fasta", strip_down_name = TRUE, force_caps = TRUE)


print("P2")
IgMP2 <- readChangeoDb("19336_2T1_db-pass_clone-pass_germ-pass.tab")

novel_df = findNovelAlleles(IgMP2, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P2geno = inferGenotype(IgMP2, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

print(as.character(P2geno[1,]$ALLELE))
P2gen <- c()
for (i in 1:nrow(P2geno)) {
allele <- as.character(P2geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P2gen <- c(P2gen, paste(P2geno[i,]$GENE,j,sep="_")) }}
print(P2gen)
write.table(P2gen, "./genfiles/P2gen.tab", sep="\t")


IgMP3 <- readChangeoDb("19346_3T1_db-pass_clone-pass_germ-pass.tab")


IgMP4 <- readChangeoDb("19335_4T1_db-pass_clone-pass_germ-pass.tab")


IgMP5 <- readChangeoDb("19112_5T1_db-pass_clone-pass_germ-pass.tab")


IgMP6 <- readChangeoDb("19119_6T1_db-pass_clone-pass_germ-pass.tab")


IgMP7 <- readChangeoDb("19120_7T1_db-pass_clone-pass_germ-pass.tab")


IgMP8 <- readChangeoDb("19122_8T1_db-pass_clone-pass_germ-pass.tab")


IgMP9 <- readChangeoDb("19121_9T1_db-pass_clone-pass_germ-pass.tab")


IgMP10 <- readChangeoDb("19106_10T1_db-pass_clone-pass_germ-pass.tab")


IgMP11 <- readChangeoDb("19125_11T1_db-pass_clone-pass_germ-pass.tab")


IgMP12 <- readChangeoDb("19110_12T1_db-pass_clone-pass_germ-pass.tab")


IgMP13 <- readChangeoDb("19418_13T1_db-pass_clone-pass_germ-pass.tab")


IgMP14 <- readChangeoDb("19415_14T1_db-pass_clone-pass_germ-pass.tab")


IgMP15 <- readChangeoDb("19422_15T1_db-pass_clone-pass_germ-pass.tab")


IgMP16 <- readChangeoDb("19376_16T1_db-pass_clone-pass_germ-pass.tab")


IgMP17 <- readChangeoDb("19379_17T1_db-pass_clone-pass_germ-pass.tab")



novel_df = findNovelAlleles(IgMP3, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P3geno = inferGenotype(IgMP3, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP4, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P4geno = inferGenotype(IgMP4, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP5, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P5geno = inferGenotype(IgMP5, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP6, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P6geno = inferGenotype(IgMP6, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP7, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P7geno = inferGenotype(IgMP7, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP8, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P8geno = inferGenotype(IgMP8, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP9, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P9geno = inferGenotype(IgMP9, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP10, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P10geno = inferGenotype(IgMP10, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP11, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P11geno = inferGenotype(IgMP11, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP12, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P12geno = inferGenotype(IgMP12, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP13, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P13geno = inferGenotype(IgMP13, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP14, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P14geno = inferGenotype(IgMP14, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP15, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P15geno = inferGenotype(IgMP15, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP16, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P16geno = inferGenotype(IgMP16, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

novel_df = findNovelAlleles(IgMP17, germline_ighv, nproc=1)
novel = selectNovel(novel_df)
P17geno = inferGenotype(IgMP17, find_unmutated = TRUE, germline_db = germline_ighv, novel_df = novel_df) #Requires the novel allele calls

combined_geno <- rbind(P2geno,P3geno,P4geno,P5geno,P6geno,P7geno,P8geno,P9geno,P10geno,P11geno,P12geno,P13geno,P14geno,P15geno,P16geno,P17geno)

print("combined")

alleles <- c()
print(combined_geno[1,]$ALLELE)

for (i in 1:nrow(combined_geno)) {
allele <- as.character(combined_geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
alleles <- c(alleles, paste(combined_geno[i,]$GENE,j,sep="_")) }}
alleles <- unique(alleles)
write.table(alleles, "./genfiles/alleles.tab", sep="\t")
print(alleles)

print("P3geno")

P3gen <- c()
for (i in 1:nrow(P3geno)) {
allele <- as.character(P3geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P3gen <- c(P3gen, paste(P3geno[i,]$GENE,j,sep="_")) }}
write.table(P3gen, "./genfiles/P3gen.tab", sep="\t")

print("P4geno")

P4gen <- c()
for (i in 1:nrow(P4geno)) {
allele <- as.character(P4geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P4gen <- c(P4gen, paste(P4geno[i,]$GENE,j,sep="_")) }}
write.table(P4gen, "./genfiles/P4gen.tab", sep="\t")

print("P5geno")

P5gen <- c()
for (i in 1:nrow(P5geno)) {
allele <- as.character(P5geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P5gen <- c(P5gen, paste(P5geno[i,]$GENE,j,sep="_")) }}
write.table(P5gen, "./genfiles/P5gen.tab", sep="\t")

print("P6geno")

P6gen <- c()
for (i in 1:nrow(P6geno)) {
allele <- as.character(P6geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P6gen <- c(P6gen, paste(P6geno[i,]$GENE,j,sep="_")) }}
write.table(P6gen, "./genfiles/P6gen.tab", sep="\t")

print("P7geno")

P7gen <- c()
for (i in 1:nrow(P7geno)) {
allele <- as.character(P7geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P7gen <- c(P7gen, paste(P7geno[i,]$GENE,j,sep="_")) }}
write.table(P7gen, "./genfiles/P7gen.tab", sep="\t")

print("P8geno")

P8gen <- c()
for (i in 1:nrow(P8geno)) {
allele <- as.character(P8geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P8gen <- c(P8gen, paste(P8geno[i,]$GENE,j,sep="_")) }}
write.table(P8gen, "./genfiles/P8gen.tab", sep="\t")

print("P9geno")

P9gen <- c()
for (i in 1:nrow(P9geno)) {
allele <- as.character(P9geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P9gen <- c(P9gen, paste(P9geno[i,]$GENE,j,sep="_")) }}
write.table(P9gen, "./genfiles/P9gen.tab", sep="\t")

print("P10geno")

P10gen <- c()
for (i in 1:nrow(P10geno)) {
allele <- as.character(P10geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P10gen <- c(P10gen, paste(P10geno[i,]$GENE,j,sep="_")) }}
write.table(P10gen, "./genfiles/P10gen.tab", sep="\t")


print("P11geno")

P11gen <- c()
for (i in 1:nrow(P11geno)) {
allele <- as.character(P11geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P11gen <- c(P11gen, paste(P11geno[i,]$GENE,j,sep="_")) }}
write.table(P11gen, "./genfiles/P11gen.tab", sep="\t")

print("P12geno")

P12gen <- c()
for (i in 1:nrow(P12geno)) {
allele <- as.character(P12geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P12gen <- c(P12gen, paste(P12geno[i,]$GENE,j,sep="_")) }}
write.table(P12gen, "./genfiles/P12gen.tab", sep="\t")

print("P13geno")

P13gen <- c()
for (i in 1:nrow(P13geno)) {
allele <- as.character(P13geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P13gen <- c(P13gen, paste(P13geno[i,]$GENE,j,sep="_")) }}
write.table(P13gen, "./genfiles/P13gen.tab", sep="\t")

print("P14geno")

P14gen <- c()
for (i in 1:nrow(P14geno)) {
allele <- as.character(P14geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P14gen <- c(P14gen, paste(P14geno[i,]$GENE,j,sep="_")) }}
write.table(P14gen, "./genfiles/P14gen.tab", sep="\t")

print("P15geno")

P15gen <- c()
for (i in 1:nrow(P15geno)) {
allele <- as.character(P15geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P15gen <- c(P15gen, paste(P15geno[i,]$GENE,j,sep="_")) }}
write.table(P15gen, "./genfiles/P15gen.tab", sep="\t")

print("P16geno")

P16gen <- c()
for (i in 1:nrow(P16geno)) {
allele <- as.character(P16geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P16gen <- c(P16gen, paste(P16geno[i,]$GENE,j,sep="_")) }}
write.table(P16gen, "./genfiles/P16gen.tab", sep="\t")

print("P17geno")

P17gen <- c()
for (i in 1:nrow(P17geno)) {
allele <- as.character(P17geno[i,]$ALLELE)
allele <- strsplit(allele,",")
allele <- allele[[1]]
for (j in allele){
P17gen <- c(P17gen, paste(P17geno[i,]$GENE,j,sep="_")) }}
write.table(P17gen, "./genfiles/P17gen.tab", sep="\t")


for (entry in alleles) {
#Diseased with allele
a <- 0

#Diseased without allele
b <- 0

#Allele but healthy
c <- 0

#No allele healthy
d <- 0
if (any(entry==P2gen)==TRUE) {c <- c+1}
else { d <-d+1}
if (any(entry==P3gen)==TRUE) {a <- a+1}
else { b <-b+1}
if (any(entry==P4gen)==TRUE) {a <- a+1}
else { b <-b+1}
if (any(entry==P5gen)==TRUE) {a <- a+1}
else { b <-b+1}
if (any(entry==P6gen)==TRUE) {c <- c+1}
else { d <-d+1}
if (any(entry==P7gen)==TRUE) {c <- c+1}
else { d <-d+1}
if (any(entry==P8gen)==TRUE) {a <- a+1}
else { b <-b+1}
if (any(entry==P9gen)==TRUE) {a <- a+1}
else { b <-b+1}
if (any(entry==P10gen)==TRUE) {c <- c+1}
else { d <-d+1}
if (any(entry==P11gen)==TRUE) {c <- c+1}
else { d <-d+1}
if (any(entry==P12gen)==TRUE) {a <- a+1}
else { b <-b+1}
if (any(entry==P13gen)==TRUE) {c <- c+1}
else { d <-d+1}
if (any(entry==P14gen)==TRUE) {c <- c+1}
else { d <-d+1}
if (any(entry==P15gen)==TRUE) {a <- a+1}
else { b <-b+1}
if (any(entry==P16gen)==TRUE) {a <- a+1}
else { b <-b+1}
if (any(entry==P17gen)==TRUE) {c <- c+1}
else { d <-d+1}

print(entry)
res <- oddsratio(a, b, c, d, conf.level=0.95) 
str(res)
print(res)

}