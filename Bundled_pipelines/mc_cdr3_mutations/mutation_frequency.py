#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTcombined/analyses/mutation_freq

import pandas as pd
import os
import numpy as np

print(str(os.environ['var']))

df = pd.read_csv(str(os.environ['var'])+"db_new.csv")

df = pd.DataFrame(df)
 
df["Total_Mutations"] = df["OBSERVED_FWR1_R"] + df["OBSERVED_CDR1_R"] + df["OBSERVED_FWR2_R"] + df["OBSERVED_CDR2_R"] + df["OBSERVED_FWR3_R"] + df["OBSERVED_CDR3_R"]

df.to_csv(str(os.environ['var'])+"CDR3_Mut.csv")

nucs = open("nucs_in_most_common_CDR3_"+str(os.environ['var'])+"t1.csv","r").readlines()

nucs[0] = nucs[0].split(",")
nucs[1] = nucs[1].split(",")
nucs[2] = nucs[2].split(",")
nucs[3] = nucs[3].split(",")

#print(nucs[0])

df = df.values.tolist()

mutations_CDR3_1 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]
mutations_CDR3_2 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]
mutations_CDR3_3 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]
mutations_CDR3_4 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]

total_mutations_CDR3_1 = []
total_mutations_CDR3_2 = []
total_mutations_CDR3_3 = []
total_mutations_CDR3_4 = []
 
print("adding mutations")
for entry in df:
	if len(entry) > 60:
		if entry[1] in nucs[0]:
			total_mutations_CDR3_1.append(entry[60])
			mutations_CDR3_1.append(entry[48:59])
	if len(entry) > 60:
		if entry[1] in nucs[1]:
			total_mutations_CDR3_2.append(entry[60])
			mutations_CDR3_2.append(entry[48:59])
	if len(entry) > 60:
		if entry[1] in nucs[2]:
			total_mutations_CDR3_3.append(entry[60])
			mutations_CDR3_3.append(entry[48:59])
	if len(entry) > 60:
		if entry[1] in nucs[3]:
			total_mutations_CDR3_4.append(entry[60])	
			mutations_CDR3_4.append(entry[48:59])

CDR3_1 = np.array(mutations_CDR3_1)
CDR3_2 = np.array(mutations_CDR3_2)
CDR3_3 = np.array(mutations_CDR3_3)
CDR3_4 = np.array(mutations_CDR3_4)

np.savetxt("mutations_in_most_common_CDR3_1_p"+str(os.environ['var'])+"t1.csv", CDR3_1, delimiter=",", fmt="%s")
np.savetxt("mutations_in_most_common_CDR3_2_p"+str(os.environ['var'])+"t1.csv", CDR3_2, delimiter=",", fmt="%s")
np.savetxt("mutations_in_most_common_CDR3_3_p"+str(os.environ['var'])+"t1.csv", CDR3_3, delimiter=",", fmt="%s")
np.savetxt("mutations_in_most_common_CDR3_4_p"+str(os.environ['var'])+"t1.csv", CDR3_4, delimiter=",", fmt="%s")

print("Mean mutations in t1 CDR3 1:")
print(np.mean(total_mutations_CDR3_1))
print("Mean mutations in t1 CDR3 2:")
print(np.mean(total_mutations_CDR3_2))
print("Mean mutations in t1 CDR3 3:")
print(np.mean(total_mutations_CDR3_3))
print("Mean mutations in t1 CDR3 4:")
print(np.mean(total_mutations_CDR3_4))

##################################################################################
#																				 #
#																				 #
#										T2										 #
#																				 #
#																				 #
##################################################################################	

nucs = open("nucs_in_most_common_CDR3_"+str(os.environ['var'])+"t2.csv","r").readlines()

nucs[0] = nucs[0].split(",")
nucs[1] = nucs[1].split(",")
nucs[2] = nucs[2].split(",")
nucs[3] = nucs[3].split(",")

mutations_CDR3_1 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]
mutations_CDR3_2 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]
mutations_CDR3_3 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]
mutations_CDR3_4 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]

total_mutations_CDR3_1 = []
total_mutations_CDR3_2 = []
total_mutations_CDR3_3 = []
total_mutations_CDR3_4 = []
 
print("adding mutations")
for entry in df:
	if len(entry) > 60:
		if entry[1] in nucs[0]:
			total_mutations_CDR3_1.append(entry[60])
			mutations_CDR3_1.append(entry[48:59])
	if len(entry) > 60:
		if entry[1] in nucs[1]:
			total_mutations_CDR3_2.append(entry[60])
			mutations_CDR3_2.append(entry[48:59])
	if len(entry) > 60:
		if entry[1] in nucs[2]:
			total_mutations_CDR3_3.append(entry[60])
			mutations_CDR3_3.append(entry[48:59])
	if len(entry) > 60:
		if entry[1] in nucs[3]:
			total_mutations_CDR3_4.append(entry[60])	
			mutations_CDR3_4.append(entry[48:59])

CDR3_1 = np.array(mutations_CDR3_1)
CDR3_2 = np.array(mutations_CDR3_2)
CDR3_3 = np.array(mutations_CDR3_3)
CDR3_4 = np.array(mutations_CDR3_4)

np.savetxt("mutations_in_most_common_CDR3_1_p"+str(os.environ['var'])+"t2.csv", CDR3_1, delimiter=",", fmt="%s")
np.savetxt("mutations_in_most_common_CDR3_2_p"+str(os.environ['var'])+"t2.csv", CDR3_2, delimiter=",", fmt="%s")
np.savetxt("mutations_in_most_common_CDR3_3_p"+str(os.environ['var'])+"t2.csv", CDR3_3, delimiter=",", fmt="%s")
np.savetxt("mutations_in_most_common_CDR3_4_p"+str(os.environ['var'])+"t2.csv", CDR3_4, delimiter=",", fmt="%s")

print("Mean mutations in t2 CDR3 1:")
print(np.mean(total_mutations_CDR3_1))
print("Mean mutations in t2 CDR3 2:")
print(np.mean(total_mutations_CDR3_2))
print("Mean mutations in t2 CDR3 3:")
print(np.mean(total_mutations_CDR3_3))
print("Mean mutations in t2 CDR3 4:")
print(np.mean(total_mutations_CDR3_4))

##################################################################################
#																				 #
#																				 #
#										T3										 #
#																				 #
#																				 #
##################################################################################	

nucs = open("nucs_in_most_common_CDR3_"+str(os.environ['var'])+"t3.csv","r").readlines()

nucs[0] = nucs[0].split(",")
nucs[1] = nucs[1].split(",")
nucs[2] = nucs[2].split(",")
nucs[3] = nucs[3].split(",")

mutations_CDR3_1 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]
mutations_CDR3_2 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]
mutations_CDR3_3 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]
mutations_CDR3_4 = [["OBSERVED_CDR1_R","OBSERVED_CDR1_S","OBSERVED_CDR2_R","OBSERVED_CDR2_S","OBSERVED_CDR3_R","OBSERVED_CDR3_S","OBSERVED_FWR1_R","OBSERVED_FWR1_S","OBSERVED_FWR2_R","OBSERVED_FWR2_S","OBSERVED_FWR3_R","OBSERVED_FWR3_S"]]

total_mutations_CDR3_1 = []
total_mutations_CDR3_2 = []
total_mutations_CDR3_3 = []
total_mutations_CDR3_4 = []
 
print("adding mutations")
for entry in df:
	if len(entry) > 60:
		if entry[1] in nucs[0]:
			total_mutations_CDR3_1.append(entry[60])
			mutations_CDR3_1.append(entry[48:59])
	if len(entry) > 60:
		if entry[1] in nucs[1]:
			total_mutations_CDR3_2.append(entry[60])
			mutations_CDR3_2.append(entry[48:59])
	if len(entry) > 60:
		if entry[1] in nucs[2]:
			total_mutations_CDR3_3.append(entry[60])
			mutations_CDR3_3.append(entry[48:59])
	if len(entry) > 60:
		if entry[1] in nucs[3]:
			total_mutations_CDR3_4.append(entry[60])	
			mutations_CDR3_4.append(entry[48:59])

CDR3_1 = np.array(mutations_CDR3_1)
CDR3_2 = np.array(mutations_CDR3_2)
CDR3_3 = np.array(mutations_CDR3_3)
CDR3_4 = np.array(mutations_CDR3_4)

np.savetxt("mutations_in_most_common_CDR3_1_p"+str(os.environ['var'])+"t3.csv", CDR3_1, delimiter=",", fmt="%s")
np.savetxt("mutations_in_most_common_CDR3_2_p"+str(os.environ['var'])+"t3.csv", CDR3_2, delimiter=",", fmt="%s")
np.savetxt("mutations_in_most_common_CDR3_3_p"+str(os.environ['var'])+"t3.csv", CDR3_3, delimiter=",", fmt="%s")
np.savetxt("mutations_in_most_common_CDR3_4_p"+str(os.environ['var'])+"t3.csv", CDR3_4, delimiter=",", fmt="%s")

print("Mean mutations in t3 CDR3 1:")
print(np.mean(total_mutations_CDR3_1))
print("Mean mutations in t3 CDR3 2:")
print(np.mean(total_mutations_CDR3_2))
print("Mean mutations in t3 CDR3 3:")
print(np.mean(total_mutations_CDR3_3))
print("Mean mutations in t3 CDR3 4:")
print(np.mean(total_mutations_CDR3_4))