#This will count all the sequences and isotypes in the _pep files. It will print them.
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire

import sys

print("###################")
print("###################")
print("###################")
print(sys.argv[4])
print("###################")
print("###################")
print("###################")

####################################################################
filehandle=open(sys.argv[1], "r")

Totcount = 0
Mcount = 0
Gcount = 0 
Acount = 0
Dcount = 0
Ecount = 0
G1count = 0 
G2count = 0
G3count = 0
G4count = 0

a = None
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split(",")
	if len(a)>21 and a[0] != "CDR3(pep)":
		if len(a[16]) > 3:
			Totcount = Totcount + 1
			if a[16][4] == "M":
				Mcount = Mcount + 1
			if a[16][4] == "G":
				Gcount = Gcount + 1
				if a[16][5] == "1":
					G1count = G1count + 1
				if a[16][5] == "2":
					G2count = G2count + 1
				if a[16][5] == "3":
					G3count = G3count + 1
				if a[16][5] == "4":
					G4count = G4count + 1
			if a[16][4] == "A":
				Acount = Acount + 1
			if a[16][4] == "D":
				Dcount = Dcount + 1
			if a[16][4] == "E":
				Ecount = Ecount + 1

print("T1 IgM count: " + str(Mcount))
print("T1 IgG count: " + str(Gcount))
print("T1 	IgG1 count: " + str(G1count))
print("T1 	IgG2 count: " + str(G2count))
print("T1 	IgG3 count: " + str(G3count))
print("T1 	IgG4 count: " + str(G4count))
print("T1 IgA count: " + str(Acount))
print("T1 IgD count: " + str(Dcount))
print("T1 IgE count: " + str(Ecount))
print("")
####################################################################
filehandle=open(sys.argv[2], "r")

Totcount = 0
Mcount = 0
Gcount = 0 
Acount = 0
Dcount = 0
Ecount = 0
G1count = 0 
G2count = 0
G3count = 0
G4count = 0

a = None
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split(",")
	if len(a)>21 and a[0] != "CDR3(pep)":
		if len(a[16]) > 3:
			Totcount = Totcount + 1
			if a[16][4] == "M":
				Mcount = Mcount + 1
			if a[16][4] == "G":
				Gcount = Gcount + 1
				if a[16][5] == "1":
					G1count = G1count + 1
				if a[16][5] == "2":
					G2count = G2count + 1
				if a[16][5] == "3":
					G3count = G3count + 1
				if a[16][5] == "4":
					G4count = G4count + 1
			if a[16][4] == "A":
				Acount = Acount + 1
			if a[16][4] == "D":
				Dcount = Dcount + 1
			if a[16][4] == "E":
				Ecount = Ecount + 1			

print("T2 IgM count: " + str(Mcount))
print("T2 IgG count: " + str(Gcount))
print("T2 	IgG1 count: " + str(G1count))
print("T2 	IgG2 count: " + str(G2count))
print("T2 	IgG3 count: " + str(G3count))
print("T2 	IgG4 count: " + str(G4count))
print("T2 IgA count: " + str(Acount))
print("T2 IgD count: " + str(Dcount))
print("T2 IgE count: " + str(Ecount))	
print("")			
####################################################################
filehandle=open(sys.argv[3], "r")

Totcount = 0
Mcount = 0
Gcount = 0 
Acount = 0
Dcount = 0
Ecount = 0
G1count = 0 
G2count = 0
G3count = 0
G4count = 0

a = None
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split(",")
	if len(a)>21 and a[0] != "CDR3(pep)":
		if len(a[16]) > 3:
			Totcount = Totcount + 1
			if a[16][4] == "M":
				Mcount = Mcount + 1
			if a[16][4] == "G":
				Gcount = Gcount + 1
				if a[16][5] == "1":
					G1count = G1count + 1
				if a[16][5] == "2":
					G2count = G2count + 1
				if a[16][5] == "3":
					G3count = G3count + 1
				if a[16][5] == "4":
					G4count = G4count + 1
			if a[16][4] == "A":
				Acount = Acount + 1
			if a[16][4] == "D":
				Dcount = Dcount + 1
			if a[16][4] == "E":
				Ecount = Ecount + 1	

print("T3 IgM count: " + str(Mcount))
print("T3 IgG count: " + str(Gcount))
print("T3 	IgG1 count: " + str(G1count))
print("T3 	IgG2 count: " + str(G2count))
print("T3 	IgG3 count: " + str(G3count))
print("T3 	IgG4 count: " + str(G4count))
print("T3 IgA count: " + str(Acount))
print("T3 IgD count: " + str(Dcount))
print("T3 IgE count: " + str(Ecount))