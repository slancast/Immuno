#!/usr/bin/env python
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/CDR3networks/over_1_copy

#This file will scan through the .gml files to look for CDR3 sequences, in particular
#the most common ones, and do an edit dist on them.

#Run the following to scan over the entire folder
#for i in *.gml
#do
#python mc_CDR3_edit_dist.py $i TRRRRRPGEERAYVDDAFDM
#done

import sys
import Levenshtein

fasta_file = open(sys.argv[1],"r")
CDR3 = sys.argv[2]

def reformat_fasta(fasta_file, CDR3):
	a=None
	while a is None or len(a) > 0:
		a=fasta_file.readline()
		a=a.strip().split()
		if len(a) > 1:
			a[1]=a[1].replace("\"","")
			if Levenshtein.distance(a[1],CDR3) < 4:
				print(a[1])
				print(sys.argv[1])
				
reformat_fasta(fasta_file, CDR3)