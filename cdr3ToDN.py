#This python program will match up CDR3 sequences with the dist nearest values. It will require
#the Repertoire pep file and the .csv file containing the dist_nearest value
#It will also use a list of cdr3 sequences that are interesting in comma separated format

import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-pep", default=None)
parser.add_argument("-dist", default=None)
parser.add_argument("-cdr3", default=None)
parser.add_argument("-out", default=None)
args = parser.parse_args()

pep=open(args.pep, "r")
cdr3=open(args.cdr3, "r")
cdr3=cdr3.read()
cdr3=cdr3.split()

print cdr3

a=None

temp = []
counter = 0

while (a is None) or len(a)>1:
	a = pep.readline()
	a = a.split(",")
	for_output=[]
	counter = counter + 1
	for entry in cdr3:
		if entry == a[0]:
			for_output.append(entry)
			for_output.append(a[21].upper())
			temp.append(for_output)
	if str(counter).endswith("0000"):
		continue
		
		
dist=open(args.dist, "r")
		
b=None
output=[]

counter = 0

while (b is None) or len(b)>2:
	b = dist.readline()
	b = b.split("\t")
	if len(b)>1:
		for entry in temp:
			if entry[1] == b[2][1:len(a)-2]:
				counter = counter + 1
				entry.append(b[1])
				entry.append(b[47])
				output.append(entry)
				print counter
				print entry
				



out_file = open("/Users/SLancaster/Desktop/" + str(args.out) + "CDR3withNTsequences.csv", "w")	
for entry in output:
	for entry1 in entry:
		out_file.write(entry1)
		out_file.write(",")
	