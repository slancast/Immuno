#This file will simply save the most common CDR3 sequences for a particular file. 
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTcombined/analyses/mutation_freq

import sys
import numpy as np
from repertoire_counting import mostcommonrep,mostcommon_nuc_in_CDR3,openfile
import os
import csv

#Need to find the most common CDR3 sequences using the irepertoire file of course
splitT1 = openfile(sys.argv[1])

most_common_CDR3_T1 = mostcommonrep(splitT1)
most_common_CDR3_T1 = most_common_CDR3_T1[0]
print(most_common_CDR3_T1)

nucs_in_CDR3 = mostcommon_nuc_in_CDR3(splitT1,most_common_CDR3_T1)

output = open("nucs_in_most_common_CDR3_"+str(os.environ['var'])+"t1.csv","w")

for entry in nucs_in_CDR3:
	for i in entry:
		output.write(i)
		output.write(",")
	output.write("\n")

##################################################################################
#																				 #
#																				 #
#										T2										 #
#																				 #
#																				 #
##################################################################################	

splitT2 = openfile(sys.argv[2])

most_common_CDR3_T2 = mostcommonrep(splitT2)
most_common_CDR3_T2 = most_common_CDR3_T2[0]
print(most_common_CDR3_T2)

nucs_in_CDR3 = mostcommon_nuc_in_CDR3(splitT2,most_common_CDR3_T2)

output = open("nucs_in_most_common_CDR3_"+str(os.environ['var'])+"t2.csv","w")

for entry in nucs_in_CDR3:
	for i in entry:
		output.write(i)
		output.write(",")
	output.write("\n")

##################################################################################
#																				 #
#																				 #
#										T3										 #
#																				 #
#																				 #
##################################################################################	


splitT3 = openfile(sys.argv[3])

most_common_CDR3_T3 = mostcommonrep(splitT3)
most_common_CDR3_T3 = most_common_CDR3_T3[0]
print(most_common_CDR3_T3)

nucs_in_CDR3 = mostcommon_nuc_in_CDR3(splitT3,most_common_CDR3_T3)

output = open("nucs_in_most_common_CDR3_"+str(os.environ['var'])+"t3.csv","w")

for entry in nucs_in_CDR3:
	for i in entry:
		output.write(i)
		output.write(",")
	output.write("\n")