#Run the program diversity_abudance.r
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/analyses/diversity_abundance
#qsub -cwd -l h_vmem=15g -pe shm 5 diversity_abudanceIgG.r.sh

module load r/3.2.5

Rscript diversity_abundanceIgG.r