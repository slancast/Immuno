#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/69-017/mutation_freq
#qsub -cwd -l h_vmem=2g -pe shm 5 -l h_rt=168:00:00 -l s_rt=168:00:00 shazam_mutation_frequencyIgD.r.sh


module load r/3.2.5

module load python/3.4

Rscript mutation_frequencyIgD.r

python3 mutation_frequencyIgD.py

Rscript MutationFrequencyPlotsIgD.r

#cat shazam_mutation_frequencyIgD.r

#Rscript shazam_mutation_frequencyIgD.r