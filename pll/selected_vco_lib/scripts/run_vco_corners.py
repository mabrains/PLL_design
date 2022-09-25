##########################################################################
## Mabrains LLC
##########################################################################

## server:
## .spiceinit path in server:   "/open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/spinit"
## corner file in server:      .lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}

## VM: 
##  "/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/spinit"
## .lib /foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}


from calendar import c
from operator import index
import pandas as pd
import os
import glob
import subprocess
import jinja2
import itertools
import concurrent.futures
import shutil
import matplotlib.pyplot as plt

# get he path of the folder which contain the tb 
main_tb_path = os.path.join("..", "spice_files") 

# get the directory of the run folder which contain the log and tb files for each corner
run_dir = os.path.join("..", "run_test")  

TEMPLATE_FILE = "test_vco_char.spice" #name of the tb 
NUM_WORKERS = 5 # maximum number of processor threds to operate on 
'''
process_corners = ["ss", "sf", "fs", "ff", "ss"]
temp_corners = [-40, 27, 125]
supply_corners = [0.9, 1.0, 1.1]
vctrl_corners = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7,0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8]
'''
process_corners = ["ss", "sf","tt"]
temp_corners = [-40]
supply_corners = [0.9]
vctrl_corners = [0.0,]

supply_value = 1.8

# create a string to carry all the lines related to the corners
corner_str = """
.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}
.temp {temp}
.options tnom={temp}

VDD VDD GND {vsup}
VTuner vctrl GND {vctrl}
Isource VDD ibias 90u"""

## .nodeset v(vout)=0

def run_corner(all_corner_data):
    # This function gets a corner case and returns a list of 
    # values of all the intended measurments

    templateLoader = jinja2.FileSystemLoader(searchpath=main_tb_path)
    templateEnv = jinja2.Environment(loader=templateLoader)
    template = templateEnv.get_template(TEMPLATE_FILE)

    # extract the (process,temp,supply,control voltage) values
    # from the input list to update
    pc = all_corner_data[0]
    tc = "{:.2f}".format(all_corner_data[1])
    sc = "{:.2f}".format(all_corner_data[2] * supply_value)
    vc = "{:.2f}".format(all_corner_data[3])

    # updatet the corner lines with the values of the intended corner
    new_corners_str = corner_str.format(corner=pc, 
                                        temp=tc, 
                                        vsup=sc, 
                                        vctrl=vc)

    # update the tb with the new values and save the content in a variable
    full_spice = template.render(corner_setup=new_corners_str)

    # create a new tb for the intended corner and update it and then close it
    spice_file_path = os.path.join(run_dir, "{}_{}_{}_{}.spi".format(pc, tc, sc, vc))
    text_file = open(spice_file_path, "w")
    text_file.write(full_spice)
    text_file.close()

    # create a log file for the intended corner and 
    # then run the tb 
    spice_run_log = os.path.join(run_dir, "{}_{}_{}_{}.log".format(pc, tc, sc, vc))
    log_file = open(spice_run_log, "w")
    subprocess.run(["ngspice", "-b", spice_file_path], stdout=log_file, stderr=log_file)
    log_file.close()

    ## read the data from log
    log_file = open(spice_run_log, "r")

    #create an empty list to save the measurements
    # this list has labels of the name of the  measurement
    # you can append whatever you want of measurments
    results_dict = {} 

    #iterate on the log file and extract the values of the intended measurments
    for line in log_file.readlines():
        s = line.split()
        #print (s)
        if len(s) > 2:
            if s[0] == "vp":
                results_dict["vp"] = s[2]
            elif s[0] == "vn":
                results_dict["vn"] = s[2]
            elif s[0] == "freq":
                if (float (s[2]) > 0):
                    results_dict["Oscillation Status"] = "True"
                    results_dict["freq (GHZ)"] = round(float (s[2]),2)
                    #results_dict["freq (GHZ)"] = s[2]
                else:
                    results_dict["Oscillation Status"] = "False"
                    results_dict["freq (GHZ)"] = "-"

            elif s[0].lower() == 'error:' and 'measure' in s and 'tperiod' in s:
                results_dict["Oscillation Status"] = "False"
                results_dict["freq (GHZ)"] = "-"

            elif s[0].lower() == "i_tail":
                results_dict["I_tail (mA)"] = s[2]
            elif s[0].lower() == "i_left":
                results_dict["I_left (mA)"] = s[2]
            elif s[0].lower() == "i_right":
                results_dict["I_right (mA)"] = s[2]
            
            elif s[0].lower() == "gmn":
                results_dict["gmn (mS)"] = s[2]
            elif s[0].lower() == "gmp":
                results_dict["gmp (mS)"] = s[2]

            elif s[0].lower() == "tail_sat_check":
                if (float (s[2]) > 0):
                    results_dict["tail_sat_check"] = "True"
                else:
                    results_dict["tail_sat_check"] = "False"

            elif s[0].lower() == "nmos_sat_check":
                if (float (s[2]) > 0):
                    results_dict["nmos_sat_check"] = "True"
                else:
                    results_dict["nmos_sat_check"] = "False"

            elif s[0].lower() == "pmos_sat_check":
                if (float (s[2]) > 0):
                    results_dict["pmos_sat_check"] = "True"
                else:
                    results_dict["pmos_sat_check"] = "False"
            elif s[0] == "vdiff_max":
                results_dict["differential swing"] = float(s[2])*2


    log_file.close() # close the log file

    # return the list carrying the measurments
    return results_dict



