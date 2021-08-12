#/srv/gsfs0/projects/snyder/slancast/IMGT_analyses
#qsub -cwd -l h_vmem=5g -pe shm 5 dist_nearest.r.sh

module load r/3.3.1 

Rscript /srv/gsfs0/projects/snyder/slancast/repertoire/dist_nearest.r