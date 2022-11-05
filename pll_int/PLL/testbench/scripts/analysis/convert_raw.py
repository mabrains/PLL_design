
# MIT license: https://opensource.org/licenses/MIT
# See https://github.com/Isotel/mixedsim/blob/master/python/ngspice_read.py
# for a more complete library. Isotel's version is GPL licensed
from __future__ import division
import numpy as np
import matplotlib.pyplot as plt
import sys
import os
import pandas as pd
from numpy.fft import fft, ifft

BSIZE_SP = 512 # Max size of a line of data; we don't want to read the
               # whole file to find a line, in case file does not have
               # expected structure.
MDATA_LIST = [b'title', b'date', b'plotname', b'flags', b'no. variables',
              b'no. points', b'dimensions', b'command', b'option']

def freq_meas(x_axis, y_axis, thresh, edge_type):

    arr__temp = np.sign(np.subtract (y_axis, thresh*np.ones(len(y_axis))))
    if (   ((1  not in np.sign(np.diff(y_axis)))  and  edge_type =='rise')
        or ((-1 not in np.sign(np.diff(y_axis)))  and  edge_type =='fall')
        or (thresh > np.max(y_axis))
        or (thresh < np.min(y_axis))):

        print('t_meas function error: NO CROSSING OF SPECIFIED TYPE HAPENS')
        return(False,0)

    if (edge_type == 'rise'):
        arr_dn = np.delete(arr__temp,len(arr__temp)-1)
        arr_up = np.delete(arr__temp,0)
        rise_idx = np.where(((arr_up == 1) & (arr_dn == -1)) | ((arr_up == 1) & (arr_dn == 0)))[0]
        rise_idx2 = np.add(rise_idx, np.ones(len(rise_idx)))

        t_dn = x_axis[rise_idx]
        t_up = x_axis[rise_idx2.astype(int)]

        y_dn = y_axis[rise_idx]
        y_up = y_axis[rise_idx2.astype(int)]

    elif(edge_type == 'fall'):
        arr_up = np.delete(arr__temp,len(arr__temp)-1)
        arr_dn = np.delete(arr__temp,0)
        fall_idx = np.where(((arr_up == 1) & (arr_dn == -1)) | ((arr_up == 1) & (arr_dn == 0)))[0]
        fall_idx2 = np.add(fall_idx, np.ones(len(rise_idx)))


        t_up = x_axis[fall_idx]
        t_dn = x_axis[fall_idx2.astype(int)]

        y_up = y_axis[fall_idx]
        y_dn = y_axis[fall_idx2.astype(int)]
    else:
        print("t_meas function error: WRONG EDGE TYPE")
        return(False,0)

    slope   = np.divide(np.subtract(y_up, y_dn), np.subtract(t_up, t_dn))
    t_cross = np.add(t_dn, np.divide(np.subtract(thresh*np.ones(len(y_dn)), y_dn), slope))


    #slope = (y_up - y_dn)/(t_up - t_dn)
    #t_cross = t_dn + (thresh - y_dn)/slope
    delta_t =  np.diff(t_cross)
    freq = np.divide(np.ones(len(delta_t)), np.diff(t_cross))
    return(True, t_cross, delta_t, freq)

def t_meas(x_axis, y_axis, thresh, occur_num, edge_type):

    arr__temp = np.sign(np.subtract (y_axis, thresh*np.ones(len(y_axis))))
    if (   ((1  not in np.sign(np.diff(y_axis)))  and  edge_type =='rise')
        or ((-1 not in np.sign(np.diff(y_axis)))  and  edge_type =='fall')
        or (thresh > np.max(y_axis))
        or (thresh < np.min(y_axis))):

        print('t_meas function error: NO CROSSING OF SPECIFIED TYPE HAPENS')
        return(False,0)

    if (edge_type == 'rise'):
        arr_dn = np.delete(arr__temp,len(arr__temp)-1)
        arr_up = np.delete(arr__temp,0)
        rise_idx = np.where(((arr_up == 1) & (arr_dn == -1)) | ((arr_up == 1) & (arr_dn == 0)))[0]

        t_dn = x_axis[rise_idx[occur_num-1]]
        t_up = x_axis[rise_idx[occur_num-1]+1]

        y_dn = y_axis[rise_idx[occur_num-1]]
        y_up = y_axis[rise_idx[occur_num-1]+1]

    elif(edge_type == 'fall'):
        arr_up = np.delete(arr__temp,len(arr__temp)-1)
        arr_dn = np.delete(arr__temp,0)
        fall_idx = np.where(((arr_up == 1) & (arr_dn == -1)) | ((arr_up == 1) & (arr_dn == 0)))[0]

        t_up = x_axis[fall_idx[occur_num-1]]
        t_dn = x_axis[fall_idx[occur_num-1]+1]

        y_up = y_axis[fall_idx[occur_num-1]]
        y_dn = y_axis[fall_idx[occur_num-1]+1]
    else:
        print("t_meas function error: WRONG EDGE TYPE")
        return(False,0)


    if (thresh == y_up):
        t_cross = t_up
    elif (thresh == y_dn):
        t_cross = t_dn
    else:
        slope = (y_up - y_dn)/(t_up - t_dn)
        t_cross = t_dn + (thresh - y_dn)/slope
    
    return(True,t_cross)

