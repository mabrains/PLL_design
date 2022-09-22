
# Importing libraries
from turtle import color
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



# plotting corners=======================================================

# plotting Iref  versus time


Iref_ssss=get_arr("csv_files/Iref_tran_ssss.csv")
Iref_sssf=get_arr("csv_files/Iref_tran_sssf.csv")
Iref_ssfs=get_arr("csv_files/Iref_tran_ssfs.csv")
Iref_ssff=get_arr("csv_files/Iref_tran_ssff.csv")
Iref_sstt=get_arr("csv_files/Iref_tran_sstt.csv")
Iref_sfss=get_arr("csv_files/Iref_tran_sfss.csv")
Iref_sfsf=get_arr("csv_files/Iref_tran_sfsf.csv")
Iref_sffs=get_arr("csv_files/Iref_tran_sffs.csv")
Iref_sfff=get_arr("csv_files/Iref_tran_sfff.csv")
Iref_sftt=get_arr("csv_files/Iref_tran_sftt.csv")
Iref_stss=get_arr("csv_files/Iref_tran_stss.csv")
Iref_stsf=get_arr("csv_files/Iref_tran_stsf.csv")
Iref_stfs=get_arr("csv_files/Iref_tran_stfs.csv")
Iref_stff=get_arr("csv_files/Iref_tran_stff.csv")
Iref_sttt=get_arr("csv_files/Iref_tran_sttt.csv")

Iref_fsss=get_arr("csv_files/Iref_tran_fsss.csv")
Iref_fssf=get_arr("csv_files/Iref_tran_fssf.csv")
Iref_fsfs=get_arr("csv_files/Iref_tran_fsfs.csv")
Iref_fsff=get_arr("csv_files/Iref_tran_fsff.csv")
Iref_fstt=get_arr("csv_files/Iref_tran_fstt.csv")
Iref_ffss=get_arr("csv_files/Iref_tran_ffss.csv")
Iref_ffsf=get_arr("csv_files/Iref_tran_ffsf.csv")
Iref_fffs=get_arr("csv_files/Iref_tran_fffs.csv")
Iref_ffff=get_arr("csv_files/Iref_tran_ffff.csv")
Iref_fftt=get_arr("csv_files/Iref_tran_fftt.csv")
Iref_ftss=get_arr("csv_files/Iref_tran_ftss.csv")
Iref_ftsf=get_arr("csv_files/Iref_tran_ftsf.csv")
Iref_ftfs=get_arr("csv_files/Iref_tran_ftfs.csv")
Iref_ftff=get_arr("csv_files/Iref_tran_ftff.csv")
Iref_fttt=get_arr("csv_files/Iref_tran_fttt.csv")

Iref_tsss=get_arr("csv_files/Iref_tran_tsss.csv")
Iref_tssf=get_arr("csv_files/Iref_tran_tssf.csv")
Iref_tsfs=get_arr("csv_files/Iref_tran_tsfs.csv")
Iref_tsff=get_arr("csv_files/Iref_tran_tsff.csv")
Iref_tstt=get_arr("csv_files/Iref_tran_tstt.csv")
Iref_tfss=get_arr("csv_files/Iref_tran_tfss.csv")
Iref_tfsf=get_arr("csv_files/Iref_tran_tfsf.csv")
Iref_tffs=get_arr("csv_files/Iref_tran_tffs.csv")
Iref_tfff=get_arr("csv_files/Iref_tran_tfff.csv")
Iref_tftt=get_arr("csv_files/Iref_tran_tftt.csv")
Iref_ttss=get_arr("csv_files/Iref_tran_ttss.csv")
Iref_ttsf=get_arr("csv_files/Iref_tran_ttsf.csv")
Iref_ttfs=get_arr("csv_files/Iref_tran_ttfs.csv")
Iref_ttff=get_arr("csv_files/Iref_tran_ttff.csv")
Iref_tttt=get_arr("csv_files/Iref_tran_tttt.csv")

time = np.linspace ( 0, 500e-6,len(Iref_tttt))
#######################################################################################
fig, ax = plt.subplots(figsize=(5, 5))
#plt.subplots_adjust(right=0.955)
#plt.subplots_adjust(left=0.04)
#plt.subplots_adjust(top=0.975)
#plt.subplots_adjust(bottom=0.06)


