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
vctrl = np.arange(0, 1.8+0.1, 0.1)



vp_ssss=get_arr("csv_files/vp_ssss.csv")
vp_sssf=get_arr("csv_files/vp_sssf.csv")
vp_ssfs=get_arr("csv_files/vp_ssfs.csv")
vp_ssff=get_arr("csv_files/vp_ssff.csv")
vp_sstt=get_arr("csv_files/vp_sstt.csv")
vp_sfss=get_arr("csv_files/vp_sfss.csv")
vp_sfsf=get_arr("csv_files/vp_sfsf.csv")
vp_sffs=get_arr("csv_files/vp_sffs.csv")
vp_sfff=get_arr("csv_files/vp_sfff.csv")
vp_sftt=get_arr("csv_files/vp_sftt.csv")
vp_stss=get_arr("csv_files/vp_stss.csv")
vp_stsf=get_arr("csv_files/vp_stsf.csv")
vp_stfs=get_arr("csv_files/vp_stfs.csv")
vp_stff=get_arr("csv_files/vp_stff.csv")
vp_sttt=get_arr("csv_files/vp_sttt.csv")

vp_fsss=get_arr("csv_files/vp_fsss.csv")
vp_fssf=get_arr("csv_files/vp_fssf.csv")
vp_fsfs=get_arr("csv_files/vp_fsfs.csv")
vp_fsff=get_arr("csv_files/vp_fsff.csv")
vp_fstt=get_arr("csv_files/vp_fstt.csv")
vp_ffss=get_arr("csv_files/vp_ffss.csv")
vp_ffsf=get_arr("csv_files/vp_ffsf.csv")
vp_fffs=get_arr("csv_files/vp_fffs.csv")
vp_ffff=get_arr("csv_files/vp_ffff.csv")
vp_fftt=get_arr("csv_files/vp_fftt.csv")
vp_ftss=get_arr("csv_files/vp_ftss.csv")
vp_ftsf=get_arr("csv_files/vp_ftsf.csv")
vp_ftfs=get_arr("csv_files/vp_ftfs.csv")
vp_ftff=get_arr("csv_files/vp_ftff.csv")
vp_fttt=get_arr("csv_files/vp_fttt.csv")

vp_tsss=get_arr("csv_files/vp_tsss.csv")
vp_tssf=get_arr("csv_files/vp_tssf.csv")
vp_tsfs=get_arr("csv_files/vp_tsfs.csv")
vp_tsff=get_arr("csv_files/vp_tsff.csv")
vp_tstt=get_arr("csv_files/vp_tstt.csv")
vp_tfss=get_arr("csv_files/vp_tfss.csv")
vp_tfsf=get_arr("csv_files/vp_tfsf.csv")
vp_tffs=get_arr("csv_files/vp_tffs.csv")
vp_tfff=get_arr("csv_files/vp_tfff.csv")
vp_tftt=get_arr("csv_files/vp_tftt.csv")
vp_ttss=get_arr("csv_files/vp_ttss.csv")
vp_ttsf=get_arr("csv_files/vp_ttsf.csv")
vp_ttfs=get_arr("csv_files/vp_ttfs.csv")
vp_ttff=get_arr("csv_files/vp_ttff.csv")
vp_tttt=get_arr("csv_files/vp_tttt.csv")
#######################################################################################
fig, ax = plt.subplots(figsize=(5, 5))
plt.subplots_adjust(right=0.955)
plt.subplots_adjust(left=0.04)
plt.subplots_adjust(top=0.975)
plt.subplots_adjust(bottom=0.06)


