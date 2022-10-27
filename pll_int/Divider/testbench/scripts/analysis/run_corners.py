##########################################################################
## Mabrains LLC
##########################################################################

## server:
## .spiceinit path in server:   "/open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/spinit"
## corner file in server:      .lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}

## Local Machine:
##  "/env/foundry/skywaters/sky130A/libs.tech/ngspice/spinit"
## .lib /home/mohamed/env/foundry/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}


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

main_tb_path = os.path.join("..", "../../testbench") 
run_dir = os.path.join("..", "corners/run_test")  
measure_dir = os.path.join("..", "corners/measurements")
current_path = os.getcwd()

TEMPLATE_FILE = "cir_tb_corner_temp.spice" #name of the tb
NUM_WORKERS = 30 # maximum number of processor threds to operate on 
'''
process_corners = ["ss", "sf", "fs", "ff", "ss"]
temp_corners = [-40, 27, 125]
supply_corners = [0.9, 1.0, 1.1]
'''
process_corners = ["tt"]
temp_corners = [27]
supply_corners =  [1]

supply_value = 1.8
# create a string to carry all the lines related to the corners
corner_str = """
.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}
.temp {temp}
.options tnom={temp}

VDD VDD GND {vsup}
.param f_input = {f_in}G
.param p0_val = {p0}
.param p1_val=  {p1}
.param p2_val=  {p2}
.param p3_val=  {p3}
.param p4_val=  {p4}
.param p5_val=  {p5}
.param p6_val=  {p6}
.param p7_val=  {p7}"""



 #function to convert decimal into binary
def dec_2_bin(d):
    b=[] 
    if d == 0:
        b= [0]
    # build the b list
    else:
        while d>=1:
            bit = d%2
            d= d//2 
            b.append(bit)
    # adding zeroes in the return list b to fit the size 5 (p0 p1 p2 p3 p4)
    if len(b)< 8:
        for i in range (len(b), 8):
           b.append(0) 

    return b



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


    N_start = 220  # input to the code (strat N)
    N_end= 221   # input to the code (end N) 256

    p=[] # p's at specific divide ratio

    results_dict = {'Process': [], 'Temp': [], 'Supply': [],'F_input': [], 'F_out': [], 'N': []}
    k=1
    for N in range (N_start,N_end):

        # append the corners to the dictionary
        results_dict["Process"].append(pc)
        results_dict["Temp"].append(tc)
        results_dict["Supply"].append(sc)


        d = 256 - N
        p= dec_2_bin(d)
        f_in = N/100
        p0= int (p[0])* 1.8
        p1= int (p[1]) * 1.8
        p2= int(p[2])*1.8
        p3= int(p[3])*1.8
        p4= int(p[4])*1.8
        p5= int(p[5])*1.8
        p6= int(p[6])*1.8
        p7= int(p[7])*1.8

        # updatet the corner lines with the values of the intended corner
        new_corners_str = corner_str.format(corner=pc, 
                                            temp=tc, 
                                            vsup=sc,
                                            f_in=f_in,
                                            p0=p0,
                                            p1=p1,
                                            p2=p2,
                                            p3=p3,
                                            p4=p4,
                                            p5=p5,
                                            p6=p6,
                                            p7=p7)

        # update the tb with the new values and save the content in a variable
        full_spice = template.render(corner_setup=new_corners_str, current_path=current_path)

        # create a new tb for the intended corner and update it and then close it
        spice_file_path = os.path.join(run_dir, "{}_{}_{}_{}.spi".format(pc, tc, sc, N))
        text_file = open(spice_file_path, "w")
        text_file.write(full_spice)
        text_file.close()

        # create a log file for the intended corner and 
        # then run the tb 
        spice_run_log = os.path.join(run_dir, "{}_{}_{}_{}.log".format(pc, tc, sc, N))
        log_file = open(spice_run_log, "w")
        subprocess.run(["ngspice", "-b", spice_file_path], stdout=log_file, stderr=log_file)
        log_file.close()


        ## read the data from log
        current_file = open(spice_run_log, "r")

        f_in = str (N/100) + "GHz"
        results_dict["F_input"].append(f_in)
        for line in current_file.readlines():
            s = line.split()
            if len(s) > 2:
                if s[0] == "f_out":
                    results_dict["F_out"].append(s[2])
                elif s[0] == "n":
                    results_dict["N"].append(s[2])

        current_file.close() # close the log file


    # return the list carrying the measurments
    return results_dict



if __name__ == "__main__":
    # create a list has all the combinations of corner cases
    all_comb = list(itertools.product(process_corners, temp_corners, supply_corners))
    # if the run folder is not found, create a new folder with the givven path which is 
    # created at the beginning of the script
    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)
    
    if not os.path.isdir(measure_dir):
        os.makedirs(measure_dir)
    
    # create an empty list to carry all the measurements for all the corners
    my_results = []
    data = {'Process': [], 'Temp': [], 'Supply': [],'F_input': [], 'F_out': [], 'N': []}

    # We can use a with statement to ensure threads are cleaned up promptly
    with concurrent.futures.ThreadPoolExecutor(max_workers=NUM_WORKERS) as executor:
        # Start the load operations and mark each future with its URL
        future_to_comb = {executor.submit(run_corner, comp): comp for comp in all_comb}

        for future in concurrent.futures.as_completed(future_to_comb):
            comb = future_to_comb[future]
            
            try:
                my_results = future.result()
                
                data["Process"].extend(my_results["Process"])
                data["Temp"].extend(my_results["Temp"])
                data["Supply"].extend(my_results["Supply"])
                data["F_input"].extend(my_results["F_input"])
                data["F_out"].extend(my_results["F_out"])
                data["N"].extend(my_results["N"])
                

            except Exception as exc:
                print('generated an exception: %s' % (exc))
            else:
                print('%s corner completed' % (str(comb)))
            

    # loop on the csv file to plot and sort the measurement
    if len(data) > 0:
        df = pd.DataFrame.from_dict(data)
        df.to_csv("measurements/all_measurements.csv", index=False)

   
    

        

        
    