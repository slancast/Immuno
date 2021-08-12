#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/69-017/mutation_freq
#qsub -cwd -l h_vmem=2g -pe shm 5 -l h_rt=168:00:00 -l s_rt=168:00:00 shazam_mutation_frequency69017.r.sh


module load r/3.2.5

module load python/3.4

Rscript mutation_frequency69017.r

python3 mutation_frequency69017.py

Rscript MutationFrequencyPlots69017.r

cat shazam_mutation_frequency69017.r

Rscript shazam_mutation_frequency69017.r