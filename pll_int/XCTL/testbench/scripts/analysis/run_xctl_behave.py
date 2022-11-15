################################################################################################
## Mabrains LLC
################################################################################################

from genericpath import isfile
import subprocess
import pandas as pd
import matplotlib.pyplot as plt
from jinja2 import Template
import os
from datetime import datetime
from matplotlib.ticker import EngFormatter
# datetime object containing current date and time
now = datetime.now()
run_folder = now.strftime("run_%d_%m_%Y_%H_%M_%S")
os.system (f"mkdir -p {run_folder}/spice {run_folder}/csv {run_folder}/images")            

netlist_tmp = os.path.join(os.path.dirname(os.path.abspath(__file__)),"../../test_xctl_behav.sp" ) 
# subckt_path = os.path.join(os.path.dirname(os.path.abspath(__file__)),"../../../behav/xctl_behave.ckt" ) 

############################# VAR TO NETLIST ##############################

with open(netlist_tmp) as f:
    tmpl = Template(f.read())
    file = f"{run_folder}/spice/test_xctl_behave.sp" 
    with open(file, "w") as netlist:
        netlist.write(tmpl.render(run_folder=run_folder)) 

# # Running ngspice for each netlist 
# with concurrent.futures.ProcessPoolExecutor(max_workers=8) as executor:
#     executor.submit(call_simulator, netlist)

####################################### PLOT ##################################

plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True

time_formatter = EngFormatter(unit='Sec')
volt_formatter = EngFormatter(unit='V')


if __name__ == "__main__":



    file = f"{run_folder}/spice/test_xctl_behave.sp"
    savefig = 'XCTL_output.png'


    output_file = f"{run_folder}/csv/xctl_behave.csv"

    ## Delete existing output file
    if os.path.isfile(output_file):
        os.remove(output_file)

    ## Run the simulation
    #subprocess.run(["ngspice", "-b", "-a", "PFD_TB.sp", "-o", "PFD_log_file.log"])
    subprocess.run(["ngspice", "-b", file])
    if not os.path.isfile(output_file):
        print("## Simulation didn't complete.")
        exit()

    fields = ['time','v(REF)']

    data_df = pd.read_csv(output_file,sep='\s+')
    timearr = data_df['time']
    REF     = data_df['v(REF)']  

 

    plt.figure(1)
    plt.plot(timearr , REF , color='blue', label='REF',linewidth=3)
    # plt.title('XCTL behavioural model')
    plt.grid(True)
    plt.xlim(0,400e-9)
    ax = plt.gca()
   # Set the title to Computer Modern
    ax.set_title("XCTL", fontname='cmr', fontsize=18)


    ax.xaxis.set_major_formatter(time_formatter)
    ax.yaxis.set_major_formatter(volt_formatter)
        # Set the font name for axis tick labels to be Computer Modern
    for tick in ax.get_xticklabels():
        tick.set_fontname('cmr')
    for tick in ax.get_yticklabels():
        tick.set_fontname('cmr')


    plt.legend()
    #plt.show()

    plt.savefig(f"{run_folder}/images/{savefig}")