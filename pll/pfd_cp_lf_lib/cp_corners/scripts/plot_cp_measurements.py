import pandas as pd
import matplotlib.pyplot as plt
import numpy as np


vctrl_corners = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7,0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8]
failed_corners = ['sf,27,0.9', 'sf,-40,0.9', 'sf,125,0.9', 'ss,-40,0.9', 'ss,27,0.9']
df = pd.read_csv('all_measurements.csv')
df.sort_values(by=["corner name","control", "UP", "Down"] , inplace=True)

iter = 0
list_1 = []
list_2 = []
list_3 = []
list_4 = []


for index, row in df.iterrows():
    if iter % 4 == 0:
        list_1.append(row)
    elif iter % 4 == 1:
        list_2.append(row)
    elif iter % 4 == 2:
        list_3.append(row)
    elif iter % 4 == 3:
        list_4.append(row)
    iter += 1
###################################################################################################
###################################################################################################

df = pd.DataFrame(list_1)
df.sort_values(by=["corner name","control", "UP", "Down"] , inplace=True)
df.to_csv("all_measurements_0_0.csv", index=False)
df = pd.read_csv('all_measurements_0_0.csv')

fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)

for itr in range(0,len(df["control"])-len(vctrl_corners)+1,len(vctrl_corners)):
    control_list = df["control"][itr:itr+len(vctrl_corners)-1].tolist()
    current_list = df["i_out"][itr:itr+len(vctrl_corners)-1].tolist()
    if (df["corner name"][itr] == 'tt,27,1.0'):
        plt.plot(control_list , current_list,linewidth = 3, color = 'black',linestyle='dashed',label=df["corner name"][itr])
    else:
        plt.plot(control_list , current_list,linewidth = 2.5,label=df["corner name"][itr])


plt.legend(bbox_to_anchor=(1.12, 0.95),loc='upper right', labelspacing=0.15)
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("Output Current (uA)",fontsize=14)
plt.title("Charge Pump Output Current Vs Control Voltage @ UP=0,Down=0",fontsize=14)
plt.grid()
plt.tight_layout()
plt.show()

###################################################################################################
###################################################################################################
df = pd.DataFrame(list_2)
df.sort_values(by=["corner name","control", "UP", "Down"] , inplace=True)
df.to_csv("all_measurements_0_1.8.csv", index=False)
df = pd.read_csv('all_measurements_0_1.8.csv')

fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)

for itr in range(0,len(df["control"])-len(vctrl_corners)+1,len(vctrl_corners)):
    control_list = df["control"][itr:itr+len(vctrl_corners)-1].tolist()
    current_list = df["i_out"][itr:itr+len(vctrl_corners)-1].tolist()
    if (df["corner name"][itr] == 'tt,27,1.0'):
        plt.plot(control_list , current_list,linewidth = 3, color = 'black',linestyle='dashed',label=df["corner name"][itr])
    else:
        plt.plot(control_list , current_list,linewidth = 2.5,label=df["corner name"][itr])


plt.legend(bbox_to_anchor=(1.12, 0.95),loc='upper right', labelspacing=0.15)
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("Output Current (uA)",fontsize=14)
plt.title("Charge Pump Output Current Vs Control Voltage @ UP=0,Down=1.8",fontsize=14)
plt.grid()
plt.tight_layout()
plt.show()

###################################################################################################
###################################################################################################
df = pd.DataFrame(list_3)
df.sort_values(by=["corner name","control", "UP", "Down"] , inplace=True)
df.to_csv("all_measurements_1.8_0.csv", index=False)
df = pd.read_csv('all_measurements_1.8_0.csv')

fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)

for itr in range(0,len(df["control"])-len(vctrl_corners)+1,len(vctrl_corners)):
    control_list = df["control"][itr:itr+len(vctrl_corners)-1].tolist()
    current_list = df["i_out"][itr:itr+len(vctrl_corners)-1].tolist()
    if (df["corner name"][itr] == 'tt,27,1.0'):
        plt.plot(control_list , current_list,linewidth = 3, color = 'black',linestyle='dashed',label=df["corner name"][itr])
    elif df["corner name"][itr] not in failed_corners:
        plt.plot(control_list , current_list,linewidth = 2.5,label=df["corner name"][itr])


plt.legend(bbox_to_anchor=(1.12, 0.95),loc='upper right', labelspacing=0.15)
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("Output Current (uA)",fontsize=14)
plt.title("Charge Pump Output Current Vs Control Voltage @ UP=1.8,Down=0",fontsize=14)
plt.grid()
plt.tight_layout()
plt.show()

###################################################################################################
###################################################################################################
df = pd.DataFrame(list_4)
df.sort_values(by=["corner name","control", "UP", "Down"] , inplace=True)
df.to_csv("all_measurements_1.8_1.8.csv", index=False)
df = pd.read_csv('all_measurements_1.8_1.8.csv')

fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)


for itr in range(0,len(df["control"])-len(vctrl_corners)+1,len(vctrl_corners)):
    control_list = df["control"][itr:itr+len(vctrl_corners)-1].tolist()
    current_list = df["i_out"][itr:itr+len(vctrl_corners)-1].tolist()
    if (df["corner name"][itr] == 'tt,27,1.0'):
        plt.plot(control_list , current_list,linewidth = 3, color = 'black',linestyle='dashed',label=df["corner name"][itr])
    elif df["corner name"][itr] not in failed_corners:
        plt.plot(control_list , current_list,linewidth = 2.5,label=df["corner name"][itr])


plt.legend(bbox_to_anchor=(1.12, 0.95),loc='upper right', labelspacing=0.15)
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("Output Current (uA)",fontsize=14)
plt.title("Charge Pump Output Current Vs Control Voltage @ UP=1.8,Down=1.8",fontsize=14)
plt.grid()
plt.tight_layout()
plt.show()


