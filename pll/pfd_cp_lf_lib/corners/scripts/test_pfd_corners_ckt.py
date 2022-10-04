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
csv_dir = os.path.join("..", "csv_files")
TEMPLATE_FILE = "test_pfd.spice" #name of the tb
NUM_WORKERS = 27 # maximum number of processor threds to operate on
process_corners = ["tt", "sf", "fs", "ff", "ss"]
delay_values = [["10n", "1n"]]
## delay_values = [["10n", "1n"], ["1n", "10n"], ["1n", "1n"], ["1n", "1.4n"]]
temp_corners = [-40, 27, 125]
supply_corners = [0.9, 1.0, 1.1]
supply_value = 1.8
# create a string to carry all the lines related to the corners
corner_str = """
.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}
.temp {temp}
.options tnom={temp}
VDD VDD GND {vsup}
"""
## .nodeset v(vout)=0
def run_corner(all_corner_data):
    # This function gets a corner case and returns a list of
    # values of all the intended measurments
    templateLoader = jinja2.FileSystemLoader(searchpath=main_tb_path)
    templateEnv = jinja2.Environment(loader=templateLoader)
    template = templateEnv.get_template(TEMPLATE_FILE)
 
    # extract the (process,temp,supply) values
    # from the input list to update
    pc = all_corner_data[0]
    tc = "{:.2f}".format(all_corner_data[1])
    sc = "{:.2f}".format(all_corner_data[2] * supply_value)
    ref = all_corner_data[3][0]
    fb = all_corner_data[3][1]

    # updatet the corner lines with the values of the intended corner
    new_corners_str = corner_str.format(corner=pc,
                                        temp=tc,
                                        vsup=sc)
    # update the tb with the new values and save the content in a variable
    full_spice = template.render(corner_setup=new_corners_str , corner_string="_{}_{}_{}_{}_{}".format(pc, tc, sc, ref, fb), d_ref=ref, d_fb=fb,supply=sc)
    # create a new tb for the intended corner and update it and then close it
    spice_file_path = os.path.join(run_dir, "{}_{}_{}_{}_{}.spi".format(pc, tc, sc, ref, fb))
    text_file = open(spice_file_path, "w")
    text_file.write(full_spice)
    text_file.close()
    # create a log file for the intended corner and
    # then run the tb
    spice_run_log = os.path.join(run_dir, "{}_{}_{}_{}_{}.log".format(pc, tc, sc, ref, fb))
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
            if s[0] == "t_up_1":
                results_dict["t_up_1"] = s[2]
            elif s[0] == "t_up_2":
                results_dict["t_up_2"] = s[2]
            elif s[0] == "t_up_3":
                results_dict["t_up_3"] = s[2]

            elif s[0] == "t_dn_1":
                results_dict["t_dn_1"] = s[2]
            elif s[0] == "t_dn_2":
                results_dict["t_dn_2"] = s[2] 
            elif s[0] == "t_dn_3":
                results_dict["t_dn_3"] = s[2]

            elif s[0] == "t_fb_1":
                results_dict["t_fb_1"] = s[2]
            elif s[0] == "t_fb_2":
                results_dict["t_fb_2"] = s[2] 
            elif s[0] == "t_fb_3":
                results_dict["t_fb_3"] = s[2]

            elif s[0] == "t_ref_1":
                results_dict["t_ref_1"] = s[2]
            elif s[0] == "t_ref_2":
                results_dict["t_ref_2"] = s[2] 
            elif s[0] == "t_ref_3":
                results_dict["t_ref_3"] = s[2]


            elif s[0] == "tup_check":
                results_dict["tup_check"] = s[2]
                if (float (s[2]) < 0.01):
                    results_dict["Corner Status"] = "True"
                else:
                    results_dict["Corner Status"] = "False"

                

    log_file.close() # close the log file
    # return the list carrying the measurments
    return results_dict
if __name__ == "__main__":
    all_comb = list(itertools.product(process_corners, temp_corners, supply_corners, delay_values))
    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)
    
    if not os.path.isdir(csv_dir):
        os.makedirs(csv_dir)

    shutil.copyfile("/open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/spinit", os.path.join(os.getcwd(), ".spiceinit"))
    my_results = []

    with concurrent.futures.ThreadPoolExecutor(max_workers=NUM_WORKERS) as executor:
        future_to_comb = {executor.submit(run_corner, comp): comp for comp in all_comb}
        for future in concurrent.futures.as_completed(future_to_comb):
            comb = future_to_comb[future]
            try:
                data = {}
                data["process"] = comb[0]
                data["temp"] = comb[1]
                data["supply"] = comb[2]
                data["REF delay"] = comb[3][0]
                data["FB delay"] = comb[3][1]

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
        df.sort_values(by="supply", inplace=True)
        df.to_csv("all_measurements.csv", index=False)
    






