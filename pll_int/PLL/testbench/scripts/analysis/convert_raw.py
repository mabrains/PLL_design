
# MIT license: https://opensource.org/licenses/MIT
# See https://github.com/Isotel/mixedsim/blob/master/python/ngspice_read.py
# for a more complete library. Isotel's version is GPL licensed
from __future__ import division
import numpy as np
import matplotlib.pyplot as plt


BSIZE_SP = 512 # Max size of a line of data; we don't want to read the
               # whole file to find a line, in case file does not have
               # expected structure.
MDATA_LIST = [b'title', b'date', b'plotname', b'flags', b'no. variables',
              b'no. points', b'dimensions', b'command', b'option']

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
                plots.append(plot)
                fp.readline() # Read to the end of line
        else:
            break
    return (arrs, plots)

def plotvec(ax,x,y,plabel,xlabel,ylabel,title,xmin,xmax,ymin,ymax):
    ax.plot(x,y , label=plabel)
    ax.grid(True)
    ax.set_xlabel(xlabel)
    ax.set_ylabel(ylabel)
    ax.set_title(title)
    ax.legend()
    plt.xlim(xmin,xmax)
    plt.ylim(ymin,ymax)
    # ax.set_xlim(xlimt)
    # ax.set_ylim(ylimt)

if __name__ == '__main__':
    arrs, plots = rawread('../../pll.raw')
    plt.figure(1)
    plt.plot(arrs[1]["time"], arrs[1]["v(xpll.vctrl)"])
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('Vcontrol')
    plt.grid(True)
    plt.savefig('../../../results/vctrl.png')


    plt.figure(2)
    plt.plot(arrs[1]["time"], arrs[1]["v(vco_out)"])
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('VCO Output after the inverter')
    plt.savefig('../../../results/VCO_out_after_inv.png')
    plt.grid(True)

    # plt.figure(2)
    # plt.plot(arrs[1]["time"], arrs[1]["i(xpll.vtest)"])
    # plt.xlabel('time (sec)') 
    # plt.ylabel('Current (A)')
    # plt.title('Charge pump current')
    # plt.savefig('../../../results/Icp.png')
    # plt.grid(True)

    plt.figure(3)
    plt.plot(arrs[1]["time"], arrs[1]["v(xpll.vp)"])
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('VCO Output before the inverter')
    plt.savefig('../../../results/VCO_out_before_inv.png')
    plt.grid(True)

    plt.figure(4)
    plt.subplot(4,1,1)
    plt.plot(arrs[1]["time"] , arrs[1]["v(ref)"] , color='b', label='REF')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('REF')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)

    plt.subplot(4,1,2)
    plt.plot(arrs[1]["time"] , arrs[1]["v(xpll.fb)"], color='g', label='FB')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('FB')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,3)
    plt.plot(arrs[1]["time"] , arrs[1]["v(xpll.up)"] ,color='r', label='UP')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('UP')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,4)
    plt.plot(arrs[1]["time"] , arrs[1]["v(xpll.dn)"] , color='c', label='DWN')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('DWN')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)
    plt.legend()
    plt.suptitle("Before lock")
    plt.savefig('../../../results/beforelock.png')

    plt.figure(5)
    plt.subplot(4,1,1)
    plt.plot(arrs[1]["time"] , arrs[1]["v(ref)"] , color='b', label='REF')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('REF')
    plt.xlim(24e-6, 24.4e-6)
    plt.grid(True)

    plt.subplot(4,1,2)
    plt.plot(arrs[1]["time"] , arrs[1]["v(xpll.fb)"], color='g', label='FB')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('FB')
    plt.xlim(24e-6, 24.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,3)
    plt.plot(arrs[1]["time"] , arrs[1]["v(xpll.up)"] ,color='r', label='UP')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('UP')
    plt.xlim(24e-6, 24.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,4)
    plt.plot(arrs[1]["time"] , arrs[1]["v(xpll.dn)"] , color='c', label='DWN')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('DWN')
    plt.xlim(24e-6, 24.4e-6)
    plt.grid(True)
    plt.legend()
    plt.suptitle("after lock")
    plt.savefig('../../../results/aferlock.png')

  
    
    # fig, ((ax1), (ax2), (ax3), (ax4)) = plt.subplots(nrows=4, ncols=1)
    # #plotvec(ax,x,y,plabel,xlabel,ylabel,title,legendx,xlimt,ylimt):
    # plotvec(ax1,arrs[1]["time"], arrs[1]["v(ref)"],'REF','Time(Sec)','Amplitude(V)','Ref signal',1e-6,1.4e-6,0,1.9)
    # plotvec(ax2,arrs[1]["time"], arrs[1]["v(fb)"],'FB','Time(Sec)','Amplitude(V)','FB signal',1e-6,1.4e-6,0,1.9)
    # plotvec(ax3,arrs[1]["time"], arrs[1]["v(up)"],'UP','Time(Sec)','Amplitude(V)','UP signal',1e-6,1.4e-6,0,1.9)
    # plotvec(ax4,arrs[1]["time"], arrs[1]["v(dn)"],'DWN','Time(Sec)','Amplitude(V)','DWN signal',1e-6,1.4e-6,0,1.9)
    # plt.suptitle("Before lock")
    # plt.savefig('beforelock.png')
    # fig2, ((ax1), (ax2), (ax3), (ax4)) = plt.subplots(nrows=4, ncols=1)
    # #plotvec(ax,x,y,plabel,xlabel,ylabel,title,legendx,xlimt,ylimt):
    # plotvec(ax1,arrs[1]["time"], arrs[1]["v(ref)"],'REF','Time(Sec)','Amplitude(V)','Ref signal',26e-6,26.4e-6,0,1.9)
    # plotvec(ax2,arrs[1]["time"], arrs[1]["v(fb)"],'FB','Time(Sec)','Amplitude(V)','FB signal',26e-6,26.4e-6,0,1.9)
    # plotvec(ax3,arrs[1]["time"], arrs[1]["v(up)"],'UP','Time(Sec)','Amplitude(V)','UP signal',26e-6,26.4e-6,0,1.9)
    # plotvec(ax4,arrs[1]["time"], arrs[1]["v(dn)"],'DWN','Time(Sec)','Amplitude(V)','DWN signal',26e-6,26.4e-6,0,1.9)
    # plt.suptitle("After lock")
    # plt.savefig('afterlock.png')

    # plt.show()
# Local Variables:
# mode: python
# End:

check1,t1 = t_meas(arrs[1]["time"] , arrs[1]["v(xpll.fb)"], 1, 200, 'rise')
check2,t2 = t_meas(arrs[1]["time"] , arrs[1]["v(xpll.fb)"], 1, 201, 'rise')
freq_fb = 1/(t2-t1)

check1,t1 = t_meas(arrs[1]["time"] , arrs[1]["v(vco_out)"], 1, 60000, 'rise')
check2,t2 = t_meas(arrs[1]["time"] , arrs[1]["v(vco_out)"], 1, 60001, 'rise')
freq_vco = 1/(t2-t1)
n = freq_vco/freq_fb

print("vco_freq(Ghz):",freq_vco/1e9)
print("divider out freq (Mhz):",freq_fb/1e6)
print("division ratio:",n)