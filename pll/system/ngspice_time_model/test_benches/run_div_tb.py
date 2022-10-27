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


netlist_tmp = "test_div.sp"

############################# VAR TO NETLIST ##############################


for i in range (0,2):
    if i == 0:
        #f=240
        inputf = 2.4e9
        P0 = "d_d0"
        P1 = "d_d0"
        P2 = "d_d0"
        P3 = "d_d0"
        P4 = "d_d1"
        P5 = "d_d0"
        P6 = "d_d0"
        P7 = "d_d0"
        #4cycle
        simtime = "400n"
    elif i == 1:
        #f=250
        inputf = 2.5e9
        P0 = "d_d1"
        P1 = "d_d1"
        P2 = "d_d0"
        P3 = "d_d0"
        P4 = "d_d1"
        P5 = "d_d0"
        P6 = "d_d0"
        P7 = "d_d0"
        #4cycle
        simtime = "400n"
    with open(netlist_tmp) as f:
        tmpl = Template(f.read())
        file = f"test_div_mod_{i}.sp" 
        with open(file, "w") as netlist:
            netlist.write(tmpl.render(P0 = P0, P1 = P1, P2 = P2, P3 = P3, P4 = P4, P5 = P5, P6 = P6, P7 = P7, inputf = inputf , simtime = simtime )) 

# # Running ngspice for each netlist 
# with concurrent.futures.ProcessPoolExecutor(max_workers=8) as executor:
#     executor.submit(call_simulator, netlist)

####################################### PLOT ##################################

plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True


if __name__ == "__main__":
    
    for i in range (0,2):
        if i == 0:
            file = "test_div_mod_0.sp"
            title_lag_lead = '2.4 GHz to 10 MHz Divider ratio'
            savefig = '2.4 GHz to 10 MHz Divider ratio.png'
            divin  = 2.4
        
        elif i == 1:
            file = "test_div_mod_1.sp"
            title_lag_lead = '2.5 GHz to 10 MHz Divider ratio'
            savefig = '2.5 GHz to 10 MHz Divider ratio.png'
            divin  = 2.5
        

        divout = 10    
        output_file = "div_behave.csv"

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
        

        fields = ['time', 'v(Fout)' ,'v(in)']
        
        data_df = pd.read_csv(output_file,sep='\s+')
        timearr = data_df['time']
        F_After_divider      = data_df['v(Fout)']    
        F_Before_divider    = data_df['v(in)']   
            
        plt.figure(i+1)

        plt.subplot(2,1,1)
        plt.plot(timearr , F_Before_divider, color='b', label='DIV_IN')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('Divider input =%0.1f GHz'% divin)
        #plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        plt.legend()
        
        plt.subplot(2,1,2)
        plt.plot(timearr , F_After_divider, color='g', label='DIV_OUT')
        plt.xlabel('time (sec)') 
        plt.ylabel('Amplitude (V)')
        plt.title('Divider Out=%d MHz'% divout)
        #plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)


        plt.legend()
        #plt.show()
        
        plt.suptitle(title_lag_lead)
        
        plt.savefig(savefig)
