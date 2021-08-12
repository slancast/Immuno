#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/CDR3networks/

import os
import networkx as nx

filehandle=open("11T1_db-pass_clone-pass_germ-pass.tab", "r")

#The input file should be a Kleinstein germ-pass filehandle
def nucnetworkxnodes(filehandle):
	G = nx.Graph()
	df2 =[]
	counter = 0
	a=None
	while (a is None or len(a) >1):
		a=filehandle.readline()
		a=a.split("\t")
		counter=counter+1
		if len(a)>9:
			df2.append(a[10])
			G.add_node(a[10])
		if str(counter).endswith("0000"):
			print(str(counter)+" creating df")
	return df2,G
	
#The input should be a list that is the nodes, and the network with just the graph
counter1=0		

def nucnetworkxedges(entry):
		global counter 1
		global df2
		global G
		counter1=counter1+1
		if str(counter1).endswith("00"):
			print(str(counter1)+" creating edges")
		for entry1 in df2:
			counter = 0
			for i,j in zip(entry,entry1):
				if i != j:
					counter = counter + 1
					if counter > 1:
						break
			if counter ==1:
				G.add_edge(entry,entry1)
		return G 
		
graph = nucnetworkxnodes(filehandle)

print("length of T1 df2")
print(len(graph[0]))
print(graph[1])
df2 = graph[0]
G = graph[1]

'''
print("edges began")
for entry in df:
	nucnetworkxedges(entry)
'''

from multiprocessing.pool import ThreadPool 
pool = ThreadPool(5) 
G = pool.map(nucnetworkxedges, df2)

print("edges completed")
	
nx.write_gml(G,"P11P1.gml")


