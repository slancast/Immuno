#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/
#If I search and replace in the document to change the person, there should be 30 changes.

print("beginning")

import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
#import community
#import pyparsing
#import pickle
#import Levenshtein

#################################################################
###########################  T1  ################################
#################################################################

filehandle=open("/Users/SLancaster/Desktop/5_AA-sequences_P14T1.txt", "r")
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
print("Number of unique clones:")
print(str(counter))	
print("Number of nodes: " + str(len(G)))
print("Number of nodes attempted to add:")
print(len(df2))


filehandle=open("/Users/SLancaster/Desktop/5_AA-sequences_P14T2.txt", "r")
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
print("Number of unique clones:")
print(str(counter))	
print("Number of nodes: " + str(len(G)))
print("Number of nodes attempted to add:")
print(len(df2))


filehandle=open("/Users/SLancaster/Desktop/5_AA-sequences_P14T3.txt", "r")
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
print("Number of unique clones:")
print(str(counter))	
print("Number of nodes: " + str(len(G)))
print("Number of nodes attempted to add:")
print(len(df2))


'''	
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
print("number of edges:")
print(str(counter3))
nsize = float(200000/len(df2))

nx.write_gml(G,"./P5CDR3/P5CDR3T1.gml.gz")

pos = nx.fruchterman_reingold_layout(G)
with open("./P5CDR3/P5CDR3T1graphLayout.txt", 'wb') as f:
    pickle.dump(pos, f)

partition = community.best_partition(G)

most_common={}
for entry in partition.values():
	if entry in most_common:
		most_common[entry] = most_common[entry]+1
	else:
		most_common[entry] = 1
		
most_common_community=sorted(most_common, key=most_common.get, reverse=True)[0]

second_most_common_community=sorted(most_common, key=most_common.get, reverse=True)[1]

third_most_common_community=sorted(most_common, key=most_common.get, reverse=True)[2]

print("adding nodes")

list_nodes = []
for entry in partition.keys() :
    if partition[entry] == most_common_community:
    	list_nodes.append(entry)
    	
second_list_nodes = []
for entry in partition.keys() :
    if partition[entry] == second_most_common_community:
    	second_list_nodes.append(entry)
    	
third_list_nodes = []
for entry in partition.keys() :
    if partition[entry] == third_most_common_community:
    	third_list_nodes.append(entry)


nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=nsize)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./P5CDR3/networkxgraphlargeP5T1.pdf")
plt.clf()

H = G.subgraph(list_nodes)
nx.draw_networkx_nodes(H, pos, node_shape=".", linewidths =0.0, node_color='green',node_size=nsize*25)
nx.draw_networkx_edges(H, pos, width=0.001)

plt.savefig("./P5CDR3/T1Subgraph.pdf")
plt.clf()


I = nx.node_connected_component(G,list_nodes[0])
J = nx.node_connected_component(G,second_list_nodes[0])
K = nx.node_connected_component(G,third_list_nodes[0])

nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=nsize)
nx.draw_networkx_nodes(G, pos, I, node_shape=".", linewidths =0.0, node_color='green',node_size=nsize)
nx.draw_networkx_nodes(G, pos, J, node_shape=".", linewidths =0.0, node_color='blue',node_size=nsize)
nx.draw_networkx_nodes(G, pos, K, node_shape=".", linewidths =0.0, node_color='orange',node_size=nsize)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./P5CDR3/T1ConnectedCommunities.pdf")
plt.clf()


pos = nx.fruchterman_reingold_layout(H)
nx.draw_networkx_nodes(H, pos, node_shape=".", linewidths =0.0, node_color='green',node_size=nsize*25)
nx.draw_networkx_edges(H, pos, width=0.001)

plt.savefig("./P5CDR3/T1SubgraphNewLayout.pdf")
plt.clf()
'''