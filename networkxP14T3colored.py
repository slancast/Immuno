#this will label the largest community as colored. I'm using P14T3
#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/
#Andrew is interested in plotting the largest community, too. I will do this with
#the original formatting and with a new formatting just on that community, too.

import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
import community
import pyparsing
import pickle

'''
fh=open("edgefiles/edgesstringP14T3.csv", 'r')
fg=fh.readlines()
edges=[]
G = nx.Graph()
for entry in fg:
	entry=entry.split(",")
	if len(entry) == 2:
		G.add_node(entry[0])
		G.add_node(entry[1].strip())
		G.add_edge(entry[0],entry[1].strip())
		

nx.write_gml(G,"P14T3.gml.gz")
'''

G = nx.read_gml("P14T3.gml.gz")

partition = community.best_partition(G)

with open("P14T3communities.txt", 'wb') as f:
    pickle.dump(partition, f)

most_common={}
for entry in partition.values():
	if entry in most_common:
		most_common[entry] = most_common[entry]+1
	else:
		most_common[entry] = 1
		
#most_common_community = max(most_common, key=lambda key: most_common[key])
#I am using the sorted function instead to give the second most common community too.

most_common_community=sorted(most_common, key=most_common.get, reverse=True)[0]

second_most_common_community=sorted(most_common, key=most_common.get, reverse=True)[1]

third_most_common_community=sorted(most_common, key=most_common.get, reverse=True)[2]

print(most_common_community)

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

pos =  pickle.load(open("P14T3graphLayout.txt","rb"))

'''
pos = nx.fruchterman_reingold_layout(G)


with open("P14T3graphLayout.txt", 'wb') as f:
    pickle.dump(pos, f)
#saving layout for reuse.
'''



nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.1)
nx.draw_networkx_nodes(G, pos, list_nodes, node_shape=".", linewidths =0.0, node_color='green',node_size=0.1)
nx.draw_networkx_nodes(G, pos, second_list_nodes, node_shape=".", linewidths =0.0, node_color='blue',node_size=0.1)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./P14T3ColoredCommunitytwo.pdf")
plt.clf()

nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.1)
nx.draw_networkx_nodes(G, pos, list_nodes, node_shape=".", linewidths =0.0, node_color='green',node_size=0.1)
nx.draw_networkx_nodes(G, pos, third_list_nodes, node_shape=".", linewidths =0.0, node_color='blue',node_size=0.1)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./P14T3ColoredCommunitythrid.pdf")
plt.clf()

nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.1)
nx.draw_networkx_nodes(G, pos, list_nodes, node_shape=".", linewidths =0.0, node_color='green',node_size=0.1)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./P14T3ColoredCommunityone.pdf")
plt.clf()


H = G.subgraph(list_nodes)
nx.draw_networkx_nodes(H, pos, node_shape=".", linewidths =0.0, node_color='green',node_size=2.5)
nx.draw_networkx_edges(H, pos, width=0.001)

plt.savefig("./P14T3Subgraph.pdf")
plt.clf()


I = nx.node_connected_component(G,list_nodes[0])
nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.1)
nx.draw_networkx_nodes(G, pos, I, node_shape=".", linewidths =0.0, node_color='green',node_size=0.1)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./P14T3ConnectedCommunities.pdf")
plt.clf()

I = nx.node_connected_component(G,second_list_nodes[0])
nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.1)
nx.draw_networkx_nodes(G, pos, I, node_shape=".", linewidths =0.0, node_color='blue',node_size=0.1)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./P14T3ConnectedCommunitiessecond.pdf")
plt.clf()

I = nx.node_connected_component(G,third_list_nodes[0])
nx.draw_networkx_nodes(G, pos, node_shape=".", linewidths =0.0, node_color='black',node_size=0.1)
nx.draw_networkx_nodes(G, pos, I, node_shape=".", linewidths =0.0, node_color='blue',node_size=0.1)
nx.draw_networkx_edges(G, pos, width=0.001)

plt.savefig("./P14T3ConnectedCommunitiesthird.pdf")
plt.clf()

pos = nx.fruchterman_reingold_layout(H)
nx.draw_networkx_nodes(H, pos, node_shape=".", linewidths =0.0, node_color='green',node_size=2.5)
nx.draw_networkx_edges(H, pos, width=0.001)

plt.savefig("./P14T3SubgraphNewLayout.pdf")
plt.clf()

