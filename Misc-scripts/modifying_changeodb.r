#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/

library(tigger)
library(dplyr)

print("P2T1")
P2T1 <- readChangeoDb("19336_2T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P2T1))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P2T1 <- cbind(P2T1, ID, Insulin_Status, Time, Isotype)
write.table(P2T1, file = "19336_2T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P2T2")
P2T2 <- readChangeoDb("19332_2T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P2T2))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P2T2 <- cbind(P2T2, ID, Insulin_Status, Time, Isotype)
write.table(P2T2, file = "19332_2T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P2T3")
P2T3 <- readChangeoDb("19330_2T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P2T3))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P2T3 <- cbind(P2T3, ID, Insulin_Status, Time, Isotype)
write.table(P2T3, file = "19330_2T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")





print("P3T1")
P3T1 <- readChangeoDb("19346_3T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P3T1))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P3T1 <- cbind(P3T1, ID, Insulin_Status, Time, Isotype)
write.table(P3T1, file = "19346_3T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P3T2")
P3T2 <- readChangeoDb("19347_3T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P3T2))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P3T2 <- cbind(P3T2, ID, Insulin_Status, Time, Isotype)
write.table(P3T2, file = "19347_3T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P3T3")
P3T3 <- readChangeoDb("19348_3T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P3T3))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P3T3 <- cbind(P3T3, ID, Insulin_Status, Time, Isotype)
write.table(P3T3, file = "19348_3T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")





print("P4T1")
P4T1 <- readChangeoDb("19335_4T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P4T1))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P4T1 <- cbind(P4T1, ID, Insulin_Status, Time, Isotype)
write.table(P4T1, file = "19335_4T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P4T2")
P4T2 <- readChangeoDb("19343_4T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P4T2))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P4T2 <- cbind(P4T2, ID, Insulin_Status, Time, Isotype)
write.table(P4T2, file = "19343_4T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P4T3")
P4T3 <- readChangeoDb("19333_4T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P4T3))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P4T3 <- cbind(P4T3, ID, Insulin_Status, Time, Isotype)
write.table(P4T3, file = "19333_4T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")





print("P5T1")
P5T1 <- readChangeoDb("19112_5T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P5T1))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P5T1 <- cbind(P5T1, ID, Insulin_Status, Time, Isotype)
write.table(P5T1, file = "19112_5T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P5T2")
P5T2 <- readChangeoDb("19114_5T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P5T2))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P5T2 <- cbind(P5T2, ID, Insulin_Status, Time, Isotype)
write.table(P5T2, file = "19114_5T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P5T3")
P5T3 <- readChangeoDb("19118_5T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P5T3))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P5T3 <- cbind(P5T3, ID, Insulin_Status, Time, Isotype)
write.table(P5T3, file = "19118_5T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P6T1")
P6T1 <- readChangeoDb("19119_6T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P6T1))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P6T1 <- cbind(P6T1, ID, Insulin_Status, Time, Isotype)
write.table(P6T1, file = "19119_6T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P6T2")
P6T2 <- readChangeoDb("19109_6T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P6T2))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P6T2 <- cbind(P6T2, ID, Insulin_Status, Time, Isotype)
write.table(P6T2, file = "19109_6T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P6T3")
P6T3 <- readChangeoDb("19107_6T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P6T3))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P6T3 <- cbind(P6T3, ID, Insulin_Status, Time, Isotype)
write.table(P6T3, file = "19107_6T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")





print("P7T1")
P7T1 <- readChangeoDb("19120_7T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P7T1))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P7T1 <- cbind(P7T1, ID, Insulin_Status, Time, Isotype)
write.table(P7T1, file = "19120_7T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P7T2")
P7T2 <- readChangeoDb("19109_7T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P7T2))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P7T2 <- cbind(P7T2, ID, Insulin_Status, Time, Isotype)
write.table(P7T2, file = "19109_7T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P7T3")
P7T3 <- readChangeoDb("19116_7T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P7T3))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P7T3 <- cbind(P7T3, ID, Insulin_Status, Time, Isotype)
write.table(P7T3, file = "19116_7T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P8T1")
P8T1 <- readChangeoDb("19122_8T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P8T1))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P8T1 <- cbind(P8T1, ID, Insulin_Status, Time, Isotype)
write.table(P8T1, file = "19122_8T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P8T2")
P8T2 <- readChangeoDb("19123_8T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P8T2))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P8T2 <- cbind(P8T2, ID, Insulin_Status, Time, Isotype)
write.table(P8T2, file = "19123_8T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P8T3")
P8T3 <- readChangeoDb("19124_8T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P8T3))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P8T3 <- cbind(P8T3, ID, Insulin_Status, Time, Isotype)
write.table(P8T3, file = "19124_8T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P9T1")
P9T1 <- readChangeoDb("19121_9T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P9T1))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P9T1 <- cbind(P9T1, ID, Insulin_Status, Time, Isotype)
write.table(P9T1, file = "19121_9T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P9T2")
P9T2 <- readChangeoDb("19115_9T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P9T2))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P9T2 <- cbind(P9T2, ID, Insulin_Status, Time, Isotype)
write.table(P9T2, file = "19115_9T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P9T3")
P9T3 <- readChangeoDb("19113_9T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P9T3))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P9T3 <- cbind(P9T3, ID, Insulin_Status, Time, Isotype)
write.table(P9T3, file = "19113_9T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P10T1")
P10T1 <- readChangeoDb("19106_10T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P10T1))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P10T1 <- cbind(P10T1, ID, Insulin_Status, Time, Isotype)
write.table(P10T1, file = "19106_10T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P10T2")
P10T2 <- readChangeoDb("19103_10T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P10T2))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P10T2 <- cbind(P10T2, ID, Insulin_Status, Time, Isotype)
write.table(P10T2, file = "19103_10T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P10T3")
P10T3 <- readChangeoDb("19102_10T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P10T3))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P10T3 <- cbind(P10T3, ID, Insulin_Status, Time, Isotype)
write.table(P10T3, file = "19102_10T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P11T1")
P11T1 <- readChangeoDb("19125_11T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P11T1))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P11T1 <- cbind(P11T1, ID, Insulin_Status, Time, Isotype)
write.table(P11T1, file = "19125_11T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P11T2")
P11T2 <- readChangeoDb("19104_11T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P11T2))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P11T2 <- cbind(P11T2, ID, Insulin_Status, Time, Isotype)
write.table(P11T2, file = "19104_11T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P11T3")
P11T3 <- readChangeoDb("19105_11T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P11T3))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P11T3 <- cbind(P11T3, ID, Insulin_Status, Time, Isotype)
write.table(P11T3, file = "19105_11T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P12T1")
P12T1 <- readChangeoDb("19110_12T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P12T1))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P12T1 <- cbind(P12T1, ID, Insulin_Status, Time, Isotype)
write.table(P12T1, file = "19110_12T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P12T2")
P12T2 <- readChangeoDb("19108_12T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P12T2))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P12T2 <- cbind(P12T2, ID, Insulin_Status, Time, Isotype)
write.table(P12T2, file = "19108_12T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P12T3")
P12T3 <- readChangeoDb("19111_12T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P12T3))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P12T3 <- cbind(P12T3, ID, Insulin_Status, Time, Isotype)
write.table(P12T3, file = "19111_12T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")







print("P13T1")
P13T1 <- readChangeoDb("19418_13T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P13T1))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P13T1 <- cbind(P13T1, ID, Insulin_Status, Time, Isotype)
write.table(P13T1, file = "19418_13T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P13T2")
P13T2 <- readChangeoDb("19414_13T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P13T2))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P13T2 <- cbind(P13T2, ID, Insulin_Status, Time, Isotype)
write.table(P13T2, file = "19414_13T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P13T3")
P13T3 <- readChangeoDb("19411_13T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P13T3))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P13T3 <- cbind(P13T3, ID, Insulin_Status, Time, Isotype)
write.table(P13T3, file = "19411_13T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P14T1")
P14T1 <- readChangeoDb("19415_14T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P14T1))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM") 
}
P14T1 <- cbind(P14T1, ID, Insulin_Status, Time, Isotype)
write.table(P14T1, file = "19415_14T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P14T2")
P14T2 <- readChangeoDb("19419_14T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P14T2))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM") 
}
P14T2 <- cbind(P14T2, ID, Insulin_Status, Time, Isotype)
write.table(P14T2, file = "19419_14T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P14T3")
P14T3 <- readChangeoDb("19420_14T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P14T3))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM") 
}
P14T3 <- cbind(P14T3, ID, Insulin_Status, Time, Isotype)
write.table(P14T3, file = "19420_14T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P15T1")
P15T1 <- readChangeoDb("19422_15T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P15T1))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM")}
P15T1 <- cbind(P15T1, ID, Insulin_Status, Time, Isotype)
write.table(P15T1, file = "19422_15T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P15T2")
P15T2 <- readChangeoDb("19421_15T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P15T2))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM")}
P15T2 <- cbind(P15T2, ID, Insulin_Status, Time, Isotype)
write.table(P15T2, file = "19421_15T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P15T3")
P15T3 <- readChangeoDb("19417_15T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P15T3))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM")}
P15T3 <- cbind(P15T3, ID, Insulin_Status, Time, Isotype)
write.table(P15T3, file = "19417_15T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P16T1")
P16T1 <- readChangeoDb("19376_16T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P16T1))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM")}
P16T1 <- cbind(P16T1, ID, Insulin_Status, Time, Isotype)
write.table(P16T1, file = "19376_16T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P16T2")
P16T2 <- readChangeoDb("19377_16T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P16T2))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM")}
P16T2 <- cbind(P16T2, ID, Insulin_Status, Time, Isotype)
write.table(P16T2, file = "19377_16T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")

print("P16T3")
P16T3 <- readChangeoDb("19378_16T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P16T3))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM")}
P16T3 <- cbind(P16T3, ID, Insulin_Status, Time, Isotype)
write.table(P16T3, file = "19378_16T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")






print("P17T1")
P17T1 <- readChangeoDb("19372_17T2_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P17T1))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T1")
Isotype <- append(Isotype, "IgM")}
P17T1 <- cbind(P17T1, ID, Insulin_Status, Time, Isotype)
write.table(P17T1, file = "19372_17T2_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")


print("P17T2")
P17T2 <- readChangeoDb("19379_17T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P17T2))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T2")
Isotype <- append(Isotype, "IgM")}
P17T2 <- cbind(P17T2, ID, Insulin_Status, Time, Isotype)
write.table(P17T2, file = "19379_17T1_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")


print("P17T3")
P17T3 <- readChangeoDb("19374_17T3_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Time <- c()
Isotype <- c()
for (i in 1:nrow(P17T3))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Time <- append(Time, "T3")
Isotype <- append(Isotype, "IgM")}
P17T3 <- cbind(P17T3, ID, Insulin_Status, Time, Isotype)
write.table(P17T3, file = "19374_17T3_db-pass_clone-pass_germ-pass_IIITcbind.tab", sep="\t")



