##In this program I will use the the IMGT output to break up the data so that Partis might
#run more efficiently. I will call in an IMGT output as a Pandas df and split it by V gene
#to run each V gene separately. This would assume that each group of clones can only contain
#a unique V gene. 

import pandas as pd

df = pd.read_csv("/Users/SLancaster/Desktop/SplittingForPartisUpdate/1_Summary.txt", sep="\t")

df.sort_values(by=['V-GENE and allele'], inplace=True)
df.set_index(keys=['V-GENE and allele'], drop=False,inplace=True) #This is necessary, otherwise I get an error in "df[[entry in s for s in df.index]]"
names=df['V-GENE and allele'].unique().tolist()
names=list(set(names))
to_remove =[]
for entry in names:
	if "(see comment)" in str(entry):
		to_remove.append(entry)
		
to_remove=set(to_remove)

for entry in to_remove:
	names.remove(entry) #I do it this way because I've had problems just removing as I iterate over a list.

df2 = pd.DataFrame()
for entry in names:
	V_gene = df[[entry in s for s in df.index]]
	entry = entry.replace(" ","_")
	entry = entry.replace(",","")
	entry = entry.replace("*","")
	entry = entry.replace("(","")
	entry = entry.replace(")","")
	entry = entry.replace("_or_Homsap_","_")
	if len(V_gene.index)>1:
		if len(V_gene.index)>10:
			V_gene.to_csv("P14"+entry+".csv", sep=',')
		else:
			df2 = df2.append(V_gene)

#Putting all the small ones together just to analyze them and be thorough.
df2.to_csv("P14RareVGenes.csv", sep=',')
			