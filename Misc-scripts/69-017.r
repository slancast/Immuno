#

library(tigger)
library(dplyr) 


germline_ighv <- readIgFasta("/srv/gsfs0/projects/snyder/slancast/repertoire/IgGermlineFromIMGT.fasta", strip_down_name = TRUE, force_caps = TRUE)

sample_db <- readChangeoDb("I_IgA_db-pass.tab")

G <- readChangeoDb("I_IgG_db-pass.tab")

M <- readChangeoDb("I_IgM_db-pass.tab")

sample_db <- rbind(sample_db, G, M)
novel_df = findNovelAlleles(sample_db, germline_ighv, nproc=1)#the nproc seems to be entirely necessary for this to work. It will quit without an error.
# Extract and view the rows that contain successful novel allele calls
novel = selectNovel(novel_df)
glimpse(novel)
write.table(novel, file="novel_alleles.tab", sep="\t")