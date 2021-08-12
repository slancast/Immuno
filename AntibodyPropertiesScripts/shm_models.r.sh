#Run the program PlotTree.r
#/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/analyses/shm_models
#qsub -cwd -l h_vmem=5g -pe shm 5 shm_models.r.sh

module load r/3.2.5

Rscript /srv/gsfs0/projects/snyder/slancast/repertoire/shm_models.r