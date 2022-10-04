##########################################################################
## Mabrains LLC
##########################################################################

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import glob
import os

files_dir = glob.glob('../csv_files/pfd_ckt_**_10n_0.csv', 
                   recursive = True)

for file_dir in files_dir:

    print(file_dir)
    file_name = os.path.basename(file_dir)
    corner_name = file_name[8:len(file_name)-10]
    print (file_name)
    print (corner_name)



'''
csv_file_name = '../csv_files/pfd_ckt_tt_-40.00_1.80_10n_0.csv'
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

'''