ssss, = ax.plot(vctrl, np.unique(vp_ssss), linewidth=2.5, label='ssss')
sssf, = ax.plot(vctrl, np.unique(vp_sssf), linewidth=2.5, label='sssf')
ssfs, = ax.plot(vctrl, np.unique(vp_ssfs), linewidth=2.5, label='ssfs')
ssff, = ax.plot(vctrl, np.unique(vp_ssff), linewidth=2.5, label='ssff')
sstt, = ax.plot(vctrl, np.unique(vp_sstt), linewidth=2.5, label='sstt')
sfss, = ax.plot(vctrl, np.unique(vp_sfss), linewidth=2.5, label='sfss')
sfsf, = ax.plot(vctrl, np.unique(vp_sfsf), linewidth=2.5, label='sfsf')
sffs, = ax.plot(vctrl, np.unique(vp_sffs), linewidth=2.5, label='sffs')
sfff, = ax.plot(vctrl, np.unique(vp_sfff), linewidth=2.5, label='sfff')
sftt, = ax.plot(vctrl, np.unique(vp_sftt), linewidth=2.5, label='sftt')
stss, = ax.plot(vctrl, np.unique(vp_stss), linewidth=2.5, label='stss')
stsf, = ax.plot(vctrl, np.unique(vp_stsf), linewidth=2.5, label='stsf')
stfs, = ax.plot(vctrl, np.unique(vp_stfs), linewidth=2.5, label='stfs')
stff, = ax.plot(vctrl, np.unique(vp_stff), linewidth=2.5, label='stff')
sttt, = ax.plot(vctrl, np.unique(vp_sttt), linewidth=2.5, label='sttt')

fsss, = ax.plot(vctrl, np.unique(vp_fsss), linewidth=2.5, label='fsss')
fssf, = ax.plot(vctrl, np.unique(vp_fssf), linewidth=2.5, label='fssf')
fsfs, = ax.plot(vctrl, np.unique(vp_fsfs), linewidth=2.5, label='fsfs')
fsff, = ax.plot(vctrl, np.unique(vp_fsff), linewidth=2.5, label='fsff')
fstt, = ax.plot(vctrl, np.unique(vp_fstt), linewidth=2.5, label='fstt')
ffss, = ax.plot(vctrl, np.unique(vp_ffss), linewidth=2.5, label='ffss')
ffsf, = ax.plot(vctrl, np.unique(vp_ffsf), linewidth=2.5, label='ffsf')
fffs, = ax.plot(vctrl, np.unique(vp_fffs), linewidth=2.5, label='fffs')
ffff, = ax.plot(vctrl, np.unique(vp_ffff), linewidth=2.5, label='ffff')
fftt, = ax.plot(vctrl, np.unique(vp_fftt), linewidth=2.5, label='fftt')
ftss, = ax.plot(vctrl, np.unique(vp_ftss), linewidth=2.5, label='ftss')
ftsf, = ax.plot(vctrl, np.unique(vp_ftsf), linewidth=2.5, label='ftsf')
ftfs, = ax.plot(vctrl, np.unique(vp_ftfs), linewidth=2.5, label='ftfs')
ftff, = ax.plot(vctrl, np.unique(vp_ftff), linewidth=2.5, label='ftff')
fttt, = ax.plot(vctrl, np.unique(vp_fttt), linewidth=2.5, label='fttt')

tsss, = ax.plot(vctrl, np.unique(vp_tsss), linewidth=2.5, label='tsss')
tssf, = ax.plot(vctrl, np.unique(vp_tssf), linewidth=2.5, label='tssf')
tsfs, = ax.plot(vctrl, np.unique(vp_tsfs), linewidth=2.5, label='tsfs')
tsff, = ax.plot(vctrl, np.unique(vp_tsff), linewidth=2.5, label='tsff')
tstt, = ax.plot(vctrl, np.unique(vp_tstt), linewidth=2.5, label='tstt')
tfss, = ax.plot(vctrl, np.unique(vp_tfss), linewidth=2.5, label='tfss')
tfsf, = ax.plot(vctrl, np.unique(vp_tfsf), linewidth=2.5, label='tfsf')
tffs, = ax.plot(vctrl, np.unique(vp_tffs), linewidth=2.5, label='tffs')
tfff, = ax.plot(vctrl, np.unique(vp_tfff), linewidth=2.5, label='tfff')
tftt, = ax.plot(vctrl, np.unique(vp_tftt), linewidth=2.5, label='tftt')
ttss, = ax.plot(vctrl, np.unique(vp_ttss), linewidth=2.5, label='ttss')
ttsf, = ax.plot(vctrl, np.unique(vp_ttsf), linewidth=2.5, label='ttsf')
ttfs, = ax.plot(vctrl, np.unique(vp_ttfs), linewidth=2.5, label='ttfs')
ttff, = ax.plot(vctrl, np.unique(vp_ttff), linewidth=2.5, label='ttff')
tttt, = ax.plot(vctrl, np.unique(vp_tttt), linewidth=2.5, label='tttt')


