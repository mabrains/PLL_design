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

# get he path of the folder which contain the tb 
main_tb_path = os.path.join("..", "spice_files") 

# get the directory of the run folder which contain the log and tb files for each corner
run_dir = os.path.join("..", "run_test")  

TEMPLATE_FILE = "divider_tb.spice" #name of the tb 
NUM_WORKERS = 2 # maximum number of processor threds to operate on 
'''
process_corners = ["ss", "sf", "fs", "ff", "ss"]
temp_corners = [-40, 27, 125]
supply_corners = [0.9, 1.0, 1.1]
'''
process_corners = ["tt", "sf", "fs", "ff", "ss"]
temp_corners = [-40, 27, 125]
supply_corners =  [0.9, 1, 1.1]

supply_value = 1.8
# create a string to carry all the lines related to the corners
corner_str = """
.lib /home/mohamed/env/foundry/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}
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
    results_dict = {} 



    N_start = 220  # input to the code (strat N)
    N_end= 256    # input to the code (end N)

    # for loop for simulation automation
    p=[] # p's at specific divide ratio
    netlist_tmp = f"divider_tb.spice"
    my_results= []
    results_dict = {} 
    k=1
    for N in range (N_start,N_end):
        d = 256- N
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
        full_spice = template.render(corner_setup=new_corners_str)

        # create a new tb for the intended corner and update it and then close it
        spice_file_path = os.path.join(run_dir, "{}_{}_{}.spi".format(pc, tc, sc))
        text_file = open(spice_file_path, "w")
        text_file.write(full_spice)
        text_file.close()

        # create a log file for the intended corner and 
        # then run the tb 
        spice_run_log = os.path.join(run_dir, "{}_{}_{}.log".format(pc, tc, sc))
        log_file = open(spice_run_log, "w")
        subprocess.run(["ngspice", "-b", spice_file_path], stdout=log_file, stderr=log_file)
        log_file.close()

        ## read the data from log
        log_file = open(spice_run_log, "r")

    
        #iterate on the log file and extract the values of the intended measurments
        #for loop for creating csv file from log files
        y=1
        # entering log files to get fout, n values 
        for N in range (N_start, N_end):
            f_in = str (N/100) + "GHz"
            results_dict_temp = {} 
            results_dict["f_input"]=  f_in
            current_file= open (log_file, "r")
            for line in current_file.readlines():
                s = line.split()
                #print (s)
                if len(s) > 2:
                    if s[0] == "f_out":
                        results_dict_temp["f_out"] = s[2]
                        results_dict.update(results_dict_temp)
                    elif s[0] == "n":
                        results_dict_temp["n"] = s[2]
                        results_dict.update(results_dict_temp)
        
        log_file.close() # close the log file

        # return the list carrying the measurments
        return results_dict



if __name__ == "__main__":
    # create a list has all the combinations of corner cases
    all_comb = list(itertools.product(process_corners, temp_corners, supply_corners))

    # if the run folder is not found, create a new folder with the givven path which is 
    # created at the beginning of the script
    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)
    
    # copy the spiceinit file to the run folder so there is comaptibility mode during the simulation
    #shutil.copyfile("/env/foundry/skywaters/sky130A/libs.tech/ngspice/spinit", os.path.join(os.getcwd(), ".spiceinit"))
    
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
               #data = {}
               #data["process"] = comb[0]
               #data["temp"] = comb[1]
               #data["supply"] = comb[2]
               #data["control"] = comb[3]
               #data["corner name"] = comb[0]+','+str(comb[1])+','+str(comb[2])
                
                new_data = future.result()
                
                my_results.append(data)

            except Exception as exc:
                print('generated an exception: %s' % (exc))
            else:
                print('%s corner completed' % (str(comb)))
            new_data = future.result()

            my_results.append(new_data)

    # loop on the csv file to plot and sort the measurement
    if len(my_results) > 0:
        df = pd.DataFrame(my_results)
        df.sort_values(by=["corner name","control"] , inplace=True)
        df.to_csv("all_measurements.csv", index=False)

   
    

        

        
    