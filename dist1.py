#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/
#must change 3 file locations for the server


print("beginning")

import numpy as np
import networkx as nx
import matplotlib.pyplot as plt

filehandle=open("../IMGTIgG/14IgGT1_db-pass_clone-pass_germ-pass.tab", "r")
a = None

output=open("edgesstringT1.csv","w")
outnodes=open("verticesstringT1.csv","w")

df2 =[]
counter = 0
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split("\t")
	counter=counter+1
	if len(a)>9:
		df2.append(a[10]) #VDJ sequence
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

G = nx.Graph()
#G.add_nodes_from(df2)
for_r = []
total_nodes =[]
edges = []

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
			G.add_node(entry)
			G.add_node(entry1)
			G.add_edge(entry,entry1)
			total_nodes.append(entry)
			total_nodes.append(entry1)
			ffr=[]
			ffr.append(entry)
			ffr.append(entry1)
			ffr.append(1)
			for_r.append(ffr)
			fedges=[]
			fedges.append(str(counter1))
			fedges.append(str(counter2))
			edges.append(fedges)
			counter3=counter3 + 1

print("edges completed")		

total_nodes = list(set(total_nodes))
print(len(total_nodes))

for entry in total_nodes:
	outnodes.write(str(entry))
	outnodes.write("\n")
	
print("writing edges")
for entry in for_r:
	output.write(str(entry[0]))
	output.write(",")
	output.write(str(entry[1]))
	output.write("\n")

pos = nx.fruchterman_reingold_layout(G)
nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.4)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./networkxgraphlargeT1size04.pdf")





filehandle=open("../IMGTIgG/14IgGT2_db-pass_clone-pass_germ-pass.tab", "r")
a = None

output=open("edgesstringT2.csv","w")
outnodes=open("verticesstringT2.csv","w")


df2 =[]
counter = 0
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split("\t")
	counter=counter+1
	if len(a)>9:
		df2.append(a[10])
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

G = nx.Graph()
#G.add_nodes_from(df2)
for_r = []
total_nodes =[]
edges = []

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
			G.add_node(entry)
			G.add_node(entry1)
			G.add_edge(entry,entry1)
			total_nodes.append(entry)
			total_nodes.append(entry1)
			ffr=[]
			ffr.append(entry)
			ffr.append(entry1)
			ffr.append(1)
			for_r.append(ffr)
			fedges=[]
			fedges.append(str(counter1))
			fedges.append(str(counter2))
			edges.append(fedges)
			counter3=counter3 + 1

print("edges completed")		

total_nodes = list(set(total_nodes))
print(len(total_nodes))

#print("calculating edges")	
#counter1=0
#for entry in for_r:
#	counter1=counter1+1
#	if str(counter1).endswith("00"):
#		print(str(counter1)+" creating edges")
#	edges.append((node_number[entry[0]],node_number[entry[1]]))



for entry in total_nodes:
	outnodes.write(str(entry))
	outnodes.write("\n")
	
print("writing edges")
for entry in for_r:
	output.write(str(entry[0]))
	output.write(",")
	output.write(str(entry[1]))
	output.write("\n")

'''
	
fh=open("edgesstring.csv", 'rb')



fh=open("edgesstring.csv", 'r')
fg=fh.readlines()
edges=[]
G = nx.Graph()
for entry in fg:
	entry=entry.split(",")
	if len(entry) == 2:
		G.add_node(entry[0])
		G.add_node(entry[1].strip())
		G.add_edge(entry[0],entry[1].strip())
		
#I think it's important to add nodes here		

#G=nx.read_edgelist(fh) #cannot be list of list
'''

pos = nx.fruchterman_reingold_layout(G)
nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.4)
nx.draw_networkx_edges(G, pos, width=0.001)
#nx.draw_networkx(G,pos,node_list=nodes,with_labels=False, width=0.001)

plt.savefig("./networkxgraphlargeT2size04.pdf")





filehandle=open("../IMGTIgG/14IgGT3_db-pass_clone-pass_germ-pass.tab", "r")
a = None

output=open("edgesstringT3.csv","w")
outnodes=open("verticesstringT3.csv","w")


df2 =[]
counter = 0
while (a is None or len(a) >1):
	a=filehandle.readline()
	a=a.split("\t")
	counter=counter+1
	if len(a)>9:
		df2.append(a[10])
	if str(counter).endswith("0000"):
		print(str(counter)+" creating df")

G = nx.Graph()
#G.add_nodes_from(df2)
for_r = []
total_nodes =[]
edges = []

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
			G.add_node(entry)
			G.add_node(entry1)
			G.add_edge(entry,entry1)
			total_nodes.append(entry)
			total_nodes.append(entry1)
			ffr=[]
			ffr.append(entry)
			ffr.append(entry1)
			ffr.append(1)
			for_r.append(ffr)
			fedges=[]
			fedges.append(str(counter1))
			fedges.append(str(counter2))
			edges.append(fedges)
			counter3=counter3 + 1

print("edges completed")		

total_nodes = list(set(total_nodes))
print(len(total_nodes))

for entry in total_nodes:
	outnodes.write(str(entry))
	outnodes.write("\n")
	
print("writing edges")
for entry in for_r:
	output.write(str(entry[0]))
	output.write(",")
	output.write(str(entry[1]))
	output.write("\n")

pos = nx.fruchterman_reingold_layout(G)
nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.4)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./networkxgraphlargeT3size04.pdf")


'''
	
#
	
layout = layout_grid_fruchterman_reingold(g)
plot(g, "igraphpy.pdf",layout = layout)
				

				
		

'''