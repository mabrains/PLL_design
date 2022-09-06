
# Importing libraries
import matplotlib.pyplot as plt
import math
import pandas as pd 
import numpy as np
from scipy.interpolate import interp1d


def get_arr(file_name):
	file = pd.read_csv (file_name,index_col=False,usecols=[1],header=None, delimiter=r"\s+")
	array = file.to_numpy()
	array = array.ravel()
	array = np.array(array)
	return array

def D(xlist,ylist):
    yprime = np.diff(ylist)/np.diff(xlist)
    xprime=[]
    for i in range(len(yprime)):
        xtemp = (xlist[i+1]+xlist[i])/2
        xprime = np.append(xprime,xtemp)
    return xprime, yprime

# plotting FOSC  versus vctrl
f_osc = get_arr("../csv_files/fosc_vs_vctrl.csv")
vctrl = np.arange(0, 1.6+0.05, 0.05)

plt.plot(vctrl, f_osc, color='r',linewidth=2.5)   
plt.xlim(0.45,1.55)
plt.plot(0.508,2.35e9,'ro',color='b')
plt.plot(1.481,2.55e9,'ro',color='b')
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("Oscillation Frequency (HZ)",fontsize=14)
plt.title("Oscillation Frequency Vs Control Voltage",fontsize=14)
plt.legend()
plt.grid()
plt.show()


# plotting kvco  versus vctrl
xprime, yprime = D(vctrl,f_osc)
plt.plot(xprime,yprime*1e-6,color='r',linewidth=2.5)
plt.xlim(0.5,1.5)
plt.ylim(120,260)
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("KVCO (MHZ/V)",fontsize=14)
plt.title("Gain  Vs Control Voltage",fontsize=14)
plt.legend()
plt.grid()
plt.show()



# plotting voltage swing versus current
swing_vs_ISS = get_arr("../csv_files/swing_vs_ISS.csv")
ISS_arr = np.arange(1, 13+0.1, 0.1)

ISS_zero_index = np.where(swing_vs_ISS<= 0.0001)[0]
swing_vs_ISS = np.delete(swing_vs_ISS , ISS_zero_index[2:len(ISS_zero_index)])
ISS_arr = np.delete(ISS_arr , ISS_zero_index[2:len(ISS_zero_index)])

#f2 = interp1d(ISS_arr, swing_vs_ISS, kind='cubic')
#ISS_arr_new = np.linspace(ISS_arr[0], ISS_arr[len(ISS_arr)-1], num=54, endpoint=True)

plt.plot(ISS_arr, 2*swing_vs_ISS, color='r',linewidth=2.5)  
#plt.plot(ISS_arr_new, 2*f2(ISS_arr_new),'b',linewidth=2.5)
plt.xlabel("ISS (mA)",fontsize=14)
plt.ylabel("Peak To Peak Swing (V)",fontsize=14)
plt.title("Swing Vs Current Source \n \"Voltage-limited regime and Current-limited regime\"",fontsize=14)
plt.legend()
plt.grid()
plt.show()


# plotting voltage swing versus Inductance
swing_vs_Rp = get_arr("../csv_files/swing_vs_L.csv")
Rp_arr = np.arange(100, 2000+50, 50)

Rp_zero_index = np.where(swing_vs_Rp <= 0.0001)[0]
swing_vs_Rp = np.delete(swing_vs_Rp , Rp_zero_index[5:len(Rp_zero_index)+1])
Rp_arr = np.delete(Rp_arr , Rp_zero_index[5:len(Rp_zero_index)+1])

#f2 = interp1d(Rp_arr, swing_vs_Rp, kind='cubic')
#Rp_arr_new = np.linspace(Rp_arr[0], Rp_arr[len(Rp_arr)-1], num=54, endpoint=True)

plt.plot(Rp_arr, 2*swing_vs_Rp, color='r',linewidth=2.5)   
#plt.plot(Rp_arr_new, 2*f2(Rp_arr_new),'b',linewidth=2.5)
plt.xlabel("Rp (ohm)",fontsize=14)
plt.ylabel("Peak To Peak Swing (V)",fontsize=14)
plt.title("Swing Vs Inductunce \n \"Voltage-limited regime and Current-limited regime\" ",fontsize=14)
plt.legend()
plt.grid()
plt.show()




