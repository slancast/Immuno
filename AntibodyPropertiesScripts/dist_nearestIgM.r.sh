#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgM/analyses/dist_nearest
#qsub -cwd -l h_vmem=5g -pe shm 5 dist_nearestIgM.r.sh

module load r/3.2.5

Rscript dist_nearestIgM.r