#ISS_zero_index = np.where(swing_vs_ISS<= 0.0001)[0]
#swing_vs_ISS = np.delete(swing_vs_ISS , ISS_zero_index[2:len(ISS_zero_index)])
#ISS_arr = np.delete(ISS_arr , ISS_zero_index[2:len(ISS_zero_index)])


###################################################################################
legend = plt.legend(bbox_to_anchor=(1.05, 1.03),loc='upper right')

#ffff_legend, fffs_legend, ffsf_legend, ffss_legend, fsff_legend, fsfs_legend, fssf_legend, fsss_legend, sfff_legend, sffs_legend, sfsf_legend, sfss_legend, ssff_legend, ssfs_legend, sssf_legend, ssss_legend, tttt_legend = legend.get_lines()

ssss_legend, sssf_legend, ssfs_legend, ssff_legend, sstt_legend, sfss_legend, sfsf_legend, sffs_legend, sfff_legend, sftt_legend, stss_legend, stsf_legend, stfs_legend, stff_legend, sttt_legend, fsss_legend, fssf_legend, fsfs_legend, fsff_legend, fstt_legend, ffss_legend, ffsf_legend, fffs_legend, ffff_legend, fftt_legend, ftss_legend, ftsf_legend, ftfs_legend, ftff_legend, fttt_legend, tsss_legend, tssf_legend, tsfs_legend, tsff_legend, tstt_legend, tfss_legend, tfsf_legend, tffs_legend, tfff_legend, tftt_legend, ttss_legend, ttsf_legend, ttfs_legend, ttff_legend, tttt_legend = legend.get_lines()

#####################################################################################
ssss_legend.set_picker(True)
sssf_legend.set_picker(True)
ssfs_legend.set_picker(True)
ssff_legend.set_picker(True)
sstt_legend.set_picker(True)
sfss_legend.set_picker(True)
sfsf_legend.set_picker(True)
sffs_legend.set_picker(True)
sfff_legend.set_picker(True)
sftt_legend.set_picker(True)
stss_legend.set_picker(True)
stsf_legend.set_picker(True)
stfs_legend.set_picker(True)
stff_legend.set_picker(True)
sttt_legend.set_picker(True)

fsss_legend.set_picker(True)
fssf_legend.set_picker(True)
fsfs_legend.set_picker(True)
fsff_legend.set_picker(True)
fstt_legend.set_picker(True)
ffss_legend.set_picker(True)
ffsf_legend.set_picker(True)
fffs_legend.set_picker(True)
ffff_legend.set_picker(True)
fftt_legend.set_picker(True)
ftss_legend.set_picker(True)
ftsf_legend.set_picker(True)
ftfs_legend.set_picker(True)
ftff_legend.set_picker(True)
fttt_legend.set_picker(True)

tsss_legend.set_picker(True)
tssf_legend.set_picker(True)
tsfs_legend.set_picker(True)
tsff_legend.set_picker(True)
tstt_legend.set_picker(True)
tfss_legend.set_picker(True)
tfsf_legend.set_picker(True)
tffs_legend.set_picker(True)
tfff_legend.set_picker(True)
tftt_legend.set_picker(True)
ttss_legend.set_picker(True)
ttsf_legend.set_picker(True)
ttfs_legend.set_picker(True)
ttff_legend.set_picker(True)
tttt_legend.set_picker(True)

#######################################################################################

