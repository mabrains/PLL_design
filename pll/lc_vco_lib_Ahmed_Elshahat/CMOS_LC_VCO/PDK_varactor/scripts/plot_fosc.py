import sys
import numpy as np
import pandas as pd

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


file_name1 = sys.argv[1]   #file name of the netlist subscribes the circuit
counter = sys.argv[2]        #expresion of the output voltage 

for i in range (0,int(counter)):
    counter_str = str(i)
    file_name = file_name1+counter_str

    print(file_name)