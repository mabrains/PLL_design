################################################################################################
## Mabrains LLC
################################################################################################

from genericpath import isfile
import subprocess
import pandas as pd
import matplotlib.pyplot as plt
from jinja2 import Template
import os
import concurrent.futures

netlist_tmp = "test_pfd_cp.sp"

############################# VAR TO NETLIST ##############################

delayup  = 5.0*100e-9
delaydwn = 5.0*100e-9
text = "*Test Line exchange"

for i in range (0,3):
    delayup  = 5.1*100e-9 if i == 1 else 5.0*100e-9	
    delaydwn = 5.1*100e-9 if i == 2 else 5.0*100e-9
    with open(netlist_tmp) as f:
        tmpl = Template(f.read())
        file = f"test_pfd_cp_{i}.sp" 
        with open(file, "w") as netlist:
            netlist.write(tmpl.render(delayup = delayup, delaydwn = delaydwn, line = text )) 
            
plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True


if __name__ == "__main__":
    
    for i in range (0,3):
        if i == 0:
            file = "test_pfd_cp_0.sp"
            title_lag_lead = 'Locked State'
            savefig = 'Locked State.png'
        elif i == 1:
            file = "test_pfd_cp_1.sp"
            title_lag_lead = 'Feedback signal leads the Reference signal'
            savefig = 'Feedback signal leads the Reference.png'
        elif i == 2:
            file = "test_pfd_cp_2.sp"
            title_lag_lead = 'Reference signal leads the Feedback signal'
            savefig = 'Reference signal leads the Feedback signal.png'
            
    
        output_file = "pfd_cp_behav.csv"

        ## Delete existing output file
        if os.path.isfile(output_file):
            os.remove(output_file)

        ## Run the simulation
        subprocess.run(["ngspice", "-b", file])

        if not os.path.isfile(output_file):
            print("## Simulation didn't complete.")
            exit()
    
        fields = ['time','v(FBS)','v(REFS)','v(up)','v(dn)','i(Vdump2)','i(Vdump2)','v(out)']
        subplotnumber=len(fields)-1
        subplotindex=1
        
        data_df = pd.read_csv(output_file,sep='\s+')
        timearr = data_df['time']
        REF      = data_df['v(REFS)'] 
        FB      = data_df['v(FBS)'] 
        UPS      = data_df['v(UP)']    
        DWNS     = data_df['v(DWN)']  
        Xcp_up      = data_df['i(Vdump1)']
        Xcp_dn     = data_df['i(Vdump2)']    
        outv     = data_df['v(out)']    

        plt.figure(i+1)
        
        plt.subplot(7,1,1)
        plt.plot(timearr , REF , color='b', label='REF')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('REF')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        plt.legend()
        
        plt.subplot(7,1,2)
        plt.plot(timearr , FB, color='g', label='FB')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('FB')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        plt.legend()

        plt.subplot(7,1,3)
        plt.plot(timearr , DWNS , color='b', label='DWNS')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('DWNS')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        plt.legend()

        plt.subplot(7,1,4)
        plt.plot(timearr , UPS, color='g', label='UPS')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('UPS')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        plt.legend()
        plt.suptitle(title_lag_lead)
        plt.savefig(savefig)
        
        plt.subplot(7,1,5)
        plt.plot(timearr , Xcp_up ,color='r', label='i_up')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('i_up')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        plt.legend()

        plt.subplot(7,1,6)
        plt.plot(timearr , Xcp_dn , color='c', label='i_dn')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('i_dn')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        plt.legend()
        
        plt.subplot(7,1,7)
        plt.plot(timearr , outv , color='y', label='out')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('out')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        plt.legend()
        
        #plt.show()
        
        plt.suptitle(title_lag_lead)
        plt.savefig(savefig)