ssss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ssss)), Iref_ssss, linewidth=2.5, label='ssss')
sssf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sssf)), Iref_sssf, linewidth=2.5, label='sssf')
ssfs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ssfs)), Iref_ssfs, linewidth=2.5, label='ssfs')
ssff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ssff)), Iref_ssff, linewidth=2.5, label='ssff')
sstt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sstt)), Iref_sstt, linewidth=2.5, label='sstt')
sfss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sfss)), Iref_sfss, linewidth=2.5, label='sfss')
sfsf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sfsf)), Iref_sfsf, linewidth=2.5, label='sfsf')
sffs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sffs)), Iref_sffs, linewidth=2.5, label='sffs')
sfff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sfff)), Iref_sfff, linewidth=2.5, label='sfff')
sftt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sftt)), Iref_sftt, linewidth=2.5, label='sftt')
stss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_stss)), Iref_stss, linewidth=2.5, label='stss')
stsf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_stsf)), Iref_stsf, linewidth=2.5, label='stsf')
stfs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_stfs)), Iref_stfs, linewidth=2.5, label='stfs')
stff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_stff)) ,Iref_stff, linewidth=2.5, label='stff')
sttt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_sttt)) ,Iref_sttt, linewidth=2.5, label='sttt')

fsss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fsss)), Iref_fsss, linewidth=2.5, label='fsss')
fssf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fssf)), Iref_fssf, linewidth=2.5, label='fssf')
fsfs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fsfs)), Iref_fsfs, linewidth=2.5, label='fsfs')
fsff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fsff)), Iref_fsff, linewidth=2.5, label='fsff')
fstt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fstt)), Iref_fstt, linewidth=2.5, label='fstt')
ffss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ffss)), Iref_ffss, linewidth=2.5, label='ffss')
ffsf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ffsf)), Iref_ffsf, linewidth=2.5, label='ffsf')
fffs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fffs)), Iref_fffs, linewidth=2.5, label='fffs')
ffff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ffff)), Iref_ffff, linewidth=2.5, label='ffff')
fftt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fftt)), Iref_fftt, linewidth=2.5, label='fftt')
ftss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ftss)), Iref_ftss, linewidth=2.5, label='ftss')
ftsf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ftsf)), Iref_ftsf, linewidth=2.5, label='ftsf')
ftfs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ftfs)), Iref_ftfs, linewidth=2.5, label='ftfs')
ftff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ftff)), Iref_ftff, linewidth=2.5, label='ftff')
fttt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_fttt)), Iref_fttt, linewidth=2.5, label='fttt')

tsss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tsss)), Iref_tsss, linewidth=2.5, label='tsss')
tssf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tssf)), Iref_tssf, linewidth=2.5, label='tssf')
tsfs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tsfs)), Iref_tsfs, linewidth=2.5, label='tsfs')
tsff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tsff)), Iref_tsff, linewidth=2.5, label='tsff')
tstt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tstt)), Iref_tstt, linewidth=2.5, label='tstt')
tfss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tfss)), Iref_tfss, linewidth=2.5, label='tfss')
tfsf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tfsf)), Iref_tfsf, linewidth=2.5, label='tfsf')
tffs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tffs)), Iref_tffs, linewidth=2.5, label='tffs')
tfff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tfff)), Iref_tfff, linewidth=2.5, label='tfff')
tftt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tftt)), Iref_tftt, linewidth=2.5, label='tftt')
ttss, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ttss)), Iref_ttss, linewidth=2.5, label='ttss')
ttsf, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ttsf)), Iref_ttsf, linewidth=2.5, label='ttsf')
ttfs, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ttfs)), Iref_ttfs, linewidth=2.5, label='ttfs')
ttff, = ax.plot(np.linspace (0,500e-6 ,len(Iref_ttff)), Iref_ttff, linewidth=2.5, label='ttff')
tttt, = ax.plot(np.linspace (0,500e-6 ,len(Iref_tttt)), Iref_tttt, linewidth=2.5, label='tttt')

#ISS_zero_index = np.where(swing_vs_ISS<= 0.0001)[0]
#swing_vs_ISS = np.delete(swing_vs_ISS , ISS_zero_index[2:len(ISS_zero_index)])
#ISS_arr = np.delete(ISS_arr , ISS_zero_index[2:len(ISS_zero_index)])


###################################################################################
legend = plt.legend(bbox_to_anchor=(1.05, 1.03),loc='upper right', labelspacing=0.15)

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
plt.xlabel("Time (uS)",fontsize=14)
plt.ylabel("Iref (A)",fontsize=14)
plt.title("Iref_tran",fontsize=14)
plt.grid()
plt.tight_layout()
#plt.xlim([0, 1.9])
plt.show()

