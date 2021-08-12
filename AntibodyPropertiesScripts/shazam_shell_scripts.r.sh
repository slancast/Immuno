#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/analyses/selection
#qsub -cwd -l h_vmem=20g -pe shm 5 shazam_shell_scripts.r.sh

module load r/3.2.5

Rscript /srv/gsfs0/projects/snyder/slancast/repertoire/shazam_shell_scripts.r