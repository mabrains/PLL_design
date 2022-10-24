##########################################################################
## Mabrains LLC
##########################################################################

from calendar import c
import pandas as pd
import os
import glob
import subprocess
import jinja2
import itertools
import concurrent.futures
import shutil

# get he path of the folder which contain the tb 
main_tb_path = os.path.join("..", "spice_files") 

# get the directory of the run folder which contain the log and tb files for each corner
run_dir = os.path.join("..", "run_test")  
csv_dir = os.path.join("..", "csv_sheets")
TEMPLATE_FILE = "test_BGR_char.spice" #name of the tb 
NUM_WORKERS = 29 # maximum number of processor threds to operate on 

###
## process_corners = ["ss", "sf", "fs", "ff", "tt"]
## temp_corners = [-40,-30,-20,-10,0,10,20,30,40,50,60,70,80,90,100,110,120]
## supply_corners = [0.9, 1.0, 1.1]
## vout = [0.9]
## 
## supply_value = 1.8
##
process_corners = ["ss", "sf", "fs", "ff", "tt"]
temp_corners = [-40,-30,-20,-10,0,10,20,30,40,50,60,70,80,90,100,110,120]
supply_corners = [0.9, 1.0, 1.1]
vout = [0.9]

supply_value = 1.8

# create a string to carry all the lines related to the corners
corner_str = """
.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}
.temp {temp}
.options tnom={temp}

VDD VDD GND {vsup}
VTuner out GND {vctrl}
"""

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
        if len(s) > 2:
            if s[0] == "iref":
                results_dict["iref"] = s[2]
          

    log_file.close() # close the log file

    # return the list carrying the measurments
    return results_dict



if __name__ == "__main__":
    # create a list has all the combinations of corner cases
    all_comb = list(itertools.product(process_corners, temp_corners, supply_corners, vout))

    # if the run folder is not found, create a new folder with the givven path which is 
    # created at the beginning of the script
    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)

    if not os.path.isdir(csv_dir):
        os.makedirs(csv_dir)
    # copy the spiceinit file to the run folder so there is comaptibility mode during the simulation
    shutil.copyfile("/open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/spinit", os.path.join(os.getcwd(), ".spiceinit"))
    
    # create an empty list to carry all the measurements for all the corners
    my_results = []

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
                
                my_results.append(data)

            except Exception as exc:
                print('generated an exception: %s' % (exc))
            else:
                print('%s corner completed' % (str(comb)))


    if len(my_results) > 0:
        df = pd.DataFrame(my_results)
        df.sort_values(by="control", inplace=True)
        df.to_csv("../csv_sheets/all_measurements.csv", index=False)
    
