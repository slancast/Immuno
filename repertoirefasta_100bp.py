#This file will take the fasta files used to generate the IMGT format and make them
#all the same length in order to do multiple sequence alignemnts



with open("/Users/SLancaster/Desktop/Patient14T1.fasta") as f:
	fasta = f.readlines()

newfile = open("/Users/SLancaster/Desktop/Patient14T1300bp.fasta", 'w')

for entry in fasta:
	if len(entry) < 200:
		newfile.write(entry) #This assumes the entry will end with a "\n", which it will based on the format of the fasta file
	else:
		newfile.write(entry[:199])
		newfile.write("\n")
		
