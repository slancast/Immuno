#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/69-017/mutation_freq

import pandas as pd
import os

Subject = str(os.environ['var'][5:9])

df = pd.read_csv(Subject+"db_new.csv")

df = pd.DataFrame(df)

df["Total_Mutations"] = df["OBSERVED_FWR1_R"] + df["OBSERVED_CDR1_R"] + df["OBSERVED_FWR2_R"] + df["OBSERVED_CDR2_R"] + df["OBSERVED_FWR3_R"] + df["OBSERVED_CDR3_R"]

df.to_csv(str(os.environ['var'])+"CDR3_Mut.csv")