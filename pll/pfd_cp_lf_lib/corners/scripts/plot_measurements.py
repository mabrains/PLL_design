##########################################################################
## Mabrains LLC
##########################################################################

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import glob
import os
delay_str = "10n_1n"
files_dir = glob.glob('../csv_files/pfd_ckt_**_'+delay_str+'.csv', recursive = True)

fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)

for file_dir in files_dir:
    csv_file_dir = file_dir
    file_name = os.path.basename(file_dir)
    corner_name = file_name[8:len(file_name)-len(delay_str)-5]

    df = pd.read_csv (csv_file_dir,index_col=False,usecols=[0 ,1 ,2, 3,4],header=0, delimiter=r"\s+")
    df.to_csv('../csv_files/temp.csv', index = False)

    time_list = df["time"]
    up_list = df["v(up)"]
    if (corner_name == 'tt_27.00_1.80'):
        plt.plot(time_list , up_list,linewidth = 5, color = 'black',linestyle='dashed',label=corner_name)
    else:
        plt.plot(time_list , up_list,linewidth = 1,label=corner_name)
            
plt.legend(bbox_to_anchor=(1.12, 1.1),loc='upper right', labelspacing=0.15)
plt.xlabel("Time (sec)",fontsize=14)
plt.ylabel("Amplitude (V)",fontsize=14)
plt.title("UP signal Vs Time",fontsize=14)
plt.grid()
plt.tight_layout()
plt.show()


fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)

for file_dir in files_dir:
    csv_file_dir = file_dir
    file_name = os.path.basename(file_dir)
    corner_name = file_name[8:len(file_name)-len(delay_str)-5]

    df = pd.read_csv (csv_file_dir,index_col=False,usecols=[0 ,1 ,2, 3,4],header=0, delimiter=r"\s+")
    df.to_csv('../csv_files/temp.csv', index = False)

    time_list = df["time"]
    down_list = df["v(dn)"]

    if (corner_name == 'tt_27.00_1.80'):
        plt.plot(time_list , down_list,linewidth = 5, color = 'black',linestyle='dashed',label=corner_name)
    else:
        plt.plot(time_list , down_list,linewidth = 1,label=corner_name)
            
plt.legend(bbox_to_anchor=(1.12, 1.1),loc='upper right', labelspacing=0.15)
plt.xlabel("Time (sec)",fontsize=14)
plt.ylabel("Amplitude (V)",fontsize=14)
plt.title("Down signal Vs Time",fontsize=14)
plt.grid()
plt.tight_layout()
plt.show()



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