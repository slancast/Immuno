#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgG/analyses/selection
#qsub -cwd -l h_vmem=20g -pe shm 5 shazam_shell_scriptsIgG.r.sh

module load r/3.2.5

Rscript shazam_scriptsIgG.r