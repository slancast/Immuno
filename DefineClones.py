#This file will turn the IMGT sequences into things that are Change-o formatted
#/srv/gsfs0/projects/snyder/slancast/repertoire/Change-o
#qsub -cwd -l h_vmem=10g IMGT2Change-o.sh



module load python3/3.4

python3 kleinstein-changeo-38b5f8ddf5f0/bin/DefineClones.py -d RoughTrial4_db-pass.tab --model hs1f --norm none --sym average --link average --norm none