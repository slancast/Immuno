#Creating shazam shm targeting models. Notes are from the website.
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgG/analyses/shm_models

library(alakazam)
library(shazam)
library(ggplot2)

Subject <- Sys.getenv(c("var"))

db <- readChangeoDb(paste("../../",Subject,"IgGT1_db-pass_clone-pass_germ-pass.tab",sep=""))

db_cons <- collapseByClone(db)

# Create substitution model using silent mutations
sub_matrix <- createSubstitutionMatrix(db_cons, 
                                       sequenceColumn="CLONAL_SEQUENCE", 
                                       model="S")
# Create mutability model using silent mutations
mut_matrix <- createMutabilityMatrix(db_cons, sub_matrix, 
                                     sequenceColumn="CLONAL_SEQUENCE", 
                                     model="S")

# Extend models to include ambiguous 5-mers
sub_matrix <- extendSubstitutionMatrix(sub_matrix)
mut_matrix <- extendMutabilityMatrix(mut_matrix)

# Create targeting model matrix from substitution and mutability matrices
tar_matrix <- createTargetingMatrix(sub_matrix, mut_matrix)
# Create targeting model in one step using only silent mutations
model <- createTargetingModel(db, model="S")

pdf(paste('SHM_Mutability_bar',Subject,'T1A.pdf',sep=""))
plotMutability(model, nucleotides="A", style="bar")
dev.off()

pdf(paste('SHM_Mutability_bar',Subject,'T1T.pdf',sep=""))
plotMutability(model, nucleotides="T", style="bar")
dev.off()

pdf(paste('SHM_Mutability_bar',Subject,'T1C.pdf',sep=""))
plotMutability(model, nucleotides="C", style="bar")
dev.off()

pdf(paste('SHM_Mutability_bar',Subject,'T1G.pdf',sep=""))
plotMutability(model, nucleotides="G", style="bar")
dev.off()

db <- readChangeoDb(paste("../../",Subject,"IgGT2_db-pass_clone-pass_germ-pass.tab",sep=""))

db_cons <- collapseByClone(db)

# Create substitution model using silent mutations
sub_matrix <- createSubstitutionMatrix(db_cons, 
                                       sequenceColumn="CLONAL_SEQUENCE", 
                                       model="S")
# Create mutability model using silent mutations
mut_matrix <- createMutabilityMatrix(db_cons, sub_matrix, 
                                     sequenceColumn="CLONAL_SEQUENCE", 
                                     model="S")

# Extend models to include ambiguous 5-mers
sub_matrix <- extendSubstitutionMatrix(sub_matrix)
mut_matrix <- extendMutabilityMatrix(mut_matrix)

# Create targeting model matrix from substitution and mutability matrices
tar_matrix <- createTargetingMatrix(sub_matrix, mut_matrix)
# Create targeting model in one step using only silent mutations
model <- createTargetingModel(db, model="S")

pdf(paste('SHM_Mutability_bar',Subject,'T2A.pdf',sep=""))
plotMutability(model, nucleotides="A", style="bar")
dev.off()

pdf(paste('SHM_Mutability_bar',Subject,'T2T.pdf',sep=""))
plotMutability(model, nucleotides="T", style="bar")
dev.off()

pdf(paste('SHM_Mutability_bar',Subject,'T2C.pdf',sep=""))
plotMutability(model, nucleotides="C", style="bar")
dev.off()

pdf(paste('SHM_Mutability_bar',Subject,'T2G.pdf',sep=""))
plotMutability(model, nucleotides="G", style="bar")
dev.off()

db <- readChangeoDb(paste("../../",Subject,"IgGT3_db-pass_clone-pass_germ-pass.tab",sep=""))

db_cons <- collapseByClone(db)

# Create substitution model using silent mutations
sub_matrix <- createSubstitutionMatrix(db_cons, 
                                       sequenceColumn="CLONAL_SEQUENCE", 
                                       model="S")
# Create mutability model using silent mutations
mut_matrix <- createMutabilityMatrix(db_cons, sub_matrix, 
                                     sequenceColumn="CLONAL_SEQUENCE", 
                                     model="S")

# Extend models to include ambiguous 5-mers
sub_matrix <- extendSubstitutionMatrix(sub_matrix)
mut_matrix <- extendMutabilityMatrix(mut_matrix)

# Create targeting model matrix from substitution and mutability matrices
tar_matrix <- createTargetingMatrix(sub_matrix, mut_matrix)
# Create targeting model in one step using only silent mutations
model <- createTargetingModel(db, model="S")

pdf(paste('SHM_Mutability_bar',Subject,'T3A.pdf',sep=""))
plotMutability(model, nucleotides="A", style="bar")
dev.off()

pdf(paste('SHM_Mutability_bar',Subject,'T3T.pdf',sep=""))
plotMutability(model, nucleotides="T", style="bar")
dev.off()

pdf(paste('SHM_Mutability_bar',Subject,'T3C.pdf',sep=""))
plotMutability(model, nucleotides="C", style="bar")
dev.off()

pdf(paste('SHM_Mutability_bar',Subject,'T3G.pdf',sep=""))
plotMutability(model, nucleotides="G", style="bar")
dev.off()
