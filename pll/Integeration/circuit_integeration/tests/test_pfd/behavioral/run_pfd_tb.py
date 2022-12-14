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


netlist_tmp = "pfd.sp"

############################# VAR TO NETLIST ##############################

delayup  = 5.0*100e-9
delaydwn = 5.0*100e-9
text = "*Test Line exchange"

for i in range (0,3):
    delayup  = 5.1*100e-9 if i == 1 else 5.0*100e-9	
    delaydwn = 5.1*100e-9 if i == 2 else 5.0*100e-9
    with open(netlist_tmp) as f:
        tmpl = Template(f.read())
        file = f"test_pfd_mod_{i}.sp" 
        with open(file, "w") as netlist:
            netlist.write(tmpl.render(delayup = delayup, delaydwn = delaydwn, line = text )) 

# # Running ngspice for each netlist 
# with concurrent.futures.ProcessPoolExecutor(max_workers=8) as executor:
#     executor.submit(call_simulator, netlist)

####################################### PLOT ##################################

plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True


if __name__ == "__main__":
    
    for i in range (0,3):
        if i == 0:
            file = "test_pfd_mod_0.sp"
            title_lag_lead = 'Locked State'
            savefig = 'Locked State.png'
        elif i == 1:
            file = "test_pfd_mod_1.sp"
            title_lag_lead = 'Feedback signal leads the Reference signal'
            savefig = 'Feedback signal leads the Reference.png'
        elif i == 2:
            file = "test_pfd_mod_2.sp"
            title_lag_lead = 'Reference signal leads the Feedback signal'
            savefig = 'Reference signal leads the Feedback signal.png'
            
        output_file = "pfd_behave.csv"

        ## Delete existing output file
        if os.path.isfile(output_file):
            os.remove(output_file)

        ## Run the simulation
        #subprocess.run(["ngspice", "-b", "-a", "PFD_TB.sp", "-o", "PFD_log_file.log"])
        print (i)
        subprocess.run(["ngspice", "-b", file])
        if not os.path.isfile(output_file):
            print("## Simulation didn't complete.")
            exit()
        

        fields = ['time', 'v(FBS)','v(REFS)','v(UP)','v(DWN)']
        
        data_df = pd.read_csv(output_file,sep='\s+')
        timearr = data_df['time']
        FB      = data_df['v(FBS)']    
        REF     = data_df['v(REFS)']  
        UP      = data_df['v(UP)']
        DWN     = data_df['v(DWN)']    
            
        plt.figure(i+1)

        plt.subplot(4,1,1)
        plt.plot(timearr , REF , color='b', label='REF')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('REF')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)

        plt.subplot(4,1,2)
        plt.plot(timearr , FB, color='g', label='FB')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('FB')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        
        plt.subplot(4,1,3)
        plt.plot(timearr , UP ,color='r', label='UP')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('UP')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        
        plt.subplot(4,1,4)
        plt.plot(timearr , DWN , color='c', label='DWN')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('DWN')
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)

        plt.legend()
        #plt.show()
        
        plt.suptitle(title_lag_lead)
        
        plt.savefig(savefig)