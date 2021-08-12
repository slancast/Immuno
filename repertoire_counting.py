#I'm going to try and make this file for my repertoire functions                 
#slancast@scg4.stanford.edu:/home/slancast/.local/lib/python2.7/site-packages
#slancast@scg4.stanford.edu:/home/slancast/.local/lib/python3.4/site-packages
##################################################################################
#																				 #
#																				 #
#																				 #
#																				 #
##################################################################################
#Opening and parsing the _pep.csv files
#Should work for other files. I didn't use something like the csv module just so I have
#Total control and understanding over what I'm doing.
def openfile(argv):
	filehandle = open(argv, "r")
	filestring = filehandle.read()
	filelist = filestring.split("\n")
	split = []
	for entry in filelist:
	    entry=entry.split(",")
	    split.append(entry)
	return split
##################################################################################
#																				 #
#																				 #
#																				 #
#																				 #
##################################################################################
#Finding the most common CDR3 and VDJ sequences in a repertoire dataset.
#Returns a tuple of the list of the two
from collections import Counter
def mostcommonrep(split):
	#Setting lists for counting and counting up the CDR3 and VDJ recombinations
	CDR3 = []
	VDJtotal = []
	
	for entry in split:
		if entry[0] != "CDR3(pep)":
			if entry[0] != '*' and len(entry)>10 and int(entry[23]) > 1:
				CDR3.append(entry[0])
				VDJtotal.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	print("Total reads over 1: ")
	print(len(split))
	
	print("Total VDJ recombinations over 1: ")
	print(len(set(VDJtotal)))
	
	for entry in split:
		if entry[0] != '*' and len(entry)>10:
			CDR3.append(entry[0])
			VDJtotal.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	print("Total reads: ")
	print(len(split))
	
	print("Total VDJ recombinations: ")
	print(len(set(VDJtotal)))
	
	count = Counter(CDR3)

	#Using Counter to find the most common of the CDR3 and VDR recombinations
	most_common_CDR3 = [count.most_common()[0][0],count.most_common()[1][0],count.most_common()[2][0],count.most_common()[3][0]]
	print("Most common CDR3 seqs:")
	print(count.most_common()[0:4])
	print("Top five most common vdj recombinations:")
	count_VDJ = Counter(VDJtotal)
	print(count_VDJ.most_common()[0])
	print(count_VDJ.most_common()[1])
	print(count_VDJ.most_common()[2])
	print(count_VDJ.most_common()[3])
	print(count_VDJ.most_common()[4])
	most_common_vdj = [count_VDJ.most_common()[0][0],count_VDJ.most_common()[1][0],count_VDJ.most_common()[2][0],count_VDJ.most_common()[3][0],count_VDJ.most_common()[4][0]]
	return most_common_CDR3,most_common_vdj
##################################################################################
#																				 #
#																				 #
#																				 #
#																				 #
##################################################################################
#This will pull out the top two most common vdjs from the most_common_CDR3s
def mostcommon_vdj_in_CDR3(split,most_common_CDR3):
	mc_vdj_output=[]
	vdj1 = []
	vdj2 = []
	vdj3 = []
	vdj4 = []
	#Scanning through the list of repertoire sequences, finding the VDJ recombinations associated with each CDR3 sequence
	for entry in split:
		if most_common_CDR3[0] == entry[0]:
			vdj1.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
		if most_common_CDR3[1] == entry[0]:
			vdj2.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
		if most_common_CDR3[2] == entry[0]:
			vdj3.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
		if most_common_CDR3[3] == entry[0]:
			vdj4.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	
	#Printing the number of CDR3 sequences using the length of the each vdj list as a surrogate
	#These lists should include redundant entries so that the length is reflective of the number of 
	#CDR3s counted
	print("Counts of top 4 CDR3 seqs:")
	print(len(vdj1))
	print(len(vdj2))
	print(len(vdj3))
	print(len(vdj4))
	
	#Finding what are the most common vdj arrangements for each CDR3 sequence.
	count_vdj1 = Counter(vdj1)
	count_vdj2 = Counter(vdj2)
	count_vdj3 = Counter(vdj3)
	count_vdj4 = Counter(vdj4)		
	
	print(count_vdj2)
	print(count_vdj3)
	#Saving first two most common vdj combinations for every CDR3 sequence
	mc_vdj1=count_vdj1.most_common()[0][0]
	smc_vdj1=count_vdj1.most_common()[1][0]
	mc_vdj2=count_vdj2.most_common()[0][0]
	smc_vdj2=count_vdj2.most_common()[1][0]
	mc_vdj3=count_vdj3.most_common()[0][0]
	smc_vdj3=count_vdj3.most_common()[1][0]
	mc_vdj4=count_vdj4.most_common()[0][0]
	smc_vdj4=count_vdj4.most_common()[1][0]
	
	#Printing for the record
	print("Top two vdj recombinations for each of the top 4 CDR3 sequences:")
	print(mc_vdj1)
	print(smc_vdj1)
	print(mc_vdj2)
	print(smc_vdj2)
	print(mc_vdj3)
	print(smc_vdj3)
	print(mc_vdj4)
	print(smc_vdj4)
	mc_vdj_output=[mc_vdj1,smc_vdj1,mc_vdj2,smc_vdj2,mc_vdj3,smc_vdj3,mc_vdj4,smc_vdj4]
	
	return mc_vdj_output
##################################################################################
#																				 #
#																				 #
#																				 #
#																				 #
##################################################################################
#In this function I will find the overlap of the VDJs and CDR3s with a second time point
def overlap_rep(mc_vdj_output,split,most_common_CDR3,most_common_vdj):
	#Setting all the counters to 0 of the values I'm interested in
	counter_mc_vdj1 = 0
	counter_smc_vdj1 = 0  
	counter_mc_vdj2 = 0  
	counter_smc_vdj2 = 0
	counter_mc_vdj3 = 0
	counter_smc_vdj3 = 0  
	counter_mc_vdj4 = 0  
	counter_smc_vdj4 = 0 
	counter_vdj1 = 0
	counter_vdj2 = 0
	counter_vdj3 = 0
	counter_vdj4 = 0
	counter_vdj5 = 0
	counter_CDR3_1 = 0
	counter_CDR3_2 = 0
	counter_CDR3_3 = 0
	counter_CDR3_4 = 0  
	#Scanning through a list of repertoire sequences in order to count each value
	for entry in split:
		if mc_vdj_output[0] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_mc_vdj1 = counter_mc_vdj1 + 1
		if mc_vdj_output[1] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_smc_vdj1 = counter_smc_vdj1 + 1
		if mc_vdj_output[2] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_mc_vdj2 = counter_mc_vdj2 + 1
		if mc_vdj_output[3] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_smc_vdj2 = counter_smc_vdj2 + 1
		if mc_vdj_output[4] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_mc_vdj3 = counter_mc_vdj3 + 1
		if mc_vdj_output[5] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_smc_vdj3 = counter_smc_vdj3 + 1
		if mc_vdj_output[6] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_mc_vdj4 = counter_mc_vdj4 + 1
		if mc_vdj_output[7] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_smc_vdj4 = counter_smc_vdj4 + 1
		if most_common_vdj[0] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_vdj1 = counter_vdj1 + 1
		if most_common_vdj[1] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_vdj2 = counter_vdj2 + 1
		if most_common_vdj[2] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_vdj3 = counter_vdj3 + 1
		if most_common_vdj[3] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_vdj4 = counter_vdj4 + 1
		if most_common_vdj[4] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_vdj5 = counter_vdj5 + 1
		if most_common_CDR3[0] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_CDR3_1 = counter_CDR3_1 + 1
		if most_common_CDR3[1] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_CDR3_2 = counter_CDR3_2 + 1
		if most_common_CDR3[2] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_CDR3_3 = counter_CDR3_3 + 1
		if most_common_CDR3[3] == str(entry[1]) + str(entry[6]) + str(entry[11]):
			counter_CDR3_4 = counter_CDR3_4 + 1
	
	#Printing values for the record
	print("Number of overlaps for the top two vdj recombinations for each of the top 4 CDR3 sequences:")
	print(counter_mc_vdj1)
	print(counter_smc_vdj1)
	print(counter_mc_vdj2)
	print(counter_smc_vdj2)
	print(counter_mc_vdj3)
	print(counter_smc_vdj3)
	print(counter_mc_vdj4)
	print(counter_smc_vdj4)
	print(counter_vdj1)
	print(counter_vdj2)
	print(counter_vdj3)
	print(counter_vdj4)
	print(counter_vdj5)
	print(counter_CDR3_1)
	print(counter_CDR3_2)
	print(counter_CDR3_3)
	print(counter_CDR3_4) 

##################################################################################
#																				 #
#																				 #
#																				 #
#																				 #
##################################################################################	
#Here this will find the distance between the most common CDR3 sequences in one time point
#and all the sequences in another time point that share the same vdj recombinations
#for now it just prints the output
import Levenshtein
import sys
def mostcommon_tracked(splitT1,splitT2,splitT3):
	print("")
	print("")
	print("")
	print(sys.argv[4])
	print("")
	print("T1 to T2")
	#reusing the mostcommonrep function to find the most common CDR3s from T1
	from repertoire_counting import mostcommonrep
	most_common_CDRs = mostcommonrep(splitT1)
	most_common_CDR3 = most_common_CDRs[0]
	
	#Creating a dictionary of the most common CDR3 entries, and a list for help is searching another list.
	#Using only the top 3 CDR3s for now. Should be sufficient for most purposes
	most_common_CDR3_entire_entries = {}
	vdjs_in_mc_CDR3 = []
	for entry in splitT1:
		if entry[0] != '*' and len(entry)>10 and (most_common_CDR3[0] == entry[0] or most_common_CDR3[1] == entry[0] or most_common_CDR3[2] == entry[0] or most_common_CDR3[3] == entry[0]):
			most_common_CDR3_entire_entries[str(entry[1]) + str(entry[6]) + str(entry[11])]=entry
			vdjs_in_mc_CDR3.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	vdjs_in_mc_CDR3 = list(set(vdjs_in_mc_CDR3))
	
	#Scanning through T2 in order to find the distances
	distance = []
	most_repeated_CDR3 = [0,0,0,0]	
	for entry in splitT2:
		a = str(entry[1]) + str(entry[6]) + str(entry[11])
		if a in vdjs_in_mc_CDR3:
			distance.append((Levenshtein.distance(entry[0], most_common_CDR3_entire_entries[a][0]),most_common_CDR3_entire_entries[a][0])) #finding the levenshtein distance between the two
			if Levenshtein.distance(entry[0], most_common_CDR3_entire_entries[a][0]) == 1: #printing when the distance ==s some_number
				print(most_common_CDR3_entire_entries[a][0])
			if most_common_CDR3_entire_entries[a][0] == most_common_CDRs[0][0]: #counting the number of repeats
				most_repeated_CDR3[0] = most_repeated_CDR3[0] + 1
			if most_common_CDR3_entire_entries[a][0] == most_common_CDRs[0][1]:
				most_repeated_CDR3[1] = most_repeated_CDR3[1] + 1
			if most_common_CDR3_entire_entries[a][0] == most_common_CDRs[0][2]:
				most_repeated_CDR3[2] = most_repeated_CDR3[2] + 1
			if most_common_CDR3_entire_entries[a][0] == most_common_CDRs[0][3]:
				most_repeated_CDR3[3] = most_repeated_CDR3[3] + 1
	
	print("Most repeated CDR3 sequences in order:")
	print(most_repeated_CDR3)
	#Sorting the distances to determine which are most abundant
	distance = Counter(distance)
	distance = distance.most_common()	
	distance = sorted(distance)
	print("Distance, CDR3, number of occasions:")
	print(distance)
	
	
	print("")
	print("")
	print("T2 to T3")
	#reusing the mostcommonrep function to find the most common CDR3s from T2
	most_common_CDRs = mostcommonrep(splitT2)
	most_common_CDR3 = most_common_CDRs[0]
	
	#Creating a dictionary of the most common CDR3 entries, and a list for help in searching another list.
	#Using only the top 3 CDR3s for now. Should be sufficient for most purposes
	most_common_CDR3_entire_entries = {}
	vdjs_in_mc_CDR3 = []
	for entry in splitT2:
		if entry[0] != '*' and len(entry)>10 and (most_common_CDR3[0] == entry[0] or most_common_CDR3[1] == entry[0] or most_common_CDR3[2] == entry[0] or most_common_CDR3[3] == entry[0]):
			most_common_CDR3_entire_entries[str(entry[1]) + str(entry[6]) + str(entry[11])]=entry
			vdjs_in_mc_CDR3.append(str(entry[1]) + str(entry[6]) + str(entry[11]))
	vdjs_in_mc_CDR3 = list(set(vdjs_in_mc_CDR3))
	
	#Scanning through T3 in order to find the distances
	distance = []
	most_repeated_CDR3 = [0,0,0,0]	
	for entry in splitT3:
		a = str(entry[1]) + str(entry[6]) + str(entry[11])
		if a in vdjs_in_mc_CDR3:
			distance.append((Levenshtein.distance(entry[0], most_common_CDR3_entire_entries[a][0]),most_common_CDR3_entire_entries[a][0])) #finding the levenshtein distance between the two
			if Levenshtein.distance(entry[0], most_common_CDR3_entire_entries[a][0]) == 1: #printing when the distance ==s some_number
				print(most_common_CDR3_entire_entries[a][0])
			if most_common_CDR3_entire_entries[a][0] == most_common_CDRs[0][0]: #counting the number of repeats
				most_repeated_CDR3[0] = most_repeated_CDR3[0] + 1
			if most_common_CDR3_entire_entries[a][0] == most_common_CDRs[0][1]:
				most_repeated_CDR3[1] = most_repeated_CDR3[1] + 1
			if most_common_CDR3_entire_entries[a][0] == most_common_CDRs[0][2]:
				most_repeated_CDR3[2] = most_repeated_CDR3[2] + 1
			if most_common_CDR3_entire_entries[a][0] == most_common_CDRs[0][3]:
				most_repeated_CDR3[3] = most_repeated_CDR3[3] + 1
	
	print("Most repeated CDR3 sequences in order:")
	print(most_repeated_CDR3)
	#Sorting the distances to determine which are most abundant
	distance = Counter(distance)
	distance = distance.most_common()	
	distance = sorted(distance)
	print("Distance, CDR3, number of occasions:")
	print(distance)
##################################################################################
#																				 #
#																				 #
#																				 #
#																				 #
##################################################################################	
#This will find the nucleotide sequences associated with the CDR3 sequences 
#I will run a similar program to the VDJ recombination, replacing the VDJ
#recombination with the nucleotide sequences
#Takes exactly four CDR3 sequences from the mostcommonrep command, first argument
def mostcommon_nuc_in_CDR3(split,most_common_CDR3):
	nuc1 = []
	nuc2 = []
	nuc3 = []
	nuc4 = []
	print(most_common_CDR3[0])
	#Scanning through the list of repertoire sequences, finding the nucleotide sequences associated with each CDR3 sequence
	for entry in split:
		if most_common_CDR3[0] == entry[0]:
			nuc1.append(str(entry[21]).upper()) #This uses the nucleotide column named joinedseq, which I believe is the entire sequenced portion of the BCR transcript
		if most_common_CDR3[1] == entry[0]:
			nuc2.append(str(entry[21]).upper())
		if most_common_CDR3[2] == entry[0]:
			nuc3.append(str(entry[21]).upper())
		if most_common_CDR3[3] == entry[0]:
			nuc4.append(str(entry[21]).upper())
	output = [nuc1,nuc2,nuc3,nuc4]
	return output
##################################################################################
#																				 #
#																				 #
#																				 #
#																				 #
##################################################################################	
