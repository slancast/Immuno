#!/usr/bin/env python
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/counting_sequences

import sys
import argparse
import numpy as np
import operator

# sys.argv[1] should be time 1, sys.argv[2] is time 2, and sys.argv[3] is time 2

print("beginning "+str(sys.argv[4]))


print("Extracting data from T1")

filehandle = open(sys.argv[1], "r")
filestring = filehandle.read()
filelist = filestring.split("\n")
split_tm1 = []
for entry in filelist:
    entry=entry.split(",")
    split_tm1.append(entry)

T1vdj = []
T2vdj = []
T3vdj = []

counter = 0
counter1 = 0

#### Creating lists of all vdj combinations

T1Totalreads = 0
for entry in split_tm1:
	if entry[0] != "CDR3(pep)" and len(entry) > 10:
		vdj = str(entry[1]) + str(entry[6]) + str(entry[11])
		T1vdj.append(vdj)
filehandle.close()

print("Extracting data from T2")

filehandle2 = open(sys.argv[2], "r")
filestring2 = filehandle2.read()
filelist2 = filestring2.split("\n")
split_tm2 = []
for entry in filelist2:
    entry=entry.split(",")
    split_tm2.append(entry)
								
T2Totalreads = 0						
for entry in split_tm2:
	if entry[0] != "CDR3(pep)" and len(entry) > 10:
		vdj = str(entry[1]) + str(entry[6]) + str(entry[11])
		T2vdj.append(vdj)
filehandle2.close()

print("Extracting data from T3")

filehandle3 = open(sys.argv[3], "r")
filestring3 = filehandle3.read()
filelist3 = filestring3.split("\n")
split_tm3 = []
for entry in filelist3:
    entry=entry.split(",")
    split_tm3.append(entry)

T3Totalreads = 0			
for entry in split_tm3:
	if entry[0] != "CDR3(pep)" and len(entry) > 10:
		vdj = str(entry[1]) + str(entry[6]) + str(entry[11])
		T3vdj.append(vdj)
	
filehandle3.close()

print("finding overlap") #determining which combinations of vdjs are overlapping between samples. What proportion are overlapping?
print("length T1: " + str(len(T1vdj)))
T1vdj = list(set(T1vdj))
print("Unique vdj: " + str(len(T1vdj)))
print("length T2: " + str(len(T2vdj)))
T2vdj = list(set(T2vdj))
print("Unique vdj: " + str(len(T2vdj)))
print("length T3: " + str(len(T3vdj)))
T3vdj = list(set(T3vdj))
print("Unique vdj: " + str(len(T3vdj)))

T1T2overlap = []
for i in T1vdj:
	if i in T2vdj:
		T1T2overlap.append(i)

#Since there virtually all of the vdj sequences are overlapping saving this is nearly worthless		
'''
#For now I don't need to what is just present in T2 and T3, although I'm sure I will
#T2T3overlap = []		
#for i in T2vdj:
#	if i in T3vdj:
#		T2T3overlap.append(i)

print("T1T2T3overlap")	
T1T2T3overlap = []
for i in  T1T2overlap:
	if i in T3vdj:
		T1T2T3overlap.append(i)
T1T2overlap = []
		
print("T1T2T3done")

#creating the output matrix

output = []
for entry in split_tm1:
	if entry[0] != "CDR3(pep)":
		vdj = str(entry[1]) + str(entry[6]) + str(entry[11])
		if vdj in T1T2T3overlap:
			entry.append("T1")
			output.append(entry)
split_tm1 = []

print("T2")
		
for entry in split_tm2:
	if entry[0] != "CDR3(pep)":
		vdj = str(entry[1]) + str(entry[6]) + str(entry[11])
		if vdj in T1T2T3overlap:
			entry.append("T2")
			output.append(entry)
split_tm2 =[]

print("T3")
			
for entry in split_tm3:
	if entry[0] != "CDR3(pep)":
		vdj = str(entry[1]) + str(entry[6]) + str(entry[11])
		if vdj in T1T2T3overlap:
			entry.append("T3")
			output.append(entry)

	
split_tm3 = []			
print("Total overlapping: " +str(len(output)))		
output = np.array(output)
np.savetxt("./overlapping_vdj_"+sys.argv[4]+".csv", output, delimiter=",", fmt="%s")
'''