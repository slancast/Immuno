#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/


print("beginning")

import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
import time
import community



fh=open("edges2.csv", 'r')
fg=fh.readlines()

edges=[]
G = nx.Graph()
for entry in fg:
	entry=entry.split(",")
	if len(entry) == 2:
		G.add_node(entry[0])
		G.add_node(entry[1].strip())
		G.add_edge(entry[0],entry[1].strip())
		
print("making partition")

start = time.time()
		
partition = community.best_partition(G)

most_common={}
for entry in partition.keys():
	if entry in most_common:
		most_common[entry] = most_common[entry]+1
	else:
		most_common[entry] = 1

print(partition)

max(dictionary, key=lambda key: dictionary[key])

#drawing
size = float(len(set(partition.values())))
pos = nx.fruchterman_reingold_layout(G)
count = 0.

print("adding nodes")

for com in set(partition.values()) :
    count = count + 1.
    list_nodes = [nodes for nodes in partition.keys()
                                if partition[nodes] == com]
    nx.draw_networkx_nodes(G, pos, list_nodes, node_size = 0.1, node_shape=".", linewidths =0.0,
                                node_color = str(count / size))

nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./testingcommunitiesnetworkxbestpartition.pdf")

end = time.time()
print(end - start)
