##########################################################################
## Mabrains LLC
##########################################################################

from calendar import c
from ftplib import parse150
from numpy import linspace
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

TEMPLATE_FILE = "test_divider_char.spice" #name of the tb 
NUM_WORKERS = 30 # maximum number of processor threds to operate on 

process_corners = ["ss","sf","fs","ff","tt"]
temp_corners = [-40,27,120]
supply_corners = [0.9,1.0,1.1]
p0 = [0 ,1]
p1 = [0 ,1]
p2 = [0 ,1]
p3 = [0 ,1]
p4 = [0 ,1]

supply_value = 1.8

# create a string to carry all the lines related to the corners
corner_str = """
.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}
.temp {temp}
.options tnom={temp}

VDD VDD GND {vsup}
Vin fin GND SIN(0.9 0.9 {freq} 0 0 0)
V0 p0 GND {P0} 
V1 p1 GND {P1} 
V2 p2 GND {P2} 
V3 p3 GND {P3} 
V4 p4 GND {P4} 
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
    I0 = "{:.2f}".format(all_corner_data[3])
    I1 = "{:.2f}".format(all_corner_data[4])
    I2 = "{:.2f}".format(all_corner_data[5])
    I3 = "{:.2f}".format(all_corner_data[6])
    I4 = "{:.2f}".format(all_corner_data[7])
    
    decimal = (float(I0)) + 2*(float(I1)) + 4*(float(I2)) + 8*(float(I3)) + 16*(float(I4))
    fr = (256 - decimal)*1e7

    if float(I0) == 1:
        I0 = '1.8'
    if float(I1) == 1:
        I1 = '1.8'
    if float(I2) == 1:
        I2 = '1.8'
    if float(I3) == 1:
        I3 = '1.8'
    if float(I4) == 1:
        I4 = '1.8'

    # updatet the corner lines with the values of the intended corner
    new_corners_str = corner_str.format(corner=pc, 
                                        temp=tc, 
                                        vsup=sc, 
                                        freq=fr,
                                        P0=I0,
                                        P1=I1,
                                        P2=I2,
                                        P3=I3,
                                        P4=I4)
    
    # update the tb with the new values and save the content in a variable
    full_spice = template.render(corner_setup=new_corners_str)
    # create a new tb for the intended corner and update it and then close it
    spice_file_path = os.path.join(run_dir, "{}_{}_{}_{}_{}_{}_{}_{}.spi".format(pc, tc, sc,I0,I1,I2,I3,I4))
    text_file = open(spice_file_path, "w")
    text_file.write(full_spice)

    
    text_file.close()

    # create a log file for the intended corner and 
    # then run the tb 
    spice_run_log = os.path.join(run_dir, "{}_{}_{}_{}_{}_{}_{}_{}.log".format(pc, tc, sc,I0,I1,I2,I3,I4))
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
            if s[0] == "frequency":
                results_dict["frequency"] = s[2]
          

    log_file.close() # close the log file

    # return the list carrying the measurments
    return results_dict



if __name__ == "__main__":
    # create a list has all the combinations of corner cases
    all_comb = list(itertools.product(process_corners, temp_corners, supply_corners, p0,p1,p2,p3,p4))

    # if the run folder is not found, create a new folder with the givven path which is 
    # created at the beginning of the script
    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)
    
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
                data["P0"] = comb[3]
                data["P1"] = comb[4]
                data["P2"] = comb[5]
                data["P3"] = comb[6]
                data["P4"] = comb[7]
                
                new_data = future.result()

                data.update(new_data)
                
                my_results.append(data)

            except Exception as exc:
                print('generated an exception: %s' % (exc))
            else:
                print('%s corner completed' % (str(comb)))


    if len(my_results) > 0:
        df = pd.DataFrame(my_results)
        df.to_csv("all_measurements.csv", index=False)
    
