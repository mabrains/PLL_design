
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

# plotting FOSC  versus vctrl
vctrl = np.arange(0, 1.6+0.05, 0.05)

f_osc_ffff = get_arr("csv_files/fosc_vs_vctrl_ffff.csv")
f_osc_fffs = get_arr("csv_files/fosc_vs_vctrl_fffs.csv")
f_osc_ffsf = get_arr("csv_files/fosc_vs_vctrl_ffsf.csv")
f_osc_ffss = get_arr("csv_files/fosc_vs_vctrl_ffss.csv")
f_osc_fsff = get_arr("csv_files/fosc_vs_vctrl_fsff.csv")
f_osc_fsfs = get_arr("csv_files/fosc_vs_vctrl_fsfs.csv")
f_osc_fssf = get_arr("csv_files/fosc_vs_vctrl_fssf.csv")
f_osc_fsss = get_arr("csv_files/fosc_vs_vctrl_fsss.csv")
f_osc_sfff = get_arr("csv_files/fosc_vs_vctrl_sfff.csv")
f_osc_sffs = get_arr("csv_files/fosc_vs_vctrl_sffs.csv")
f_osc_sfsf = get_arr("csv_files/fosc_vs_vctrl_sfsf.csv")
f_osc_sfss = get_arr("csv_files/fosc_vs_vctrl_sfss.csv")
f_osc_ssff = get_arr("csv_files/fosc_vs_vctrl_ssff.csv")
f_osc_ssfs = get_arr("csv_files/fosc_vs_vctrl_ssfs.csv")
f_osc_sssf = get_arr("csv_files/fosc_vs_vctrl_sssf.csv")
f_osc_ssss = get_arr("csv_files/fosc_vs_vctrl_ssss.csv")
f_osc_tttt = get_arr("csv_files/fosc_vs_vctrl_tttt.csv")


fig, ax = plt.subplots(figsize=(5, 5))

ffff, = ax.plot(vctrl, f_osc_ffff, linewidth=2.5, label='ffff')
fffs, = ax.plot(vctrl, f_osc_fffs, linewidth=2.5, label='fffs')
ffsf, = ax.plot(vctrl, f_osc_ffsf, linewidth=2.5, label='ffsf')
ffss, = ax.plot(vctrl, f_osc_ffss, linewidth=2.5, label='ffss')
fsff, = ax.plot(vctrl, f_osc_fsff, linewidth=2.5, label='fsff')
fsfs, = ax.plot(vctrl, f_osc_fsfs, linewidth=2.5, label='fsfs')
fssf, = ax.plot(vctrl, f_osc_fssf, linewidth=2.5, label='fssf')
fsss, = ax.plot(vctrl, f_osc_fsss, linewidth=2.5, label='fsss')
sfff, = ax.plot(vctrl, f_osc_sfff, linewidth=2.5, label='sfff')
sffs, = ax.plot(vctrl, f_osc_sffs, linewidth=2.5, label='sffs')
sfsf, = ax.plot(vctrl, f_osc_sfsf, linewidth=2.5, label='sfsf')
sfss, = ax.plot(vctrl, f_osc_sfss, linewidth=2.5, label='sfss')
ssff, = ax.plot(vctrl, f_osc_ssff, linewidth=2.5, label='ssff')
ssfs, = ax.plot(vctrl, f_osc_ssfs, linewidth=2.5, label='ssfs')
sssf, = ax.plot(vctrl, f_osc_sssf, linewidth=2.5, label='sssf')
ssss, = ax.plot(vctrl, f_osc_ssss, linewidth=2.5, label='ssss')
tttt, = ax.plot(vctrl, f_osc_tttt, linewidth=2.5, label='tttt')

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
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("Oscillation Frequency (HZ)",fontsize=14)
plt.title("Oscillation Frequency Vs Control Voltage",fontsize=14)
plt.grid()
plt.show()