def rawread(fname: str):
    fp = open(fname, 'rb')
    plot = {}
    count = 0
    arrs = []
    plots = []
    while (True):
        try:
            mdata = fp.readline(BSIZE_SP).split(b':', maxsplit=1)
        except:
            raise
        if len(mdata) == 2:
            if mdata[0].lower() in MDATA_LIST:
                plot[mdata[0].lower()] = mdata[1].strip()
            if mdata[0].lower() == b'variables':
                nvars = int(plot[b'no. variables'])
                npoints = int(plot[b'no. points'])
                plot['varnames'] = []
                plot['varunits'] = []
                for varn in range(nvars):
                    varspec = (fp.readline(BSIZE_SP).strip()
                               .decode('ascii').split())
                    assert(varn == int(varspec[0]))
                    plot['varnames'].append(varspec[1])
                    plot['varunits'].append(varspec[2])
            if mdata[0].lower() == b'binary':
                rowdtype = np.dtype({'names': plot['varnames'],
                                     'formats': [np.complex_ if b'complex'
                                                 in plot[b'flags']
                                                 else np.float_]*nvars})
                # We should have all the metadata by now
                arrs.append(np.fromfile(fp, dtype=rowdtype, count=npoints))
                plots.append(plot)
                fp.readline() # Read to the end of line
        else:
            break
    return (arrs, plots)

