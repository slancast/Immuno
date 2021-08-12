#Run the program PlotTree.r
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgM/analyses/shm_models
#qsub -cwd -l h_vmem=5g -pe shm 5 shm_modelsIgM.r.sh

module load r/3.2.5

Rscript shm_modelsIgM.r