if __name__ == "__main__":
    # create a list has all the combinations of corner cases
    all_comb = list(itertools.product(process_corners, temp_corners, supply_corners, vctrl_corners))

    # if the run folder is not found, create a new folder with the givven path which is 
    # created at the beginning of the script
    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)
    
    # copy the spiceinit file to the run folder so there is comaptibility mode during the simulation
    shutil.copyfile("/open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/spinit", os.path.join(os.getcwd(), ".spiceinit"))
    
    # create an empty list to carry all the measurements for all the corners
    my_results = []
    failed_corners = []

    # We can use a with statement to ensure threads are cleaned up promptly
    with concurrent.futures.ThreadPoolExecutor(max_workers=NUM_WORKERS) as executor:
        # Start the load operations and mark each future with its URL
        future_to_comb = {executor.submit(run_corner, comp): comp for comp in all_comb}
        
        for future in concurrent.futures.as_completed(future_to_comb):
            comb = future_to_comb[future]
            try:
                data = {}
                data["process"] = comb[0]
                data["temp"] = comb[1]
                data["supply"] = comb[2]
                data["control"] = comb[3]
                data["corner name"] = comb[0]+','+str(comb[1])+','+str(comb[2])
                
                new_data = future.result()

                data.update(new_data)
                if data['Oscillation Status'] == 'False':
                    fetched_corner = data['process']+','+str(data['temp'])+','+str(data['supply']*supply_value)
                    if (fetched_corner not in failed_corners ):
                        failed_corners.append(fetched_corner)
                        data["failed corners"] = fetched_corner
                
                my_results.append(data)

            except Exception as exc:
                print('generated an exception: %s' % (exc))
            else:
                print('%s corner completed' % (str(comb)))

    # loop on the csv file to plot and sort the measurement
    if len(my_results) > 0:
        df = pd.DataFrame(my_results)
        df.sort_values(by=["corner name","control"] , inplace=True)
        df.to_csv("all_measurements.csv", index=False)
'''
    # plotting the passed corners
        for itr in range(0,len(df["control"])-len(vctrl_corners)+1,len(vctrl_corners)):
            control_list = df["control"][itr:itr+len(vctrl_corners)-1].tolist()
            freq_list = df["freq (GHZ)"][itr:itr+len(vctrl_corners)-1].tolist()
            oscilation_state = df["Oscillation Status"][itr:itr+len(vctrl_corners)-1].tolist()
            if ('False' in oscilation_state):
                print (df["corner name"][itr])
                continue
            else :
                plt.plot(control_list , freq_list,linewidth = 2.5,label=df["corner name"][itr])

        plt.legend()
        plt.show()

'''
        
    