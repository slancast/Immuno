#Run the program diversity_abudance.r
#/srv/gsfs0/projects/snyder/slancast/IMGT_analyses
#qsub -cwd -l h_vmem=15g -pe shm 5 diversity_abudance.r.sh

module load r/3.3.1

Rscript /srv/gsfs0/projects/snyder/slancast/repertoire/diversity_abudance.r