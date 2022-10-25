# MIT license: https://opensource.org/licenses/MIT
# See https://github.com/Isotel/mixedsim/blob/master/python/ngspice_read.py
# for a more complete library. Isotel's version is GPL licensed
from __future__ import division
from queue import Empty
import matplotlib.pyplot as plt
import numpy as np
BSIZE_SP = 512 # Max size of a line of data; we don't want to read the
               # whole file to find a line, in case file does not have
               # expected structure.
MDATA_LIST = [b'title', b'date', b'plotname', b'flags', b'no. variables',
              b'no. points', b'dimensions', b'command', b'option']

def t_meas(time,var,thresh,count,meas_type):

    var_temp = var - thresh*np.ones(len(var))
    print(var_temp)
    var_temp = np.where(var_temp < 0,-1, var_temp,)
    print(var_temp)
    var_temp_sr = np.roll(var_temp,1)
    print(var_temp_sr)

    var_diff = np.diff(var)
    print(np.sign(var_diff) )
    var_diff = np.append(var_diff,var_diff[len(var_diff)-1])

    rise_idx = np.where((var_temp  != np.nan) & (var_temp_sr == -1) & (np.sign(var_diff) ==1))[0]
    print(rise_idx)
    t_rise = time[rise_idx[count-1]]
    return(t_rise)



    
    
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

    arrs, plots = rawread('vco.raw')
    time_arr = arrs[1]['time']
    vp_arr = arrs[1]['v(vp)']
    #print (vp_arr)
    plt.plot(time_arr, vp_arr)
    plt.show()

    t_rise1 = t_meas(time_arr,vp_arr,1.1,30,'rise')
    print(t_rise1)
    t_rise2 = t_meas(time_arr,vp_arr,1.1,31,'rise')
    print(t_rise2)
    freq = 1/(t_rise2 - t_rise1)
    print(freq/1e9)

    # time = np.arange(0, 6*np.pi, 0.0001)    
    # amplitude = np.sin(time)
    # plt.plot(time, amplitude)
    # plt.show()
# 
    # print (amplitude)
    ## t_rise1 = t_meas(time,amplitude,0.5,1,'rise')
    ## t_rise2 = t_meas(time,amplitude,0.5,2,'rise')
    ## freq = 1/(t_rise2 - t_rise1)

    
 

    #print (np.where(a == 5)[0])
    ## plt.plot (arrs[1]['time'] , arrs[1]['v(vn)'])
    ## plt.show()
    #print(arrs[1].dtype.names['v(vp)'])


    ## a = np.array([0,1,2,3,4,5,4,3,2,1,0,-1,-2,-3,-4,-5,-4,-3,-2,-1,0,1,2,3,4,5,4,3,2,1,0,-1,-2,-3,-4,-5,-4,-3,-2,-1,0])
    ## b = np.arange(len(a))
    ## t_rise = t_meas(b,a,3.2,2,'rise')
    ## print(t_rise)
## 
    ## plt.scatter(b,a)
    ## plt.plot(b,3.2*np.ones(len(b)))
    ## plt.show()

    ## a = np.array([np.nan,np.nan,0,1,2,np.nan,np.nan])
    ## b = np.array([np.nan,np.nan,np.nan,0,1,2,np.nan])
## 
    ## print(a+b)
    # print(f"{np.nan}" == f"{np.nan}")


# Generating time data using arange function from numpy


 


#  if __name__ == '__main__':

#     arrs, plots = rawread('vco.raw')
#     time_arr = arrs[1]['time']
#     vp_arr = arrs[1]['v(vp)']
#     ## print (vp_arr)
#     ## plt.plot(time_arr, vp_arr)
#     ## plt.show()
    
#     #a = [1, 2, 1, 1, -3, -4, 7, 8, 9, 10, -2, 1, -3, 5, 6, 7, -10]
#     ## zero_crossings = np.where(np.diff(np.sign(a)))[0]
#     ## print (np.diff(np.sign(a)))

#     thresh = 1
#     count = 50
#     arr__temp = np.sign(np.subtract (vp_arr, thresh*np.ones(len(vp_arr))))
#     arr_dn = np.delete(arr__temp,len(arr__temp)-1)
#     arr_up = np.delete(arr__temp,0)
#     print (arr_dn)
#     print (arr_up)
#     rise_idx = np.where(((arr_up == 1) & (arr_dn == -1)) | ((arr_up == 1) & (arr_dn == 0)))[0]
#     print(rise_idx)
#     print(vp_arr[rise_idx[0]])
#     print(vp_arr[rise_idx[1]])

#     t_dn = time_arr[rise_idx[count-1]]
#     t_up = time_arr[rise_idx[count-1]+1]

#     print(t_dn)
#     print (t_up)

#     y_dn = vp_arr[rise_idx[count-1]]
#     y_up = vp_arr[rise_idx[count-1]+1]

#     print (y_dn)
#     print (y_up)
#     if (thresh == y_up):
#         t_rise1 = t_up
#     elif (thresh == y_dn):
#         t_rise1 = t_dn
#     else:
#         slope = (y_up - y_dn)/(t_up - t_dn)
#         t_rise1 = t_dn + (thresh - y_dn)/slope
    
#     print (t_rise1)

#     count = 51
#     arr__temp = np.sign(np.subtract (vp_arr, thresh*np.ones(len(vp_arr))))
#     arr_dn = np.delete(arr__temp,len(arr__temp)-1)
#     arr_up = np.delete(arr__temp,0)
#     rise_idx = np.where(((arr_up == 1) & (arr_dn == -1)) | ((arr_up == 1) & (arr_dn == 0)))[0]

#     t_dn = time_arr[rise_idx[count-1]]
#     t_up = time_arr[rise_idx[count-1]+1]

#     y_dn = vp_arr[rise_idx[count-1]]
#     y_up = vp_arr[rise_idx[count-1]+1]

#     if (thresh == y_up):
#         t_rise2 = t_up
#     elif (thresh == y_dn):
#         t_rise2 = t_dn
#     else:
#         slope = (y_up - y_dn)/(t_up - t_dn)
#         t_rise2 = t_dn + (thresh - y_dn)/slope

# freq = 1/(t_rise2 - t_rise1)
# print(freq/1e9)