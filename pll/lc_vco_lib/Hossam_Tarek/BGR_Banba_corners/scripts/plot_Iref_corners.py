
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

def on_pick(event):
    legend = event.artist
    isVisible = legend.get_visible()

    graphs[legend].set_visible(not isVisible)
    legend.set_visible(not isVisible)

    fig.canvas.draw()



#plotting corners=======================================================

# plotting Iref  versus time


Iref_ffff = get_arr("csv_files/Iref_tran_ffff.csv")
Iref_fffs = get_arr("csv_files/Iref_tran_fffs.csv")
Iref_ffsf = get_arr("csv_files/Iref_tran_ffsf.csv")
Iref_ffss = get_arr("csv_files/Iref_tran_ffss.csv")
Iref_fsff = get_arr("csv_files/Iref_tran_fsff.csv")
Iref_fsfs = get_arr("csv_files/Iref_tran_fsfs.csv")
Iref_fssf = get_arr("csv_files/Iref_tran_fssf.csv")
Iref_fsss = get_arr("csv_files/Iref_tran_fsss.csv")
Iref_sfff = get_arr("csv_files/Iref_tran_sfff.csv")
Iref_sffs = get_arr("csv_files/Iref_tran_sffs.csv")
Iref_sfsf = get_arr("csv_files/Iref_tran_sfsf.csv")
Iref_sfss = get_arr("csv_files/Iref_tran_sfss.csv")
Iref_ssff = get_arr("csv_files/Iref_tran_ssff.csv")
Iref_ssfs = get_arr("csv_files/Iref_tran_ssfs.csv")
Iref_sssf = get_arr("csv_files/Iref_tran_sssf.csv")
Iref_ssss = get_arr("csv_files/Iref_tran_ssss.csv")
Iref_tttt = get_arr("csv_files/Iref_tran_tttt.csv")


print (len (Iref_ffff))
print (len (Iref_fffs)) 
print (len (Iref_ffsf)) 
print (len (Iref_ffss)) 
print (len (Iref_fsff))
print (len (Iref_fsfs)) 
print (len (Iref_fssf)) 
print (len (Iref_fsss)) 

#time = np.arange(0, 500e-6, 1e-6)
time = np.linspace ( 0, 500e-6,len(Iref_tttt))
fig, ax = plt.subplots(figsize=(5, 5))

ffff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ffff)), Iref_ffff, linewidth=2.5, label='ffff')
fffs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fffs)), Iref_fffs, linewidth=2.5, label='fffs')
ffsf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ffsf)), Iref_ffsf, linewidth=2.5, label='ffsf')
ffss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ffss)), Iref_ffss, linewidth=2.5, label='ffss')
fsff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fsff)), Iref_fsff, linewidth=2.5, label='fsff')
fsfs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fsfs)), Iref_fsfs, linewidth=2.5, label='fsfs')
fssf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fssf)), Iref_fssf, linewidth=2.5, label='fssf')
fsss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fsss)), Iref_fsss, linewidth=2.5, label='fsss')
sfff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sfff)), Iref_sfff, linewidth=2.5, label='sfff')
sffs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sffs)), Iref_sffs, linewidth=2.5, label='sffs')
sfsf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sfsf)), Iref_sfsf, linewidth=2.5, label='sfsf')
sfss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sfss)), Iref_sfss, linewidth=2.5, label='sfss')
ssff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ssff)), Iref_ssff, linewidth=2.5, label='ssff')
ssfs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ssfs)), Iref_ssfs, linewidth=2.5, label='ssfs')
sssf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sssf)), Iref_sssf, linewidth=2.5, label='sssf')
ssss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ssss)), Iref_ssss, linewidth=2.5, label='ssss')
tttt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tttt)), Iref_tttt, linewidth=2.5, label='tttt')

legend = plt.legend(loc='upper right')

ffff_legend, fffs_legend, ffsf_legend, ffss_legend, fsff_legend, fsfs_legend, fssf_legend, fsss_legend, sfff_legend, sffs_legend, sfsf_legend, sfss_legend, ssff_legend, ssfs_legend, sssf_legend, ssss_legend, tttt_legend = legend.get_lines()

ffff_legend.set_picker(True)
fffs_legend.set_picker(True)
ffsf_legend.set_picker(True)
ffss_legend.set_picker(True)
fsff_legend.set_picker(True)
fsfs_legend.set_picker(True)
fssf_legend.set_picker(True)
fsss_legend.set_picker(True)
sfff_legend.set_picker(True)
sffs_legend.set_picker(True)
sfsf_legend.set_picker(True)
sfss_legend.set_picker(True)
ssff_legend.set_picker(True)
ssfs_legend.set_picker(True)
sssf_legend.set_picker(True)
ssss_legend.set_picker(True)
tttt_legend.set_picker(True)

ffff_legend.set_pickradius(10)
fffs_legend.set_pickradius(10)
ffsf_legend.set_pickradius(10)
ffss_legend.set_pickradius(10)
fsff_legend.set_pickradius(10)
fsfs_legend.set_pickradius(10)
fssf_legend.set_pickradius(10)
fsss_legend.set_pickradius(10)
sfff_legend.set_pickradius(10)
sffs_legend.set_pickradius(10)
sfsf_legend.set_pickradius(10)
sfss_legend.set_pickradius(10)
ssff_legend.set_pickradius(10)
ssfs_legend.set_pickradius(10)
sssf_legend.set_pickradius(10)
ssss_legend.set_pickradius(10)
tttt_legend.set_pickradius(10)

graphs = {}

graphs[ffff_legend]=ffff
graphs[fffs_legend]=fffs
graphs[ffsf_legend]=ffsf
graphs[ffss_legend]=ffss
graphs[fsff_legend]=fsff
graphs[fsfs_legend]=fsfs
graphs[fssf_legend]=fssf
graphs[fsss_legend]=fsss
graphs[sfff_legend]=sfff
graphs[sffs_legend]=sffs
graphs[sfsf_legend]=sfsf
graphs[sfss_legend]=sfss
graphs[ssff_legend]=ssff
graphs[ssfs_legend]=ssfs
graphs[sssf_legend]=sssf
graphs[ssss_legend]=ssss
graphs[tttt_legend]=tttt

plt.connect('pick_event', on_pick)
plt.xlabel("Time (uS)",fontsize=14)
plt.ylabel("Iref",fontsize=14)
plt.title("Iref_tran ",fontsize=14)
plt.grid()
plt.show()

