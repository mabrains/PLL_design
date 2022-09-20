import sys
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


def get_mag_arr(file_name):
	file = pd.read_csv (file_name,index_col=False,usecols=[1],header=None, delimiter=r"\s+")
	array = file.to_numpy()
	array = array.ravel()
	array = np.array(array)
	return array

def get_freq_arr(file_name):
	file = pd.read_csv (file_name,index_col=False,usecols=[0],header=None, delimiter=r"\s+")
	array = file.to_numpy()
	array = array.ravel()
	array = np.array(array)
	return array


file_name1 = sys.argv[1]     #file name of the netlist subscribes the circuit
counter = sys.argv[2]        #expresion of the output voltage 
vctrl_start = 0 
vctrl_end = 1.8


vctrl_arr = np.linspace(vctrl_start,vctrl_end,int(counter))
fosc_arr = np.linspace(0,0,int(counter))


for i in range (0,int(counter)):
    counter_str = str(i)
    file_name = file_name1+counter_str+'.csv'
    if (i == 0):
        freq_arr = get_freq_arr(file_name)
        mag_arr = get_mag_arr(file_name)
    else:
        mag_arr = get_mag_arr(file_name)

    max_value_idx = mag_arr.argmax(axis=0)
    #print(max_value_idx)
    #print (freq_arr[max_value_idx])
    fosc_arr[i] = freq_arr[max_value_idx]
    #print (fosc_arr[i])

#print(fosc_arr)

plt.plot(vctrl_arr,fosc_arr,linewidth = 2.5)
plt.show()    