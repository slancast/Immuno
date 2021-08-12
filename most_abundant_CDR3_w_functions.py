#!/usr/bin/env python
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/
#I want this program to find the change from 1 to 2 and then from 2 to 3 to see if more antibodies stick around from 2 to 3.

import sys
import numpy as np
from collections import Counter
from repertoire_counting import openfile,mostcommonrep
from repertoire_counting import mostcommon_vdj_in_CDR3
from repertoire_counting import overlap_rep

print("###################")
print("###################")
print("###################")
print(sys.argv[4])
print("###################")
print("###################")
print("###################")

##################################################################################
# sys.argv[1] should be the timepoint that you want to count the CDR3 sequences
##################################################################################

split =  openfile(sys.argv[1])
 
##################################################################################
# creating lists of total CDR and VD recombinations, and then finding the most common members
##################################################################################

most_common = mostcommonrep(split)
 
##################################################################################
# finding the most common vdj sequences in the CDR3 sequences.
##################################################################################

mc_vdj_output = mostcommon_vdj_in_CDR3(split,most_common[0])

#Don't need to save for now
#output = np.array(output)
#np.savetxt("./vdj_most_common_CDR3.csv", output, delimiter=",", fmt="%s")
##################################################################################
# opening T2 to find the overlap in CDR3 and VDJ sequences
##################################################################################

split =  openfile(sys.argv[2])
overlap_rep(mc_vdj_output, split, most_common[0], most_common[1])

##########################################
# now this is going to redo it from 2 to 3
##########################################

##################################################################################
# creating lists of total CDR and VD recombinations, and then finding the most common members
##################################################################################

most_common = mostcommonrep(split)

##################################################################################
# finding the most common vdj sequences in the CDR3 sequences.
##################################################################################

mc_vdj_output = mostcommon_vdj_in_CDR3(split,most_common[0])

##################################################################################
# opening T3 to find the overlap in CDR3 and VDJ sequences
##################################################################################

split =  openfile(sys.argv[3])

#In the second timepoint finding the sequences that correspond to each of the most common vdj sequence
#for each of the most common CDR3 sequences.
overlap_rep(mc_vdj_output, split, most_common[0], most_common[1])