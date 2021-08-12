#!/usr/bin/env python
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/
#I want this program to find the change from 1 to 2 and then from 2 to 3 to see if more antibodies stick around from 2 to 3.

import sys
import numpy as np
from collections import Counter


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

filehandle = open(sys.argv[1], "r")
filestring = filehandle.read()
filelist = filestring.split("\n")
split = []
for entry in filelist:
    entry=entry.split(",")
    split.append(entry)
 
##################################################################################
# creating lists of total CDR and VD recombinations, and then finding the most common members
##################################################################################
    
CDR3 = []
VDJtotal = []

for entry in split:
	if entry[0] != '*' and len(entry) > 12:
		CDR3.append(entry[0])
		VDJtotal.append(str(entry[1]) + str(entry[6]) + str(entry[11]))

print("Total reads T1: ")
print(len(split))
count = Counter(CDR3)

most_common_CDR3 = [count.most_common()[0][0],count.most_common()[1][0],count.most_common()[2][0],count.most_common()[3][0]]
print("Most common T1 CDR3 seqs:")
print(most_common_CDR3)

print("T1 top three most common vdj recombinations:")
count_VDJ = Counter(VDJtotal)
print(count_VDJ.most_common()[0])
print(count_VDJ.most_common()[1])
print(count_VDJ.most_common()[2])
print(count_VDJ.most_common()[3])
print(count_VDJ.most_common()[4])
most_common_vdj = [count_VDJ.most_common()[0][0],count_VDJ.most_common()[1][0],count_VDJ.most_common()[2][0],count_VDJ.most_common()[3][0]]

##################################################################################
# finding the most common vdj sequences in the CDR3 sequences.
##################################################################################

output=[]
vdj1 = []
vdj2 = []
vdj3 = []
vdj4 = []
for entry in split:
	if entry[0] in most_common_CDR3:
		output.append(entry)
	if most_common_CDR3[0] == entry[0]:
		vdj1.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	if most_common_CDR3[1] == entry[0]:
		vdj2.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	if most_common_CDR3[2] == entry[0]:
		vdj3.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	if most_common_CDR3[3] == entry[0]:
		vdj4.append(str(entry[1]) + str(entry[6]) + str(entry[11]))

print("T1 counts of top 4 cdr3 seqs:")
print(len(vdj1))
print(len(vdj2))
print(len(vdj3))
print(len(vdj4))
count_vdj1 = Counter(vdj1)#Finding what are the most common vdj arrangements for each CDR3 sequence.
count_vdj2 = Counter(vdj2)
count_vdj3 = Counter(vdj3)
count_vdj4 = Counter(vdj4)		

#saving first two most common vdj combinations for every CDR3 sequence
mc_vdj1=count_vdj1.most_common()[0][0]
smc_vdj1=count_vdj1.most_common()[1][0]
mc_vdj2=count_vdj2.most_common()[0][0]
smc_vdj2=count_vdj2.most_common()[1][0]
mc_vdj3=count_vdj3.most_common()[0][0]
smc_vdj3=count_vdj3.most_common()[1][0]
mc_vdj4=count_vdj4.most_common()[0][0]
smc_vdj4=count_vdj4.most_common()[1][0]

print("T2 top two vdj recombinations for each of the top 4 CDR3 sequences:")
print(mc_vdj1)
print(smc_vdj1)
print(mc_vdj2)
print(smc_vdj2)
print(mc_vdj3)
print(smc_vdj3)
print(mc_vdj4)
print(smc_vdj4)

#Don't need to save for now
#output = np.array(output)
#np.savetxt("./vdj_most_common_CDR3.csv", output, delimiter=",", fmt="%s")
##################################################################################
# opening T2 to find the overlap in CDR3 and VDJ sequences
##################################################################################

filehandle = open(sys.argv[2], "r")
filestring = filehandle.read()
filelist = filestring.split("\n")
split = []
for entry in filelist:
    entry=entry.split(",")
    split.append(entry)
    
print("Total reads T2: ")
print(len(split))



