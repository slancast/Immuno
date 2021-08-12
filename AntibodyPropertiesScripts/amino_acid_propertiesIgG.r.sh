#Run the program amino_acid_properties.r
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgG/analyses/aa_properties
#qsub -cwd -l h_vmem=5g -pe shm 5 amino_acid_propertiesIgG.r.sh

module load r/3.2.5

Rscript amino_acid_propertiesIgG.r