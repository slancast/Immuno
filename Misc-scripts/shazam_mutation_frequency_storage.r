#Storing old code from shazam mutational frequency


P2 <- readChangeoDb("19336_2T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P2))  { ID <- append(ID,"P2")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P2 <- cbind(P2, ID, Insulin_Status, Isotype)

P3 <- readChangeoDb("19346_3T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P3))  { ID <- append(ID,"P3")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P3 <- cbind(P3, ID, Insulin_Status, Isotype)

P4 <- readChangeoDb("19335_4T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P4))  { ID <- append(ID,"P4")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P4 <- cbind(P4, ID, Insulin_Status, Isotype)

P5 <- readChangeoDb("19112_5T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P5))  { ID <- append(ID,"P5")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P5 <- cbind(P5, ID, Insulin_Status, Isotype)

P6 <- readChangeoDb("19119_6T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P6))  { ID <- append(ID,"P6")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P6 <- cbind(P6, ID, Insulin_Status, Isotype)

P7 <- readChangeoDb("19120_7T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P7))  { ID <- append(ID,"P7")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P7 <- cbind(P7, ID, Insulin_Status, Isotype)

P8 <- readChangeoDb("19122_8T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P8))  { ID <- append(ID,"P8")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P8 <- cbind(P8, ID, Insulin_Status, Isotype)

P9 <- readChangeoDb("19121_9T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P9))  { ID <- append(ID,"P9")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P9 <- cbind(P9, ID, Insulin_Status, Isotype)

P10 <- readChangeoDb("19106_10T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P10))  { ID <- append(ID,"P10")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P10 <- cbind(P10, ID, Insulin_Status, Isotype)

P11 <- readChangeoDb("19125_11T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P11))  { ID <- append(ID,"P11")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P11 <- cbind(P11, ID, Insulin_Status, Isotype)

P12 <- readChangeoDb("19110_12T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P12))  { ID <- append(ID,"P12")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P12 <- cbind(P12, ID, Insulin_Status, Isotype)

P13 <- readChangeoDb("19418_13T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P13))  { ID <- append(ID,"P13")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P13 <- cbind(P13, ID, Insulin_Status, Isotype)

P14 <- readChangeoDb("19415_14T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P14))  { ID <- append(ID,"P14")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P14 <- cbind(P14, ID, Insulin_Status, Isotype)

P15 <- readChangeoDb("19422_15T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P15))  { ID <- append(ID,"P15")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P15 <- cbind(P15, ID, Insulin_Status, Isotype)

P16 <- readChangeoDb("19376_16T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P16))  { ID <- append(ID,"P16")
Insulin_Status <- append(Insulin_Status, "IR")
Isotype <- append(Isotype, "IgM")}
P16 <- cbind(P16, ID, Insulin_Status, Isotype)

P17 <- readChangeoDb("19379_17T1_db-pass_clone-pass_germ-pass.tab")
ID <- c()
Insulin_Status <- c()
Isotype <- c()
for (i in 1:nrow(P17))  { ID <- append(ID,"P17")
Insulin_Status <- append(Insulin_Status, "IS")
Isotype <- append(Isotype, "IgM")}
P17 <- cbind(P17, ID, Insulin_Status, Isotype)