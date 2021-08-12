#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/networks/P18

print("beginning")

import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
import pickle
import pandas as pd
import Levenshtein

####################################################################
############################## T1 ##################################
####################################################################

filehandle=open("../../p18t119410/19410_pep.csv", "r")

G = nx.Graph()
#This could be done quicker with pandas
node_list =[]
counter = 0
iso = []
counter_dict = {}
a = None
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split(",")
	counter=counter+1
	if len(a)>21:
		node_list.append(a[0])
		iso.append(a[16][:len(a[16])-3])
		G.add_node(a[0], isotype=a[16][:len(a[16])-3])
		if a[0] not in counter_dict:
			counter_dict[a[0]] = 1
		else:
			counter_dict[a[0]] = counter_dict[a[0]] + 1
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

print("length of T1 node_list")

for_r = []

counter1=0
counter2=0
counter3=0
for entry in node_list:
	counter2=0
	counter1=counter1+1
	if str(counter1).endswith("00"):
		print(str(counter1)+" creating edges")
	for entry1 in node_list:
		counter2=counter2+1
		counter = 0
		if Levenshtein.distance(entry,entry1) == 1:
			G.add_edge(entry,entry1)
			

print("edges completed")

nx.set_node_attributes(G, 'frequency', counter_dict)
print("node_attributes_done")
	
nx.write_gml(G,"P18CDR3T1.gml.gz")

####################################################################
############################## T2 ##################################
####################################################################	
	
filehandle=open("../../p18t219413/19413_pep.csv", "r")

G = nx.Graph()
#This could be done quicker with pandas
node_list =[]
counter = 0
iso = []
counter_dict = {}
a = None
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split(",")
	counter=counter+1
	if len(a)>21:
		node_list.append(a[0])
		iso.append(a[16][:len(a[16])-3])
		G.add_node(a[0], isotype=a[16][:len(a[16])-3])
		if a[0] not in counter_dict:
			counter_dict[a[0]] = 1
		else:
			counter_dict[a[0]] = counter_dict[a[0]] + 1
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

print("length of T2 node_list")

for_r = []

counter1=0
counter2=0
counter3=0
for entry in node_list:
	counter2=0
	counter1=counter1+1
	if str(counter1).endswith("00"):
		print(str(counter1)+" creating edges")
	for entry1 in node_list:
		counter2=counter2+1
		counter = 0
		if Levenshtein.distance(entry,entry1) == 1:
			G.add_edge(entry,entry1)
			

print("edges completed")

nx.set_node_attributes(G, 'frequency', counter_dict)
print("node_attributes_done")
	
nx.write_gml(G,"P18CDR3T2.gml.gz")
