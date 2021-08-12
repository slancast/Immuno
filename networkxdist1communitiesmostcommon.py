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
for entry in partition.values():
	if entry in most_common:
		most_common[entry] = most_common[entry]+1
	else:
		most_common[entry] = 1
		
most_common_community = max(most_common, key=lambda key: most_common[key])

print(most_common_community)

pos = nx.fruchterman_reingold_layout(G)

print("adding nodes")

list_nodes = []
for entry in partition.keys() :
    if partition[entry] == most_common_community:
    	list_nodes.append(entry)
    	
print(list_nodes)
    	
nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.1)
nx.draw_networkx_nodes(G, pos, list_nodes, node_shape=".", linewidths =0.0, node_color='red',node_size=0.1)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./testingcommunitiesnetworkxbestpartitionmostcommon.pdf")

end = time.time()
print(end - start)
