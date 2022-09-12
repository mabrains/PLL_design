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

def on_pick(event):
    legend = event.artist
    isVisible = legend.get_visible()

    graphs[legend].set_visible(not isVisible)
    legend.set_visible(not isVisible)

    fig.canvas.draw()


#plotting corners=======================================================

vctrl = np.arange(0, 1.8+0.1, 0.1)



f_osc_ssss=get_arr("csv_files/fosc_vs_vctrl_ssss.csv")
f_osc_sssf=get_arr("csv_files/fosc_vs_vctrl_sssf.csv")
f_osc_ssfs=get_arr("csv_files/fosc_vs_vctrl_ssfs.csv")
f_osc_ssff=get_arr("csv_files/fosc_vs_vctrl_ssff.csv")
f_osc_sstt=get_arr("csv_files/fosc_vs_vctrl_sstt.csv")
f_osc_sfss=get_arr("csv_files/fosc_vs_vctrl_sfss.csv")
f_osc_sfsf=get_arr("csv_files/fosc_vs_vctrl_sfsf.csv")
f_osc_sffs=get_arr("csv_files/fosc_vs_vctrl_sffs.csv")
f_osc_sfff=get_arr("csv_files/fosc_vs_vctrl_sfff.csv")
f_osc_sftt=get_arr("csv_files/fosc_vs_vctrl_sftt.csv")
f_osc_stss=get_arr("csv_files/fosc_vs_vctrl_stss.csv")
f_osc_stsf=get_arr("csv_files/fosc_vs_vctrl_stsf.csv")
f_osc_stfs=get_arr("csv_files/fosc_vs_vctrl_stfs.csv")
f_osc_stff=get_arr("csv_files/fosc_vs_vctrl_stff.csv")
f_osc_sttt=get_arr("csv_files/fosc_vs_vctrl_sttt.csv")

f_osc_fsss=get_arr("csv_files/fosc_vs_vctrl_fsss.csv")
f_osc_fssf=get_arr("csv_files/fosc_vs_vctrl_fssf.csv")
f_osc_fsfs=get_arr("csv_files/fosc_vs_vctrl_fsfs.csv")
f_osc_fsff=get_arr("csv_files/fosc_vs_vctrl_fsff.csv")
f_osc_fstt=get_arr("csv_files/fosc_vs_vctrl_fstt.csv")
f_osc_ffss=get_arr("csv_files/fosc_vs_vctrl_ffss.csv")
f_osc_ffsf=get_arr("csv_files/fosc_vs_vctrl_ffsf.csv")
f_osc_fffs=get_arr("csv_files/fosc_vs_vctrl_fffs.csv")
f_osc_ffff=get_arr("csv_files/fosc_vs_vctrl_ffff.csv")
f_osc_fftt=get_arr("csv_files/fosc_vs_vctrl_fftt.csv")
f_osc_ftss=get_arr("csv_files/fosc_vs_vctrl_ftss.csv")
f_osc_ftsf=get_arr("csv_files/fosc_vs_vctrl_ftsf.csv")
f_osc_ftfs=get_arr("csv_files/fosc_vs_vctrl_ftfs.csv")
f_osc_ftff=get_arr("csv_files/fosc_vs_vctrl_ftff.csv")
f_osc_fttt=get_arr("csv_files/fosc_vs_vctrl_fttt.csv")

f_osc_tsss=get_arr("csv_files/fosc_vs_vctrl_tsss.csv")
f_osc_tssf=get_arr("csv_files/fosc_vs_vctrl_tssf.csv")
f_osc_tsfs=get_arr("csv_files/fosc_vs_vctrl_tsfs.csv")
f_osc_tsff=get_arr("csv_files/fosc_vs_vctrl_tsff.csv")
f_osc_tstt=get_arr("csv_files/fosc_vs_vctrl_tstt.csv")
f_osc_tfss=get_arr("csv_files/fosc_vs_vctrl_tfss.csv")
f_osc_tfsf=get_arr("csv_files/fosc_vs_vctrl_tfsf.csv")
f_osc_tffs=get_arr("csv_files/fosc_vs_vctrl_tffs.csv")
f_osc_tfff=get_arr("csv_files/fosc_vs_vctrl_tfff.csv")
f_osc_tftt=get_arr("csv_files/fosc_vs_vctrl_tftt.csv")
f_osc_ttss=get_arr("csv_files/fosc_vs_vctrl_ttss.csv")
f_osc_ttsf=get_arr("csv_files/fosc_vs_vctrl_ttsf.csv")
f_osc_ttfs=get_arr("csv_files/fosc_vs_vctrl_ttfs.csv")
f_osc_ttff=get_arr("csv_files/fosc_vs_vctrl_ttff.csv")
f_osc_tttt=get_arr("csv_files/fosc_vs_vctrl_tttt.csv")
###############################################################

# plotting kvco  versus vctrl


