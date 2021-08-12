#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/CDR3networks/over_1_copy

import os

filehandle=open(os.environ['var'], "r")

outputname = str(os.environ['var'][6:len(os.environ['var'])-19])
print(outputname)

counter = 0
graph_dict = {}
a = None
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split(",")
	counter=counter+1
	if len(a)>22 and a[0]!= "CDR3(pep)":
		if int(a[23]) > 1:
			if str(a[0])+"_"+str(a[16][:len(a[16])-3]) not in graph_dict: #This concatenates the string of the CDR3 sequence to with the isotype
				graph_dict[str(a[0])+"_"+str(a[16][:len(a[16])-3])] = 1
			else:
				graph_dict[str(a[0])+"_"+str(a[16][:len(a[16])-3])] = graph_dict[str(a[0])+"_"+str(a[16][:len(a[16])-3])] + 1
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

import networkx as nx
import Levenshtein

G = nx.Graph()

counter1 = 0
for entry in graph_dict:
	entry1 = entry.split("_")
	G.add_node(entry, isotype=entry1[1], sequence=entry1[0], frequency=graph_dict[entry])

counter1 = 0	
for entry in G.nodes():
	counter2=0
	counter1=counter1+1
	if str(counter1).endswith("00"):
		print(str(counter1)+" creating edges")
	for entry1 in G.nodes():
		counter2=counter2+1
		counter = 0
		if G.node[entry]['sequence'] == G.node[entry1]['sequence']:
			if Levenshtein.distance(G.node[entry]['isotype'][:5], G.node[entry1]['isotype'][:5]) == 1 or Levenshtein.distance(G.node[entry]['isotype'], G.node[entry1]['isotype']) == 1:
				G.add_edge(entry,entry1,style='dashdot')
		if Levenshtein.distance(G.node[entry]['sequence'], G.node[entry1]['sequence']) == 1:
			G.add_edge(entry,entry1)
		
print("edges completed")
	
nx.write_gml(G,outputname+".gml.gz")


