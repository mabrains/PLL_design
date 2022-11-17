
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

def D(xlist,ylist):
    yprime = np.diff(ylist)/np.diff(xlist)
    xprime=[]
    for i in range(len(yprime)):
        xtemp = (xlist[i+1]+xlist[i])/2
        xprime = np.append(xprime,xtemp)
    return xprime, yprime

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
    arrs, plots = rawread('PLL.raw')
    plt.figure(1)
    plt.plot(arrs[1]["time"], arrs[1]["v(vctrl)"])
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('Vcontrol')
    plt.grid(True)
    plt.savefig('vctrl.png')
    plt.figure(2)
    plt.plot(arrs[1]["time"], arrs[1]["i(vtest)"])
    plt.xlabel('time (sec)') 
    plt.ylabel('Current (A)')
    plt.title('Charge pump current')
    plt.savefig('Icp.png')
    plt.grid(True)

    control_list_prime, kvco = D(control_list, freq_list)

    plt.plot(control_list_prime, kvco*1e+3,linewidth = 3, color = 'black',linestyle='dashed',label=df["corner name"][itr])

    plt.figure(3)
    plt.plot(arrs[1]["time"], arrs[1]["v(vp)"])
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('VCO Output')
    plt.savefig('VCO out.png')
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
    plt.plot(arrs[1]["time"] , arrs[1]["v(fb)"], color='g', label='FB')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('FB')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,3)
    plt.plot(arrs[1]["time"] , arrs[1]["v(up)"] ,color='r', label='UP')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('UP')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,4)
    plt.plot(arrs[1]["time"] , arrs[1]["v(dn)"] , color='c', label='DWN')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('DWN')
    plt.xlim(1e-6, 1.4e-6)
    plt.grid(True)
    plt.legend()
    plt.suptitle("Before lock")
    plt.savefig('beforelock.png')

    plt.figure(5)
    plt.subplot(4,1,1)
    plt.plot(arrs[1]["time"] , arrs[1]["v(ref)"] , color='b', label='REF')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('REF')
    plt.xlim(210e-6, 210.4e-6)
    plt.grid(True)

    plt.subplot(4,1,2)
    plt.plot(arrs[1]["time"] , arrs[1]["v(fb)"], color='g', label='FB')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('FB')
    plt.xlim(210e-6, 210.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,3)
    plt.plot(arrs[1]["time"] , arrs[1]["v(up)"] ,color='r', label='UP')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('UP')
    plt.xlim(210e-6, 210.4e-6)
    plt.grid(True)
    
    plt.subplot(4,1,4)
    plt.plot(arrs[1]["time"] , arrs[1]["v(dn)"] , color='c', label='DWN')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('DWN')
    plt.xlim(210e-6, 210.4e-6)
    plt.grid(True)
    plt.legend()
    plt.suptitle("after lock")
    plt.savefig('aferlock.png')
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
    # plotvec(ax1,arrs[1]["time"], arrs[1]["v(ref)"],'REF','Time(Sec)','Amplitude(V)','Ref signal',210e-6,210.4e-6,0,1.9)
    # plotvec(ax2,arrs[1]["time"], arrs[1]["v(fb)"],'FB','Time(Sec)','Amplitude(V)','FB signal',210e-6,210.4e-6,0,1.9)
    # plotvec(ax3,arrs[1]["time"], arrs[1]["v(up)"],'UP','Time(Sec)','Amplitude(V)','UP signal',210e-6,210.4e-6,0,1.9)
    # plotvec(ax4,arrs[1]["time"], arrs[1]["v(dn)"],'DWN','Time(Sec)','Amplitude(V)','DWN signal',210e-6,210.4e-6,0,1.9)
    # plt.suptitle("After lock")
    # plt.savefig('afterlock.png')

    # plt.show()
# Local Variables:
# mode: python
# End:
