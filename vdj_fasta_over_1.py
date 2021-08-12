#This will count all the sequences and isotypes in the _pep files. It will print them.
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/Change-o/fasta_over_1

import os

filehandle=open(os.environ['var'], "r")

outputname = str(os.environ['var'][6:len(os.environ['var'])-19])
print(outputname)

Totcount = 0
count = 0
seqs = []
a = None
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split(",")
	if len(a)>21 and a[0] != "CDR3(pep)":
		if len(a[16]) > 3:
			if int(a[23]) > 1:
				count = count +1
				seqs.append(a[21].upper())

print("Total Sequences: " + str(count))			

counter = 0	
	
output_file = open(outputname + ".fasta", "w")
for entry in seqs:
	counter = counter +1
	output_file.write(">" + outputname + str(counter))
	output_file.write("\n")
	output_file.write(entry)
	output_file.write("\n")