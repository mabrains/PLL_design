import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

def D(xlist,ylist):
    yprime = np.diff(ylist)/np.diff(xlist)
    xprime=[]
    for i in range(len(yprime)):
        xtemp = (xlist[i+1]+xlist[i])/2
        xprime = np.append(xprime,xtemp)
    return xprime, yprime



vctrl_corners = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7,0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8]
df = pd.read_csv('all_measurements_original.csv')

fig, ax = plt.subplots(figsize=(4, 4))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.125)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.07)

for itr in range(0,len(df["control"])-len(vctrl_corners)+1,len(vctrl_corners)):
    control_list = df["control"][itr:itr+len(vctrl_corners)-1].tolist()
    freq_list = df["freq (GHZ)"][itr:itr+len(vctrl_corners)-1].tolist()
    oscilation_state = df["Oscillation Status"][itr:itr+len(vctrl_corners)-1].tolist()
    if (False not in oscilation_state) :
        plt.plot(control_list , freq_list,linewidth = 2.5,label=df["corner name"][itr])


plt.legend(bbox_to_anchor=(1.12, 1.13),loc='upper right', labelspacing=0.15)
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("Oscillation Frequency (HZ)",fontsize=14)
plt.title("Oscillation Frequency Vs Control Voltage",fontsize=14)
plt.grid()
plt.tight_layout()
plt.plot(control_list , [2.35]*len(control_list),linewidth=4 ,color='black')
plt.plot(control_list , [2.55]*len(control_list),linewidth=4 ,color='black')
plt.xlim([0, 1.1])
#plt.ylim([2.3 , 2.6])
plt.show()


fig, ax = plt.subplots(figsize=(4, 4))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.125)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.07)

for itr in range(0,len(df["control"])-len(vctrl_corners)+1,len(vctrl_corners)):
    control_list = df["control"][itr:itr+len(vctrl_corners)-1].tolist()
    freq_list = df["freq (GHZ)"][itr:itr+len(vctrl_corners)-1].tolist()
    control_list_prime, kvco = D(control_list, freq_list)
    oscilation_state = df["Oscillation Status"][itr:itr+len(vctrl_corners)-1].tolist()
    if (False not in oscilation_state) :
        plt.plot(control_list_prime , kvco*1e+3,linewidth = 2.5,label=df["corner name"][itr])


plt.legend(bbox_to_anchor=(1.12, 1.13),loc='upper right', labelspacing=0.15)
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("KVCO (MHZ/V)",fontsize=14)
plt.title("Gain  Vs Control Voltage",fontsize=14)
plt.grid()
plt.tight_layout()
plt.xlim([0, 1.1])
#plt.ylim([0 , 800])
plt.show()