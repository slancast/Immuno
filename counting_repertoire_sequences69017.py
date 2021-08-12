#This will count all the sequences and isotypes in the _pep files. It will print them.
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/69-017

import os

filehandle=open("./repertoire_folder/19431_pep.csv", "r")

Totcount = 0
Mcount = 0
Gcount = 0 
Acount = 0
Dcount = 0
Ecount = 0
a = None
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split(",")
	if len(a)>21 and a[0] != "CDR3(pep)":
		if len(a[16]) > 3:
			Totcount = Totcount + 1
			if a[16][4] == "M":
				Mcount = Mcount +1
			if a[16][4] == "G":
				Gcount = Gcount +1
			if a[16][4] == "A":
				Acount = Acount +1
			if a[16][4] == "D":
				Dcount = Dcount +1
			if a[16][4] == "E":
				Ecount =Ecount +1

print("Total Sequences: " + str(Totcount))			
print("IgM: " + str(Mcount))
print("IgG: " + str(Gcount))
print("IgA: " + str(Acount))
print("IgD: " + str(Dcount))
print("IgE: " + str(Ecount))
