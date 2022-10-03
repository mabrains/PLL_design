##########################################################################
## Mabrains LLC
##########################################################################

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

csv_file_name = '../csv_files/pfd_ckt_tt_-40.00_1.80.csv'
df = pd.read_csv (csv_file_name,index_col=False,usecols=[0 ,1 ,2, 3,4],header=0, delimiter=r"\s+")
df.to_csv('../csv_files/temp.csv', index = False)


time_list = df["time"]
up_list = df["v(up)"]
dn_list = df["v(dn)"]
fb_list = df["v(FB)"]
ref_list = df["v(REF)"]

plt.plot(time_list , up_list,linewidth = 3,label='UP')
plt.legend(bbox_to_anchor=(1.12, 0.95),loc='upper right', labelspacing=0.15)
plt.show()

plt.plot(time_list , dn_list,linewidth = 3,label='DOWN')
plt.legend(bbox_to_anchor=(1.12, 0.95),loc='upper right', labelspacing=0.15)
plt.show()

plt.plot(time_list , fb_list,linewidth = 3,label='FB')
plt.legend(bbox_to_anchor=(1.12, 0.95),loc='upper right', labelspacing=0.15)
plt.show()

plt.plot(time_list , ref_list,linewidth = 3,label='REF')
plt.legend(bbox_to_anchor=(1.12, 0.95),loc='upper right', labelspacing=0.15)
plt.show()

