#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgE/analyses/mutation_frequency
#qsub -cwd -l h_vmem=2g -pe shm 5 -l h_rt=168:00:00 -l s_rt=168:00:00 shazam_mutation_frequencyIgE.r.sh


module load r/3.2.5

module load python/3.4

Rscript mutation_frequencyIgE.r

python3 mutation_frequencyIgE.py

Rscript MutationFrequencyPlotsIgE.r

#cat shazam_mutation_frequencyIgE.r

#Rscript shazam_mutation_frequencyIgE.r