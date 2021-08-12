#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTcombined/analyses/mutation_freq


module load r/3.2.5

module load python/3.4

python3 saving_cdr3.py /srv/gsfs0/projects/snyder/slancast/repertoire/p2t119336/19336_pep.csv /srv/gsfs0/projects/snyder/slancast/repertoire/p2t219332/19332_pep.csv /srv/gsfs0/projects/snyder/slancast/repertoire/p2t319330/19330_pep.csv

#Rscript mutation_frequency.r 

python3 mutation_frequency.py

#Rscript mutation_frequency_total_plot.r
