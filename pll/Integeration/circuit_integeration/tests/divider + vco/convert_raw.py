
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

def plotvec(ax,x,y,plabel,xlabel,ylabel,title,xlimt,ylimt):
    ax.plot(x,y , label=plabel)
    ax.grid(True)
    ax.set_xlabel(xlabel)
    ax.set_ylabel(ylabel)
    ax.set_title(title)
    ax.legend()
    ax.set_xlim(xlimt)
    ax.set_ylim(ylimt)

if __name__ == '__main__':
    arrs, plots = rawread('PLL_3.raw')
    plt.figure(1)
    plt.plot(arrs[1]["time"], arrs[1]["v(vctrl)"])
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('Vcontrol')
    plt.grid(True)

    plt.figure(2)
    plt.plot(arrs[1]["time"], arrs[1]["i(vtest)"])
    plt.xlabel('time (sec)') 
    plt.ylabel('Current (A)')
    plt.title('Charge pump current')
    plt.grid(True)

    plt.figure(3)
    plt.plot(arrs[1]["time"], arrs[1]["v(vp)"])
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('VCO Output')
    plt.grid(True)



    fig, ((ax1), (ax2), (ax3), (ax4)) = plt.subplots(nrows=4, ncols=1)
    #plotvec(ax,x,y,plabel,xlabel,ylabel,title,legendx,xlimt,ylimt):
    plotvec(ax1,arrs[1]["time"], arrs[1]["v(ref)"],'REF','Time(Sec)','Amplitude(V)','Ref signal',0,0)
    plotvec(ax2,arrs[1]["time"], arrs[1]["v(fb)"],'FB','Time(Sec)','Amplitude(V)','FB signal',0,0)
    plotvec(ax3,arrs[1]["time"], arrs[1]["v(up)"],'UP','Time(Sec)','Amplitude(V)','UP signal',0,0)
    plotvec(ax4,arrs[1]["time"], arrs[1]["v(dn)"],'DWN','Time(Sec)','Amplitude(V)','DWN signal',0,0)


    plt.show()
# Local Variables:
# mode: python
# End:
