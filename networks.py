#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/69-017/

print("beginning")

import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
import community
import pyparsing
import pickle

#################################################################
###########################  IgA  ###############################
#################################################################

filehandle=open("I_IgA_db-pass_clone-pass_germ-pass.tab", "r")
a = None

G = nx.Graph()
#This could be done quicker with pandas
df2 =[]
counter = 0
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split("\t")
	counter=counter+1
	if len(a)>9:
		df2.append(a[10])
		G.add_node(a[10])
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

print("length of IgA df2")
print(len(df2))
nsize = float(15000/len(df2))
for_r = []

counter1=0
counter2=0
counter3=0
for entry in df2:
	counter2=0
	counter1=counter1+1
	if str(counter1).endswith("00"):
		print(str(counter1)+" creating edges")
	for entry1 in df2:
		counter2=counter2+1
		counter = 0
		for i,j in zip(entry,entry1):
			if i != j:
				counter = counter + 1
				if counter > 1:
					break
		if counter ==1:
			G.add_edge(entry,entry1)
			ffr=[]
			ffr.append(entry)
			ffr.append(entry1)
			ffr.append(1)
			for_r.append(ffr)
			counter3=counter3 + 1

print("edges completed")
	
nx.write_gml(G,"./IgA.gml.gz")

#################################################################
###########################  IgM  ###############################
#################################################################

filehandle=open("I_IgM_db-pass_clone-pass_germ-pass.tab", "r")
a = None

G = nx.Graph()
df2 =[]
counter = 0
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split("\t")
	counter=counter+1
	if len(a)>9:
		df2.append(a[10])
		G.add_node(a[10])
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

print("length of IgM df2")
print(len(df2))
nsize = float(15000/len(df2))
for_r = []

counter1=0
counter2=0
counter3=0
for entry in df2:
	counter2=0
	counter1=counter1+1
	if str(counter1).endswith("00"):
		print(str(counter1)+" creating edges")
	for entry1 in df2:
		counter2=counter2+1
		counter = 0
		for i,j in zip(entry,entry1):
			if i != j:
				counter = counter + 1
				if counter > 1:
					break
		if counter ==1:
			G.add_edge(entry,entry1)
			ffr=[]
			ffr.append(entry)
			ffr.append(entry1)
			ffr.append(1)
			for_r.append(ffr)
			counter3=counter3 + 1

print("edges completed")
	
nx.write_gml(G,"./IgM.gml.gz")

#################################################################
###########################  IgG  ###############################
#################################################################

filehandle=open("I_IgG_db-pass_clone-pass_germ-pass.tab", "r")
a = None

G = nx.Graph()
df2 =[]
counter = 0
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split("\t")
	counter=counter+1
	if len(a)>9:
		df2.append(a[10])
		G.add_node(a[10])
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

print("length of IgG df2")
print(len(df2))
nsize = float(15000/len(df2))
for_r = []

counter1=0
counter2=0
counter3=0
for entry in df2:
	counter2=0
	counter1=counter1+1
	if str(counter1).endswith("00"):
		print(str(counter1)+" creating edges")
	for entry1 in df2:
		counter2=counter2+1
		counter = 0
		for i,j in zip(entry,entry1):
			if i != j:
				counter = counter + 1
				if counter > 1:
					break
		if counter ==1:
			G.add_edge(entry,entry1)
			ffr=[]
			ffr.append(entry)
			ffr.append(entry1)
			ffr.append(1)
			for_r.append(ffr)
			counter3=counter3 + 1

print("edges completed")		

nx.write_gml(G,"./IgG.gml.gz")

#################################################################
###########################  CDR3IgA  ###########################
#################################################################

filehandle=open("../I_IgA/5_AA-sequences.txt", "r")
a = None

G = nx.Graph()
#This could be done quicker with pandas
df2 =[]
counter = 0
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split("\t")
	counter=counter+1
	if len(a)>9:
		df2.append(a[14])
		G.add_node(a[14])
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

for_r = []
counter1=0
counter2=0
counter3=0
for entry in df2:
	counter2=0
	counter1=counter1+1
	if str(counter1).endswith("00"):
		print(str(counter1)+" creating edges")
	for entry1 in df2:
		counter2=counter2+1
		counter = 0
		if Levenshtein.distance(entry,entry1) == 1:
			G.add_edge(entry,entry1)
			ffr=[]
			ffr.append(entry)
			ffr.append(entry1)
			ffr.append(1)
			for_r.append(ffr)
			counter3=counter3 + 1

print("edges completed")
nsize = float(200000/len(df2))
	
nx.write_gml(G,"./CDR3IgA.gml.gz")

#################################################################
###########################  IgM  ###############################
#################################################################

filehandle=open("../I_IgM/5_AA-sequences.txt", "r")
a = None

G = nx.Graph()
#This could be done quicker with pandas
df2 =[]
counter = 0
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split("\t")
	counter=counter+1
	if len(a)>9:
		df2.append(a[14])
		G.add_node(a[14])
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

for_r = []
counter1=0
counter2=0
counter3=0
for entry in df2:
	counter2=0
	counter1=counter1+1
	if str(counter1).endswith("00"):
		print(str(counter1)+" creating edges")
	for entry1 in df2:
		counter2=counter2+1
		counter = 0
		if Levenshtein.distance(entry,entry1) == 1:
			G.add_edge(entry,entry1)
			ffr=[]
			ffr.append(entry)
			ffr.append(entry1)
			ffr.append(1)
			for_r.append(ffr)
			counter3=counter3 + 1

print("edges completed")
nsize = float(200000/len(df2))
	
nx.write_gml(G,"./CDR3IgM.gml.gz")

#################################################################
###########################  IgG  ###############################
#################################################################

filehandle=open("../I_IgG/5_AA-sequences.txt", "r")
a = None

G = nx.Graph()
#This could be done quicker with pandas
df2 =[]
counter = 0
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split("\t")
	counter=counter+1
	if len(a)>9:
		df2.append(a[14])
		G.add_node(a[14])
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

for_r = []
counter1=0
counter2=0
counter3=0
for entry in df2:
	counter2=0
	counter1=counter1+1
	if str(counter1).endswith("00"):
		print(str(counter1)+" creating edges")
	for entry1 in df2:
		counter2=counter2+1
		counter = 0
		if Levenshtein.distance(entry,entry1) == 1:
			G.add_edge(entry,entry1)
			ffr=[]
			ffr.append(entry)
			ffr.append(entry1)
			ffr.append(1)
			for_r.append(ffr)
			counter3=counter3 + 1

print("edges completed")
nsize = float(200000/len(df2))
	
nx.write_gml(G,"./CDR3IgG.gml.gz")