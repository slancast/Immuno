#This will count all the sequences and isotypes in the _pep files. It will print them.
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/isotype_fasta

import os

filehandle=open(os.environ['var'], "r")

outputname = str(os.environ['var'][3:len(os.environ['var'])-19])
print(outputname)

Totcount = 0
Mcount = 0
Mseqs = []
Gcount = 0
Gseqs = []
Acount = 0
Aseqs = []
Dcount = 0
Dseqs = []
Ecount = 0
Eseqs = []
a = None
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split(",")
	if len(a)>21 and a[0] != "CDR3(pep)":
		if len(a[16]) > 3:
			Totcount = Totcount + 1
			if a[16][4] == "M":
				Mcount = Mcount +1
				Mseqs.append(a[21].upper())
			if a[16][4] == "G":
				Gcount = Gcount +1
				Gseqs.append(a[21].upper())
			if a[16][4] == "A":
				Acount = Acount +1
				Aseqs.append(a[21].upper())
			if a[16][4] == "D":
				Dcount = Dcount +1
				Dseqs.append(a[21].upper())
			if a[16][4] == "E":
				Ecount =Ecount +1
				Eseqs.append(a[21].upper())

print("Total Sequences: " + str(Totcount))			
print("IgM: " + str(Mcount))
print("IgG: " + str(Gcount))
print("IgA: " + str(Acount))
print("IgD: " + str(Dcount))
print("IgE: " + str(Ecount))


counter = 0	
	
output_file = open(outputname + "_IgA.fasta", "w")
for entry in Aseqs:
	counter = counter +1
	output_file.write(">" + outputname + str(counter))
	output_file.write("\n")
	output_file.write(entry)
	output_file.write("\n")
	
	counter = 0	
	
output_file = open(outputname + "_IgD.fasta", "w")
for entry in Dseqs:
	counter = counter +1
	output_file.write(">" + outputname + str(counter))
	output_file.write("\n")
	output_file.write(entry)
	output_file.write("\n")
	
counter = 0	
	
output_file = open(outputname + "_IgE.fasta", "w")
for entry in Eseqs:
	counter = counter +1
	output_file.write(">" + outputname + str(counter))
	output_file.write("\n")
	output_file.write(entry)
	output_file.write("\n")