#slancast@scg4.stanford.edu:/srv/gsfs0/projects/snyder/slancast/repertoire/

import pandas as pd

os.environ['var']

df = pd.read_csv("/srv/gsfs0/projects/snyder/slancast/IMGT_analyses/db_new.csv")

df = pd.DataFrame(df)

df["Total_Mutations"] = df["OBSERVED_FWR1_R"] + df["OBSERVED_CDR1_R"] + df["OBSERVED_FWR2_R"] + df["OBSERVED_CDR2_R"] + df["OBSERVED_FWR3_R"] + df["OBSERVED_CDR3_R"]

df.to_csv("CDR3_Mut.csv")