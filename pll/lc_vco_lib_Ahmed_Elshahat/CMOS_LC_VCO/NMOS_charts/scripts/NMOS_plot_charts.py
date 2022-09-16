
# Importing libraries
import matplotlib.pyplot as plt
import math
import pandas as pd 
import numpy as np

def get_arr(file_name):
	file = pd.read_csv (file_name,index_col=False,usecols=[1],header=None, delimiter=r"\s+")
	array = file.to_numpy()
	array = array.ravel()
	array = np.array(array)
	return array

def plott(x_axis,y_axis):
    plt.plot(x_axis[0,:], y_axis[0,:], color='r', label='L=0.15')
    plt.plot(x_axis[1,:], y_axis[1,:], color='g', label='L=0.4')
    plt.plot(x_axis[2,:], y_axis[2,:], color='b', label='L=0.6')
    plt.plot(x_axis[3,:], y_axis[3,:], color='c', label='L=0.8')
    plt.plot(x_axis[4,:], y_axis[4,:], color='m', label='L=1')

    plt.plot(x_axis[5,:], y_axis[5,:], color='y', label='L=1.2')
    plt.plot(x_axis[6,:], y_axis[6,:], color='k', label='L=1.4')
    plt.plot(x_axis[7,:], y_axis[7,:], color='b', label='L=1.6')
    plt.plot(x_axis[8,:], y_axis[8,:], color='r', label='L=1.8')
    plt.plot(x_axis[9,:], y_axis[9,:], color='g', label='L=2')

    plt.plot(x_axis[10,:], y_axis[10,:], color='b', label='L=2.2')
    plt.plot(x_axis[11,:], y_axis[11,:], color='c', label='L=2.4')
    plt.plot(x_axis[12,:], y_axis[12,:], color='m', label='L=2.6')
    plt.plot(x_axis[13,:], y_axis[13,:], color='y', label='L=2.8')
    plt.plot(x_axis[14,:], y_axis[14,:], color='k', label='L=3')

    plt.plot(x_axis[15,:], y_axis[15,:], color='b', label='L=3.2')
    plt.plot(x_axis[16,:], y_axis[16,:], color='r', label='L=3.4')
    plt.plot(x_axis[17,:], y_axis[17,:], color='g', label='L=3.6')
    plt.plot(x_axis[18,:], y_axis[18,:], color='b', label='L=3.8')
    plt.plot(x_axis[19,:], y_axis[19,:], color='c', label='L=4')

    plt.plot(x_axis[20,:], y_axis[20,:], color='m', label='L=4.2')
    plt.plot(x_axis[21,:], y_axis[21,:], color='y', label='L=4.4')
    plt.plot(x_axis[22,:], y_axis[22,:], color='k', label='L=4.6')


vgs = get_arr("../csv_files/vgs_vec.csv")
vgs = np.reshape(vgs, (23, 181))

gm_id = get_arr("../csv_files/gm_id_vec.csv")
gm_id = np.reshape(gm_id, (23, 181))

id = get_arr("../csv_files/id_vec.csv")
id = np.reshape(id, (23, 181))

gm = get_arr("../csv_files/gm_vec.csv")
gm = np.reshape(gm, (23, 181))

gds = get_arr("../csv_files/gds_vec.csv")
gds = np.reshape(gds, (23, 181))

cgg= get_arr("../csv_files/cgg_vec.csv")
cgg = np.reshape(cgg, (23, 181))

cdd = get_arr("../csv_files/cdd_vec.csv")
cdd = np.reshape(cdd, (23, 181))

cgs = get_arr("../csv_files/cgs_vec.csv")
cgs = np.reshape(cgs, (23, 181))

plott(gm_id,vgs)
plt.xlabel("GM/ID",fontsize=14)
plt.ylabel("VGS",fontsize=14)
plt.title("VGS vs GM/ID",fontsize=14)

plt.legend()
plt.grid()
plt.show()
