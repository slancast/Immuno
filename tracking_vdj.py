#!/usr/bin/env python
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/
#This will run the program to find at least the distances between the same VDJ recombinations
#of the most common CDR3 sequences across timepoints.

import sys
from repertoire_counting import openfile,mostcommon_tracked

#opening the _pep.csv files
splitT1=openfile(sys.argv[1])
splitT2=openfile(sys.argv[2])
splitT3=openfile(sys.argv[3])

#running the program to determine the most common overlaps between timepoints
mostcommon_tracked(splitT1,splitT2,splitT3)