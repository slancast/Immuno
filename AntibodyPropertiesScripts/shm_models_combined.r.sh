#Run the program PlotTree.r
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTcombined/shm_models
#qsub -cwd -l h_vmem=10g -pe shm 5 -l h_rt=168:00:00 -l s_rt=168:00:00 shm_models_combined.r.sh

module load r/3.2.5

Rscript shm_models_combined.r