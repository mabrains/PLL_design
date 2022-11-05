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
import numpy as np

# get he path of the folder which contain the tb 
main_tb_path = os.path.join("..", "../../testbench") 
run_dir = os.path.join("..", "analysis/run_test") 
measure_dir = os.path.join("..", "analysis/measurements")
current_path = os.getcwd()


TEMPLATE_FILE = "inv_temp.spice" #name of the tb 
NUM_WORKERS = 2 # maximum number of processor threds to operate on 

#lp_values = [0.42,0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 11.5]
lp_values = np.arange(0.15, 3, 0.25).tolist()

def run_corner(all_corner_data):

    templateLoader = jinja2.FileSystemLoader(searchpath=main_tb_path)
    templateEnv = jinja2.Environment(loader=templateLoader)
    template = templateEnv.get_template(TEMPLATE_FILE)
    lp = all_corner_data

    # update the tb with the new values and save the content in a variable
    full_spice = template.render(lp = lp, current_path=current_path)

    # create a new tb for the intended corner and update it and then close it
    spice_file_path = os.path.join(run_dir, "{}.spi".format(lp))
    text_file = open(spice_file_path, "w")
    text_file.write(full_spice)
    text_file.close()

    # create a log file for the intended corner and 
    # then run the tb 
    spice_run_log = os.path.join(run_dir, "{}.log".format(lp))
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
            if s[0] == "vthp1":
                results_dict["vthp1"] = s[2]
            
            elif s[0] == "vgsp1":
                results_dict["vgsp1"] = s[2]

            elif s[0] == "in1(uA)":
                results_dict["in1"] = s[2]

            elif s[0] == "in2(uA)":
                results_dict["in2"] = s[2]

            elif s[0] == "ip1(uA)":
                results_dict["ip1"] = s[2]



    log_file.close() # close the log file

    # return the list carrying the measurments
    return results_dict



if __name__ == "__main__":
    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)
    
    if not os.path.isdir(measure_dir):
        os.makedirs(measure_dir)

    # copy the spiceinit file to the run folder so there is comaptibility mode during the simulation
    shutil.copyfile("/open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/spinit", os.path.join(os.getcwd(), ".spiceinit"))
    
    # create an empty list to carry all the measurements for all the corners
    my_results = []

    # We can use a with statement to ensure threads are cleaned up promptly
    with concurrent.futures.ThreadPoolExecutor(max_workers=NUM_WORKERS) as executor:
        # Start the load operations and mark each future with its URL
        future_to_comb = {executor.submit(run_corner, comp): comp for comp in lp_values}
        
        for future in concurrent.futures.as_completed(future_to_comb):
            comb = future_to_comb[future]
            try:
                data = {}
                data["lp"] = comb
                
                new_data = future.result()
                data.update(new_data)
                my_results.append(data)

            except Exception as exc:
                print('generated an exception: %s' % (exc))
            else:
                print('%s corner completed' % (str(comb)))

    # loop on the csv file to plot and sort the measurement
    if len(my_results) > 0:
        df = pd.DataFrame(my_results)
        df.to_csv("measurements/all_measurements.csv", index=False)