ssss_xprime, ssss_yprime = D(vctrl, f_osc_ssss)
sssf_xprime, sssf_yprime = D(vctrl, f_osc_sssf)
ssfs_xprime, ssfs_yprime = D(vctrl, f_osc_ssfs)
ssff_xprime, ssff_yprime = D(vctrl, f_osc_ssff)
sstt_xprime, sstt_yprime = D(vctrl, f_osc_sstt)
sfss_xprime, sfss_yprime = D(vctrl, f_osc_sfss)
sfsf_xprime, sfsf_yprime = D(vctrl, f_osc_sfsf)
sffs_xprime, sffs_yprime = D(vctrl, f_osc_sffs)
sfff_xprime, sfff_yprime = D(vctrl, f_osc_sfff)
sftt_xprime, sftt_yprime = D(vctrl, f_osc_sftt)
stss_xprime, stss_yprime = D(vctrl, f_osc_stss)
stsf_xprime, stsf_yprime = D(vctrl, f_osc_stsf)
stfs_xprime, stfs_yprime = D(vctrl, f_osc_stfs)
stff_xprime, stff_yprime = D(vctrl, f_osc_stff)
sttt_xprime, sttt_yprime = D(vctrl, f_osc_sttt)

fsss_xprime, fsss_yprime = D(vctrl, f_osc_fsss)
fssf_xprime, fssf_yprime = D(vctrl, f_osc_fssf)
fsfs_xprime, fsfs_yprime = D(vctrl, f_osc_fsfs)
fsff_xprime, fsff_yprime = D(vctrl, f_osc_fsff)
fstt_xprime, fstt_yprime = D(vctrl, f_osc_fstt)
ffss_xprime, ffss_yprime = D(vctrl, f_osc_ffss)
ffsf_xprime, ffsf_yprime = D(vctrl, f_osc_ffsf)
fffs_xprime, fffs_yprime = D(vctrl, f_osc_fffs)
ffff_xprime, ffff_yprime = D(vctrl, f_osc_ffff)
fftt_xprime, fftt_yprime = D(vctrl, f_osc_fftt)
ftss_xprime, ftss_yprime = D(vctrl, f_osc_ftss)
ftsf_xprime, ftsf_yprime = D(vctrl, f_osc_ftsf)
ftfs_xprime, ftfs_yprime = D(vctrl, f_osc_ftfs)
ftff_xprime, ftff_yprime = D(vctrl, f_osc_ftff)
fttt_xprime, fttt_yprime = D(vctrl, f_osc_fttt)

tsss_xprime, tsss_yprime = D(vctrl, f_osc_tsss)
tssf_xprime, tssf_yprime = D(vctrl, f_osc_tssf)
tsfs_xprime, tsfs_yprime = D(vctrl, f_osc_tsfs)
tsff_xprime, tsff_yprime = D(vctrl, f_osc_tsff)
tstt_xprime, tstt_yprime = D(vctrl, f_osc_tstt)
tfss_xprime, tfss_yprime = D(vctrl, f_osc_tfss)
tfsf_xprime, tfsf_yprime = D(vctrl, f_osc_tfsf)
tffs_xprime, tffs_yprime = D(vctrl, f_osc_tffs)
tfff_xprime, tfff_yprime = D(vctrl, f_osc_tfff)
tftt_xprime, tftt_yprime = D(vctrl, f_osc_tftt)
ttss_xprime, ttss_yprime = D(vctrl, f_osc_ttss)
ttsf_xprime, ttsf_yprime = D(vctrl, f_osc_ttsf)
ttfs_xprime, ttfs_yprime = D(vctrl, f_osc_ttfs)
ttff_xprime, ttff_yprime = D(vctrl, f_osc_ttff)
tttt_xprime, tttt_yprime = D(vctrl, f_osc_tttt)
################################################################
fig, ax = plt.subplots(figsize=(5, 5))
plt.subplots_adjust(right=0.955)
plt.subplots_adjust(left=0.04)
plt.subplots_adjust(top=0.975)
plt.subplots_adjust(bottom=0.06)

ssss, = ax.plot(ssss_xprime, ssss_yprime*1e-6, linewidth=2.5, label='ssss')
sssf, = ax.plot(sssf_xprime, sssf_yprime*1e-6, linewidth=2.5, label='sssf')
ssfs, = ax.plot(ssfs_xprime, ssfs_yprime*1e-6, linewidth=2.5, label='ssfs')
ssff, = ax.plot(ssff_xprime, ssff_yprime*1e-6, linewidth=2.5, label='ssff')
sstt, = ax.plot(sstt_xprime, sstt_yprime*1e-6, linewidth=2.5, label='sstt')
sfss, = ax.plot(sfss_xprime, sfss_yprime*1e-6, linewidth=2.5, label='sfss')
sfsf, = ax.plot(sfsf_xprime, sfsf_yprime*1e-6, linewidth=2.5, label='sfsf')
sffs, = ax.plot(sffs_xprime, sffs_yprime*1e-6, linewidth=2.5, label='sffs')
sfff, = ax.plot(sfff_xprime, sfff_yprime*1e-6, linewidth=2.5, label='sfff')
sftt, = ax.plot(sftt_xprime, sftt_yprime*1e-6, linewidth=2.5, label='sftt')
stss, = ax.plot(stss_xprime, stss_yprime*1e-6, linewidth=2.5, label='stss')
stsf, = ax.plot(stsf_xprime, stsf_yprime*1e-6, linewidth=2.5, label='stsf')
stfs, = ax.plot(stfs_xprime, stfs_yprime*1e-6, linewidth=2.5, label='stfs')
stff, = ax.plot(stff_xprime, stff_yprime*1e-6, linewidth=2.5, label='stff')
sttt, = ax.plot(sttt_xprime, sttt_yprime*1e-6, linewidth=2.5, label='sttt')

