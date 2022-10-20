################################################################################################
## Mabrains LLC
################################################################################################

from genericpath import isfile
import subprocess
import os
import pandas as pd
import matplotlib.pyplot as plt

import os
import subprocess
from jinja2 import Template
import itertools
import concurrent.futures
import shutil
import numpy as np


netlist_tmp = "test_pfd_cp.sp"

############################# VAR TO NETLIST ##############################


delayup = 1e-6
delaydwn = 1e-6


for i in range (0,3):
    if i == 1:
        delayup = 1e-6
        delaydwn = 1.25e-6
    if i == 2:
        delayup = 1.25e-6
        delaydwn = 1e-6
    with open(netlist_tmp) as f:
        tmpl = Template(f.read())
        file = f"test_pfd_cp_{i}.sp" 
        with open(file, "w") as netlist:
            netlist.write(tmpl.render(delayup = delayup,delaydwn = delaydwn)) 
            
plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True


if __name__ == "__main__":
    
    for i in range (0,3):
        if i == 0:
            file = "test_pfd_cp_0.sp"
            title_lag_lead = 'Locked State'
            savefig = 'Locked State.png'
            vcoout='vco at locked.png'
        elif i == 1:
            file = "test_pfd_cp_1.sp"
            title_lag_lead = 'Reference signal leads the Feedback signal'
            savefig = 'Reference signal leads the Feedback signal.png'
            vcoout='vco at up.png'
        elif i == 2:
            file = "test_pfd_cp_2.sp"
            title_lag_lead = 'Feedback signal leads the Reference signal'
            savefig = 'Feedback signal leads the Reference.png'
            vcoout='vco at dwn.png'
            
    
        output_file = "pfd_cp_lf_behav.csv"

        ## Delete existing output file
        if os.path.isfile(output_file):
            os.remove(output_file)

        ## Run the simulation
        subprocess.run(["ngspice", "-b", file])

        if not os.path.isfile(output_file):
            print("## Simulation didn't complete.")
            exit()
    
        fields = ['time','v(FB)','v(REF)','v(UP)','v(DWN)','v(out)','v(vctrl)','v(divin)']
        subplotnumber=len(fields)-1
        subplotindex=1
        
        data_df = pd.read_csv(output_file,sep='\s+')
        timearr = data_df['time']
        REF      = data_df['v(REF)'] 
        FB      = data_df['v(FB)'] 
        UPS      = data_df['v(UP)']    
        DWNS     = data_df['v(DWN)']  
        vctrl      = data_df['v(vctrl)'] 
        outv     = data_df['v(out)']
        OUTF =data_df['v(divin)']    

        plt.figure(i+1)
        
        plt.subplot(6,1,1)
        plt.plot(timearr , REF , color='b', label='REF')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('REF')

        plt.grid(True)
        plt.legend()
        
        plt.subplot(6,1,2)
        plt.plot(timearr , FB, color='g', label='FB')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('FB')

        plt.grid(True)
        plt.legend()

        plt.subplot(6,1,3)
        plt.plot(timearr , DWNS , color='b', label='DWNS')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('DWNS')

        plt.grid(True)
        plt.legend()

        plt.subplot(6,1,4)
        plt.plot(timearr , UPS, color='g', label='UPS')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('UPS')

        plt.grid(True)
        plt.legend()
        plt.suptitle(title_lag_lead)
        plt.savefig(savefig)
        
        plt.subplot(6,1,5)
        plt.plot(timearr , vctrl ,color='r', label='vctrl')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('i_up')

        plt.grid(True)
        plt.legend()

        plt.subplot(6,1,6)
        plt.plot(timearr , outv , color='y', label='out')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('out')

        plt.grid(True)
        plt.legend()
        
        #plt.show()
        
        plt.suptitle(title_lag_lead)
        plt.savefig(savefig)
        

        plt.plot(timearr , OUTF , color='r', label='VCO')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('VCO out')
        plt.savefig(vcoout)