#In the second timepoint finding the sequences that correspond to each of the most common vdj sequence
#for each of the most common CDR3 sequences.
counter_mc_vdj1 = 0
counter_smc_vdj1 = 0  
counter_mc_vdj2 = 0  
counter_smc_vdj2 = 0
counter_mc_vdj3 = 0
counter_smc_vdj3 = 0  
counter_mc_vdj4 = 0  
counter_smc_vdj4 = 0   
for entry in split:
	if mc_vdj1 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_mc_vdj1 = counter_mc_vdj1 + 1
	if smc_vdj1 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_smc_vdj1 = counter_smc_vdj1 + 1
	if mc_vdj2 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_mc_vdj2 = counter_mc_vdj2 + 1
	if smc_vdj2 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_smc_vdj2 = counter_smc_vdj2 + 1
	if mc_vdj3 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_mc_vdj3 = counter_mc_vdj3 + 1
	if smc_vdj3 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_smc_vdj3 = counter_smc_vdj3 + 1
	if mc_vdj4 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_mc_vdj4 = counter_mc_vdj4 + 1
	if smc_vdj4 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_smc_vdj4 = counter_smc_vdj4 + 1

print("Number of overlaps in T2 for the top two vdj recombinations for each of the top 4 CDR3 sequences:")
print(counter_mc_vdj1)
print(counter_smc_vdj1)
print(counter_mc_vdj2)
print(counter_smc_vdj2)
print(counter_mc_vdj3)
print(counter_smc_vdj3)
print(counter_mc_vdj4)
print(counter_smc_vdj4)

##########################################
# now this is going to redo it from 2 to 3
##########################################

##################################################################################
# creating lists of total CDR and VD recombinations, and then finding the most common members
##################################################################################

CDR3 = []
VDJtotal = []

for entry in split:
	if entry[0] != '*' and len(entry) > 12:
		CDR3.append(entry[0])
		VDJtotal.append(str(entry[1]) + str(entry[6]) + str(entry[11]))

count = Counter(CDR3)

most_common_CDR3 = [count.most_common()[0][0],count.most_common()[1][0],count.most_common()[2][0],count.most_common()[3][0]]
print("Most common T2 CDR3 seqs:")
print(most_common_CDR3)

print("T2 top five most common vdj recombinations:")
count_VDJ = Counter(VDJtotal)
print(count_VDJ.most_common()[0])
print(count_VDJ.most_common()[1])
print(count_VDJ.most_common()[2])
print(count_VDJ.most_common()[3])
print(count_VDJ.most_common()[4])
most_common_vdj = [count_VDJ.most_common()[0][0],count_VDJ.most_common()[1][0],count_VDJ.most_common()[2][0],count_VDJ.most_common()[3][0]]

##################################################################################
# finding the most common vdj sequences in the CDR3 sequences.
##################################################################################

output=[]
vdj1 = []
vdj2 = []
vdj3 = []
vdj4 = []
for entry in split:
	if entry[0] in most_common_CDR3:
		output.append(entry)
	if most_common_CDR3[0] == entry[0]:
		vdj1.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	if most_common_CDR3[1] == entry[0]:
		vdj2.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	if most_common_CDR3[2] == entry[0]:
		vdj3.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	if most_common_CDR3[3] == entry[0]:
		vdj4.append(str(entry[1]) + str(entry[6]) + str(entry[11]))

print("T2 counts of top 4 cdr3 seqs:")
print(len(vdj1))
print(len(vdj2))
print(len(vdj3))
print(len(vdj4))
count_vdj1 = Counter(vdj1)#Finding what are the most common vdj arrangements for each CDR3 sequence.
count_vdj2 = Counter(vdj2)
count_vdj3 = Counter(vdj3)
count_vdj4 = Counter(vdj4)		

#saving first two most common vdj combinations for every CDR3 sequence
mc_vdj1=count_vdj1.most_common()[0][0]
smc_vdj1=count_vdj1.most_common()[1][0]
mc_vdj2=count_vdj2.most_common()[0][0]
smc_vdj2=count_vdj2.most_common()[1][0]
mc_vdj3=count_vdj3.most_common()[0][0]
smc_vdj3=count_vdj3.most_common()[1][0]
mc_vdj4=count_vdj4.most_common()[0][0]
smc_vdj4=count_vdj4.most_common()[1][0]

print("T2 top two vdj recombinations for each of the top 4 CDR3 sequences:")
print(mc_vdj1)
print(smc_vdj1)
print(mc_vdj2)
print(smc_vdj2)
print(mc_vdj3)
print(smc_vdj3)
print(mc_vdj4)
print(smc_vdj4)

##################################################################################
# opening T3 to find the overlap in CDR3 and VDJ sequences
##################################################################################

filehandle = open(sys.argv[3], "r")
filestring = filehandle.read()
filelist = filestring.split("\n")
split = []
for entry in filelist:
    entry=entry.split(",")
    split.append(entry)

#In the second timepoint finding the sequences that correspond to each of the most common vdj sequence
#for each of the most common CDR3 sequences.
counter_mc_vdj1 = 0
counter_smc_vdj1 = 0  
counter_mc_vdj2 = 0  
counter_smc_vdj2 = 0
counter_mc_vdj3 = 0
counter_smc_vdj3 = 0  
counter_mc_vdj4 = 0  
counter_smc_vdj4 = 0   
for entry in split:
	if mc_vdj1 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_mc_vdj1 = counter_mc_vdj1 + 1
	if smc_vdj1 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_smc_vdj1 = counter_smc_vdj1 + 1
	if mc_vdj2 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_mc_vdj2 = counter_mc_vdj2 + 1
	if smc_vdj2 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_smc_vdj2 = counter_smc_vdj2 + 1
	if mc_vdj3 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_mc_vdj3 = counter_mc_vdj3 + 1
	if smc_vdj3 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_smc_vdj3 = counter_smc_vdj3 + 1
	if mc_vdj4 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_mc_vdj4 = counter_mc_vdj4 + 1
	if smc_vdj4 == str(entry[1]) + str(entry[6]) + str(entry[11]):
		counter_smc_vdj4 = counter_smc_vdj4 + 1

print("Number of overlaps in T3 for the top two vdj recombinations for each of the top 4 CDR3 sequences:")
print(counter_mc_vdj1)
print(counter_smc_vdj1)
print(counter_mc_vdj2)
print(counter_smc_vdj2)
print(counter_mc_vdj3)
print(counter_smc_vdj3)
print(counter_mc_vdj4)
print(counter_smc_vdj4)


print("Total reads T3: ")
print(len(split))
CDR3 = []
VDJtotal = []

for entry in split:
	if entry[0] != '*' and len(entry) > 12:
		CDR3.append(entry[0])
		VDJtotal.append(str(entry[1]) + str(entry[6]) + str(entry[11]))

most_common_CDR3 = [count.most_common()[0][0],count.most_common()[1][0],count.most_common()[2][0],count.most_common()[3][0]]
print("Most common T3 CDR3 seqs:")
print(most_common_CDR3)

print("T3 top three most common vdj recombinations:")
count_VDJ = Counter(VDJtotal)
print(count_VDJ.most_common()[0])
print(count_VDJ.most_common()[1])
print(count_VDJ.most_common()[2])
print(count_VDJ.most_common()[3])
print(count_VDJ.most_common()[4])
most_common_vdj = [count_VDJ.most_common()[0][0],count_VDJ.most_common()[1][0],count_VDJ.most_common()[2][0],count_VDJ.most_common()[3][0]]

##################################################################################
# finding the most common vdj sequences in the CDR3 sequences.
##################################################################################

output=[]
vdj1 = []
vdj2 = []
vdj3 = []
vdj4 = []
for entry in split:
	if entry[0] in most_common_CDR3:
		output.append(entry)
	if most_common_CDR3[0] == entry[0]:
		vdj1.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	if most_common_CDR3[1] == entry[0]:
		vdj2.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	if most_common_CDR3[2] == entry[0]:
		vdj3.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	if most_common_CDR3[3] == entry[0]:
		vdj4.append(str(entry[1]) + str(entry[6]) + str(entry[11]))

print("T3 counts of top 4 cdr3 seqs:")
print(len(vdj1))
print(len(vdj2))
print(len(vdj3))
print(len(vdj4))