ssss_legend.set_pickradius(10)
sssf_legend.set_pickradius(10)
ssfs_legend.set_pickradius(10)
ssff_legend.set_pickradius(10)
sstt_legend.set_pickradius(10)
sfss_legend.set_pickradius(10)
sfsf_legend.set_pickradius(10)
sffs_legend.set_pickradius(10)
sfff_legend.set_pickradius(10)
sftt_legend.set_pickradius(10)
stss_legend.set_pickradius(10)
stsf_legend.set_pickradius(10)
stfs_legend.set_pickradius(10)
stff_legend.set_pickradius(10)
sttt_legend.set_pickradius(10)

fsss_legend.set_pickradius(10)
fssf_legend.set_pickradius(10)
fsfs_legend.set_pickradius(10)
fsff_legend.set_pickradius(10)
fstt_legend.set_pickradius(10)
ffss_legend.set_pickradius(10)
ffsf_legend.set_pickradius(10)
fffs_legend.set_pickradius(10)
ffff_legend.set_pickradius(10)
fftt_legend.set_pickradius(10)
ftss_legend.set_pickradius(10)
ftsf_legend.set_pickradius(10)
ftfs_legend.set_pickradius(10)
ftff_legend.set_pickradius(10)
fttt_legend.set_pickradius(10)

tsss_legend.set_pickradius(10)
tssf_legend.set_pickradius(10)
tsfs_legend.set_pickradius(10)
tsff_legend.set_pickradius(10)
tstt_legend.set_pickradius(10)
tfss_legend.set_pickradius(10)
tfsf_legend.set_pickradius(10)
tffs_legend.set_pickradius(10)
tfff_legend.set_pickradius(10)
tftt_legend.set_pickradius(10)
ttss_legend.set_pickradius(10)
ttsf_legend.set_pickradius(10)
ttfs_legend.set_pickradius(10)
ttff_legend.set_pickradius(10)
tttt_legend.set_pickradius(10)
##########################################################################################
graphs = {}


graphs[ssss_legend]=ssss
graphs[sssf_legend]=sssf
graphs[ssfs_legend]=ssfs
graphs[ssff_legend]=ssff
graphs[sstt_legend]=sstt
graphs[sfss_legend]=sfss
graphs[sfsf_legend]=sfsf
graphs[sffs_legend]=sffs
graphs[sfff_legend]=sfff
graphs[sftt_legend]=sftt
graphs[stss_legend]=stss
graphs[stsf_legend]=stsf
graphs[stfs_legend]=stfs
graphs[stff_legend]=stff
graphs[sttt_legend]=sttt

graphs[fsss_legend]=fsss
graphs[fssf_legend]=fssf
graphs[fsfs_legend]=fsfs
graphs[fsff_legend]=fsff
graphs[fstt_legend]=fstt
graphs[ffss_legend]=ffss
graphs[ffsf_legend]=ffsf
graphs[fffs_legend]=fffs
graphs[ffff_legend]=ffff
graphs[fftt_legend]=fftt
graphs[ftss_legend]=ftss
graphs[ftsf_legend]=ftsf
graphs[ftfs_legend]=ftfs
graphs[ftff_legend]=ftff
graphs[fttt_legend]=fttt

graphs[tsss_legend]=tsss
graphs[tssf_legend]=tssf
graphs[tsfs_legend]=tsfs
graphs[tsff_legend]=tsff
graphs[tstt_legend]=tstt
graphs[tfss_legend]=tfss
graphs[tfsf_legend]=tfsf
graphs[tffs_legend]=tffs
graphs[tfff_legend]=tfff
graphs[tftt_legend]=tftt
graphs[ttss_legend]=ttss
graphs[ttsf_legend]=ttsf
graphs[ttfs_legend]=ttfs
graphs[ttff_legend]=ttff
graphs[tttt_legend]=tttt


#############################################################################################
plt.connect('pick_event', on_pick)
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("Oscillation Frequency (HZ)",fontsize=14)
plt.title("Oscillation Frequency Vs Control Voltage",fontsize=14)
plt.grid()
plt.tight_layout()
#plt.xlim([0, 1.9])
plt.show()

