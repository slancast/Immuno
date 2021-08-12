#/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/analyses/dist_nearest
#qsub -cwd -l h_vmem=5g -pe shm 5 dist_nearestIgD.r.sh

module load r/3.2.5

Rscript dist_nearestIgD.r