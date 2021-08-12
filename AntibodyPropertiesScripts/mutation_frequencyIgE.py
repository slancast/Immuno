#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/IMGTIgE/analyses/mutation_frequency

import pandas as pd
import os

print(str(os.environ['var']))

df = pd.read_csv(str(os.environ['var'])+"db_new.csv")

df = pd.DataFrame(df)

df["Total_Mutations"] = df["OBSERVED_FWR1_R"] + df["OBSERVED_CDR1_R"] + df["OBSERVED_FWR2_R"] + df["OBSERVED_CDR2_R"] + df["OBSERVED_FWR3_R"] + df["OBSERVED_CDR3_R"]

df.to_csv(str(os.environ['var'])+"CDR3_Mut.csv")