if __name__ == '__main__':
    run_folder_dir = sys.argv[1]
    raw_file_path  = os.path.join(run_folder_dir, "raw_files/pll_int.raw") 
    images_path    = os.path.join(run_folder_dir, "images") 
    csv_files_path = os.path.join(run_folder_dir, "csv_files") 
    arrs, plots    = rawread(raw_file_path)  
    
    time_arr = arrs[1]["time"]
    vctrl_arr = arrs[1]["v(xpll_int_int.vctrl)"]
    vco_out_arr = arrs[1]["v(vco_out)"]
    vp_arr = arrs[1]["v(xpll_int_int.vp)"]
    ref_arr = arrs[1]["v(ref)"] 
    fb_arr = arrs[1]["v(xpll_int_int.fb)"]
    up_arr = arrs[1]["v(xpll_int_int.up)"]
    dn_arr = arrs[1]["v(xpll_int_int.dn)"]

    #####################################################################
    #####################PLOT INTENDED QUANTITIES########################
    #####################################################################
    plt.figure(1)
    plt.figure(figsize=(15,10))
    plt.plot(time_arr, vctrl_arr)
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('Vcontrol')
    plt.grid(True)
    plt.savefig(os.path.join(images_path, "vctrl.png"))


    plt.figure(2)
    plt.figure(figsize=(15,10))
    plt.plot(time_arr, vco_out_arr)
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('VCO Output after the inverter')
    plt.savefig(os.path.join(images_path, "VCO_out_after_inv.png"))
    plt.grid(True)


    plt.figure(3)
    plt.figure(figsize=(15,10))
    plt.plot(time_arr, vp_arr)
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('VCO Output before the inverter')
    plt.savefig(os.path.join(images_path, "VCO_out_before_inv.png"))
    plt.grid(True)

    plt.figure(4)
    plt.figure(figsize=(15,10))
    plt.subplot(4,1,1)
    plt.plot(time_arr , ref_arr , color='b', label='REF')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('REF')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)

    plt.subplot(4,1,2)
    plt.plot(time_arr , fb_arr, color='g', label='FB')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('FB')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,3)
    plt.plot(time_arr , up_arr ,color='r', label='UP')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('UP')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,4)
    plt.plot(time_arr , dn_arr , color='c', label='DWN')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('DWN')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)
    plt.legend()
    plt.suptitle("Before lock")
    plt.savefig(os.path.join(images_path, "beforelock.png"))

    plt.figure(5)
    plt.figure(figsize=(15,10))
    plt.subplot(4,1,1)
    plt.plot(time_arr , ref_arr , color='b', label='REF')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('REF')
    plt.xlim(14e-6, 14.4e-6)
    plt.grid(True)

    plt.subplot(4,1,2)
    plt.plot(time_arr , fb_arr, color='g', label='FB')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('FB')
    plt.xlim(14e-6, 14.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,3)
    plt.plot(time_arr , up_arr ,color='r', label='UP')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('UP')
    plt.xlim(14e-6, 14.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,4)
    plt.plot(time_arr , dn_arr , color='c', label='DWN')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('DWN')
    plt.xlim(14e-6, 14.4e-6)
    plt.grid(True)
    plt.legend()
    plt.suptitle("after lock")
    plt.savefig(os.path.join(images_path, "aferlock.png"))

    plt.figure(6)
    plt.figure(figsize=(15,10))
    check1, time, delta_t, freq = freq_meas(time_arr, vco_out_arr, 0.9, 'rise')
    plt.plot(time[:-1], freq)
    plt.xlabel('time (sec)') 
    plt.ylabel('Freq (Hz)')
    plt.title('VCO frequency')
    plt.grid(True)
    plt.savefig(os.path.join(images_path, "vco_freq.png"))

    #####################################################################
    ###############################MAESURING FREQ########################
    #####################################################################
    check1,t1 = t_meas(time_arr , fb_arr, 1, 125, 'rise')
    check2,t2 = t_meas(time_arr , fb_arr, 1, 126, 'rise')
    freq_fb = 1/(t2-t1)

    check1,t1 = t_meas(time_arr , vco_out_arr, 1, 36000, 'rise')
    check2,t2 = t_meas(time_arr , vco_out_arr, 1, 36001, 'rise')
    freq_vco = 1/(t2-t1)

    # freq_vctrl = 0
    check1,t1 = t_meas(time_arr , vctrl_arr, 0.35, 36000, 'rise')
    check2,t2 = t_meas(time_arr , vctrl_arr, 0.35, 36001, 'rise')
    freq_vctrl = 1/(t2-t1)
 

    division_ratio = freq_vco/freq_fb

    #####################################################################
    ######################################FFT############################
    #####################################################################
    fs = 1/np.max(np.diff(time_arr))
    vco_out_fft = np.fft.fft(vco_out_arr)/len(vco_out_arr)
    # vco_out_fft = vco_out_fft[range(int(len(vco_out_arr)/2))]

    # freq_arr = np.arange(int(len(vco_out_arr)/2))
    # freq_arr = freq_arr *(fs/len(vco_out_arr))
    freq_arr = np.fft.fftfreq(len(vco_out_fft), 1/fs)

    plt.figure(7)
    plt.figure(figsize=(15,10))
    plt.plot(freq_arr, np.abs(vco_out_fft))
    plt.xlabel('Freq (Hz)')
    plt.ylabel('FFT Amplitude |X(freq)|')
    plt.title('FFT of VCO Output')
    plt.xlim(-10.1e9, 10.1e9)
    plt.savefig(os.path.join(images_path, "vco_fft.png"))
    
    #####################################################################
    ############################PRINTING DATA############################
    #####################################################################
    
    # freq_vco=0
    # freq_vctrl=0
    # freq_fb = 0
    # division_ratio =0

    
    print("vco_freq(Ghz):",freq_vco/1e9)
    print("vctrl_freq(Ghz):",freq_vctrl/1e9)
    print("divider out freq (Mhz):",freq_fb/1e6)
    print("division ratio:",division_ratio)
    print("fs (Ghz):",fs/1e9)

    #####################################################################
    #######################SAVING DATA IN CSV############################freq_vctrl
    #####################################################################
    measurements =[]
    data = {}

    data["vco_freq(Ghz)"]          = freq_vco/1e9
    data["vctrl_freq(Ghz)"]        = freq_vctrl/1e9
    data["divider out freq (Mhz)"] = freq_fb/1e6
    data["division ratio"]         = division_ratio
    data["fs_min(Ghz)"]         = 1e-9/np.max(np.diff(time_arr))
    data["fs_max(Ghz)"]         = 1e-9/np.min(np.diff(time_arr))
    measurements.append(data)

    df = pd.DataFrame(measurements)
    df.to_csv(os.path.join(csv_files_path, "all_measurements.csv"), index=False)
    

   