fsss, = ax.plot(fsss_xprime, fsss_yprime*1e-6, linewidth=2.5, label='fsss')
fssf, = ax.plot(fssf_xprime, fssf_yprime*1e-6, linewidth=2.5, label='fssf')
fsfs, = ax.plot(fsfs_xprime, fsfs_yprime*1e-6, linewidth=2.5, label='fsfs')
fsff, = ax.plot(fsff_xprime, fsff_yprime*1e-6, linewidth=2.5, label='fsff')
fstt, = ax.plot(fstt_xprime, fstt_yprime*1e-6, linewidth=2.5, label='fstt')
ffss, = ax.plot(ffss_xprime, ffss_yprime*1e-6, linewidth=2.5, label='ffss')
ffsf, = ax.plot(ffsf_xprime, ffsf_yprime*1e-6, linewidth=2.5, label='ffsf')
fffs, = ax.plot(fffs_xprime, fffs_yprime*1e-6, linewidth=2.5, label='fffs')
ffff, = ax.plot(ffff_xprime, ffff_yprime*1e-6, linewidth=2.5, label='ffff')
fftt, = ax.plot(fftt_xprime, fftt_yprime*1e-6, linewidth=2.5, label='fftt')
ftss, = ax.plot(ftss_xprime, ftss_yprime*1e-6, linewidth=2.5, label='ftss')
ftsf, = ax.plot(ftsf_xprime, ftsf_yprime*1e-6, linewidth=2.5, label='ftsf')
ftfs, = ax.plot(ftfs_xprime, ftfs_yprime*1e-6, linewidth=2.5, label='ftfs')
ftff, = ax.plot(ftff_xprime, ftff_yprime*1e-6, linewidth=2.5, label='ftff')
fttt, = ax.plot(fttt_xprime, fttt_yprime*1e-6, linewidth=2.5, label='fttt')

tsss, = ax.plot(tsss_xprime, tsss_yprime*1e-6, linewidth=2.5, label='tsss')
tssf, = ax.plot(tssf_xprime, tssf_yprime*1e-6, linewidth=2.5, label='tssf')
tsfs, = ax.plot(tsfs_xprime, tsfs_yprime*1e-6, linewidth=2.5, label='tsfs')
tsff, = ax.plot(tsff_xprime, tsff_yprime*1e-6, linewidth=2.5, label='tsff')
tstt, = ax.plot(tstt_xprime, tstt_yprime*1e-6, linewidth=2.5, label='tstt')
tfss, = ax.plot(tfss_xprime, tfss_yprime*1e-6, linewidth=2.5, label='tfss')
tfsf, = ax.plot(tfsf_xprime, tfsf_yprime*1e-6, linewidth=2.5, label='tfsf')
tffs, = ax.plot(tffs_xprime, tffs_yprime*1e-6, linewidth=2.5, label='tffs')
tfff, = ax.plot(tfff_xprime, tfff_yprime*1e-6, linewidth=2.5, label='tfff')
tftt, = ax.plot(tftt_xprime, tftt_yprime*1e-6, linewidth=2.5, label='tftt')
ttss, = ax.plot(ttss_xprime, ttss_yprime*1e-6, linewidth=2.5, label='ttss')
ttsf, = ax.plot(ttsf_xprime, ttsf_yprime*1e-6, linewidth=2.5, label='ttsf')
ttfs, = ax.plot(ttfs_xprime, ttfs_yprime*1e-6, linewidth=2.5, label='ttfs')
ttff, = ax.plot(ttff_xprime, ttff_yprime*1e-6, linewidth=2.5, label='ttff')
tttt, = ax.plot(tttt_xprime, tttt_yprime*1e-6, linewidth=2.5, label='tttt')

#####################################################################################
legend = plt.legend(bbox_to_anchor=(1.05, 1.03),loc='upper right')

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

#####################################################################
plt.connect('pick_event', on_pick)
plt.xlabel("Control Voltage (V)",fontsize=14)
plt.ylabel("KVCO (MHZ/V)",fontsize=14)
plt.title("Gain  Vs Control Voltage",fontsize=14)
plt.grid()
plt.show()