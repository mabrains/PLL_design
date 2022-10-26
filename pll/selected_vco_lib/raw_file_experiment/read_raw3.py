# MIT license: https://opensource.org/licenses/MIT
# See https://github.com/Isotel/mixedsim/blob/master/python/ngspice_read.py
# for a more complete library. Isotel's version is GPL licensed
from __future__ import division
from queue import Empty
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd 
BSIZE_SP = 512 # Max size of a line of data; we don't want to read the
               # whole file to find a line, in case file does not have
               # expected structure.
MDATA_LIST = [b'title', b'date', b'plotname', b'flags', b'no. variables',
              b'no. points', b'dimensions', b'command', b'option']
######################################################################################
######################################################################################
#####################################################################################              
def moving_average(a, n=3) :
    ret = np.cumsum(a, dtype=float)
    ret[n:] = ret[n:] - ret[:-n]
    return ret[n - 1:]/n
######################################################################################
######################################################################################
#####################################################################################
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
######################################################################################
######################################################################################
######################################################################################
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
######################################################################################
######################################################################################
######################################################################################
def get_yval(x_axis, y_axis, x_val):
    if (x_val > np.max(x_axis) or x_val< np.min(x_axis)):
        print ("get_yval efunction rror: input value is out of range")
        return(False,0)
    else:

        if (len( np.where(x_axis == x_val)[0]) > 0):
            return(True,y_axis[np.where(x_axis == x_val)[0]])
        else:
            x_right = x_axis[ np.where( (x_axis-x_val*np.ones(len(x_axis)) ) > 0, x_axis,  np.inf).argmin()]
            x_left  = x_axis[ np.where( (x_axis-x_val*np.ones(len(x_axis)) ) < 0, x_axis, -np.inf).argmax()]

            y_right = y_axis[ np.where( (x_axis-x_val*np.ones(len(x_axis)) ) > 0, x_axis,  np.inf).argmin()]
            y_left = y_axis[ np.where( (x_axis-x_val*np.ones(len(x_axis)) ) < 0, x_axis, -np.inf).argmax()]

            slope = (y_right - y_left)/(x_right - x_left)
            y_cross = y_left + slope*(x_val - x_left)
            return (True,y_cross)
######################################################################################
######################################################################################
#####################################################################################
def rawread(fname: str):
    """Read ngspice binary raw files. Return tuple of the data, and the
    plot metadata. The dtype of the data contains field names. This is
    not very robust yet, and only supports ngspice.
    >>> darr, mdata = rawread('test.py')
    >>> darr.dtype.names
    >>> plot(np.real(darr['frequency']), np.abs(darr['v(out)']))
    """
    # Example header of raw file
    # Title: rc band pass example circuit
    # Date: Sun Feb 21 11:29:14  2016
    # Plotname: AC Analysis
    # Flags: complex
    # No. Variables: 3
    # No. Points: 41
    # Variables:
    #         0       frequency       frequency       grid=3
    #         1       v(out)  voltage
    #         2       v(in)   voltage
    # Binary:
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
                ##print (type(arrs))
                plots.append(plot)
                fp.readline() # Read to the end of line
        else:
            break
    return (arrs, plots)

if __name__ == '__main__':

    # arrs, plots = rawread('vco.raw')
    # time_arr = arrs[1]['time']
    # vp_arr = arrs[1]['v(vp)']

    # check1, t_rise1 = t_meas(time_arr, vp_arr, 1, 70, 'rise')
    # check2, t_rise2 = t_meas(time_arr, vp_arr, 1, 71, 'rise')
    # if (check1 and check2):
    #     freq = 1/(t_rise2 - t_rise1)
        #print('frequency in GHz:',freq/1e9)

    #print (get_yval(time_arr, vp_arr, 43e-9))
    #print (get_yval(time_arr, vp_arr, t_rise2))

    #print (vp_arr)
    #plt.plot(time_arr, vp_arr)
    #tmpy = np.arange(-180,180,0.5,dtype=int)
    #tmpx = 43e-9*np.ones(len(tmpy))
    #plt.plot(tmpx, tmpy/180)
    #plt.show()


    ################################################################
    #######################test locking detection###################
    ################################################################
    # csv_file = pd.read_csv ("pll.csv",index_col=False,usecols=[0],header=None, delimiter=r"\s+")
    # time = csv_file.to_numpy()
    # time = time.ravel()
    # time = np.array(time)

    # csv_file = pd.read_csv ("pll.csv",index_col=False,usecols=[1],header=None, delimiter=r"\s+")
    # vctrl = csv_file.to_numpy()
    # vctrl = vctrl.ravel()
    # vctrl = np.array(vctrl)


    # point_num = 30000
    # lock_thresh = 0
    # y_avg = moving_average(vctrl,point_num)
    # y_Avg_diff = np.diff(y_avg)
    # lock_idx = np.where(np.abs(y_Avg_diff) == lock_thresh)[0][2]
    # plt.plot(time, vctrl)
    # plt.plot(time[:-point_num+1], y_avg)
    # plt.scatter(time[lock_idx],vctrl[lock_idx],linewidth=6,color = 'black')
    # plt.show()
    # print(y_Avg_diff)
    # print(time[lock_idx])



    ################################################################
    #######################freq calculation#########################
    ################################################################

    arrs, plots = rawread('vco.raw')
    time_arr = arrs[1]['time']
    vp_arr = arrs[1]['v(vp)']

    check1, time, delta_t, freq = freq_meas(time_arr, vp_arr, 0.5, 'rise')
    plt.scatter(delta_t,freq)
    plt.show()
    print(freq)
        