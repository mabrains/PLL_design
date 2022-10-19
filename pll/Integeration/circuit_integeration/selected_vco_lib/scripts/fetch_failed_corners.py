##########################################################################
## Mabrains LLC
##########################################################################
import matplotlib.pyplot as plt
import pandas as pd


csv_file_name = "all_measurements.csv"
df = pd.read_csv(csv_file_name, parse_dates=True)

failed_corners = []
for ind in df.index:
    if df['Oscillation Status'][ind] == False:
        corner = {}
        corner["failed_corners"] = df['process'][ind]+'_'+str(df['temp'][ind])+'_'+str(df['supply'][ind])
        if (corner not in failed_corners ):
         failed_corners.append(corner)



if len(failed_corners) > 0:
    df = pd.DataFrame(failed_corners)
    df.to_csv("failed_corners.csv", index=False)