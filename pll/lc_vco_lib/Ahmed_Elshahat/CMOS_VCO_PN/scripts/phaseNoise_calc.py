import pandas as pd 
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Cursor


def moving_average(a, n=3) :
    ret = np.cumsum(a, dtype=float)
    ret[n:] = ret[n:] - ret[:-n]
    return ret[n - 1:]
    
freq_file = pd.read_csv ("../csv_files/vdiff_fft.csv",index_col=False,usecols=[0],header=None, delimiter=r"\s+")
freq_array = freq_file.to_numpy()
freq_array = freq_array.ravel()
freq_array = np.array(freq_array)

mag_file = pd.read_csv ("../csv_files/vdiff_fft.csv",index_col=False,usecols=[1],header=None, delimiter=r"\s+")
mag_array = mag_file.to_numpy()
mag_array = mag_array.ravel()
mag_array = np.array(mag_array)

#print (freq_array)
#plt.plot(freq_array ,mag_array)
#plt.show()

#plt.plot(freq_array ,10*np.log10(mag_array))
#plt.show()

freqCenter = 2.3490795e9
channelSize = 6e6

freqResulution = freq_array[1]-freq_array[0]

freqCenter_diff_arr = np.absolute(freq_array-freqCenter)
freqCenter_idx = freqCenter_diff_arr.argmin()

freqStart_diff_arr = np.absolute(freq_array-freqCenter+channelSize/2)
freqStart_idx = freqStart_diff_arr.argmin()

freqStop_diff_arr = np.absolute(freq_array-freqCenter-channelSize/2)
freqStop_idx = freqStop_diff_arr.argmin()

freq_array = freq_array[freqCenter_idx:freqStop_idx+1]
mag_array  = mag_array [freqCenter_idx:freqStop_idx+1]
mag_array = 10*np.log10(mag_array)

pts_num = 3
window_size = (pts_num-1)*freqResulution
phaseNoise = moving_average(mag_array,pts_num) - 10*np.log10(window_size) - mag_array[0]
offset = np.arange(0,phaseNoise.shape[0])*freqResulution +(window_size/2)

#plt.plot(freq_array ,mag_array)
#plt.show()

x = plt.plot(offset/1000000 ,phaseNoise,linewidth=2.5)
plt.xlim([0,channelSize/(2*1000000)])
plt.grid()
plt.xlabel("Frequency Offset (MHZ)",fontsize=14)
plt.ylabel("Phase Noise (dB)",fontsize=14)
plt.title("CMOS LC VCO Phase Noise @ 2.35 GHZ With 20 KHZ Frequency Offset Step",fontsize=14)
plt.annotate("(1,-137)", (0.94,-133), fontsize=13,color="red")
plt.annotate("(2,-146)", (1.94,-140), fontsize=13,color="red")
plt.annotate("(3,-153)", (3,-153), fontsize=13,color="red")
plt.show()
'''
print(mag_array)
print("*************")
print(moving_average(mag_array,pts_num))
print("*************")'''
print(offset)
