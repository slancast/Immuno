#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/CDR3_database_comparison

print("beginning")

####################################################################
############################## T1 ##################################
####################################################################

filehandle=open("../p1t119339/19339_pep.csv", "r")
database=open("IMGT_LIGM-DB_extracted_subsequences_20161121_23h12m27/aminoacids_subsequences_4712722250684632071.txt", "r")

database = database.read()
database =database.split("\n")

print(database[:50])

for_output = []
IMGT_number = []

counter = 0
a=None
while (a is None or len(a) >21):
	a=filehandle.readline()
	a=a.split(",")
	for entry in range(1,len(database),2):
		if str(database[entry]) == str(a[0]):
			for_output.append(a[0])
			print(database[entry])
			counter1 = 0
			for i in database[entry-1]:
				if i != "|":
					counter1 = counter1 + 1
				if i == "|":
					break
			IMGT_number.append(database[entry-1][1:counter1])
			print(database[entry-1][1:counter1])
			counter = counter+1
			print(counter)
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")
		print(a[0])

IMGT_number = set(IMGT_number)
print("common genes")
output =open("accession_numbers_P1T1.txt", "w")
for entry in IMGT_number:
	output.write(entry)
	output.write(";")
	
####################################################################
############################## T2 ##################################
####################################################################	
	
filehandle=open("../p1t119339/19339_pep.csv", "r")
database=open("IMGT_LIGM-DB_extracted_subsequences_20161121_23h12m27/aminoacids_subsequences_4712722250684632071.txt", "r")

database = database.read()
database =database.split("\n")

print(database[:50])

for_output = []
IMGT_number = []

counter = 0
a=None
while (a is None or len(a) >21):
	a=filehandle.readline()
	a=a.split(",")
	for entry in range(1,len(database),2):
		if str(database[entry]) == str(a[0]):
			for_output.append(a[0])
			print(database[entry])
			counter1 = 0
			for i in database[entry-1]:
				if i != "|":
					counter1 = counter1 + 1
				if i == "|":
					break
			IMGT_number.append(database[entry-1][1:counter1])
			print(database[entry-1][1:counter1])
			counter = counter+1
			print(counter)
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")
		print(a[0])

IMGT_number = set(IMGT_number)
print("common genes")
output =open("accession_numbers_P1T1.txt", "w")
for entry in IMGT_number:
	output.write(entry)
	output.write(";")

