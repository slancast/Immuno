for (i in 1:vcount(g)) {
if (V(g)$frequency[i] > 1000){
print(V(g)[i])
print(V(g)$frequency[i])
print(V(g)$isotype[i])
print(V(g)$sequence[i])
}}