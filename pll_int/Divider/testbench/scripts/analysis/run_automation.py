
##########################################################################
## Mabrains LLC
##########################################################################
## Divider simulation over variuos ratios (N=220 >> N=255) is automated 
# the script keeps the ouput freq at 10 MHZ, so it changes in the input frequency and the divide ratio N by changing in the P's

import jinja2 as jn
from jinja2 import Template
import os
import pandas as pd

current_path = os.getcwd()
measure_dir = os.path.join("..", "analysis/measurements")
run_dir = os.path.join("..", "analysis/run_test")  

if not os.path.isdir(run_dir):
        os.makedirs(run_dir)

if not os.path.isdir(measure_dir):
        os.makedirs(measure_dir)
        
# function to call the simulator (ngspice) for auto run
def call_simulator(file_name, num):
    """Call simulation commands to perform simulation.
    Args:
        file_name (str): Netlist file name.
    """
    os.system(f"ngspice -b {file_name} -o {file_name}{num}.log")



# function to convert decimal into binary
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


N_start = 235  # input to the code (strat N)
N_end= 255    # input to the code (end N)256

# for loop for simulation automation
p=[] # p's at specific divide ratio
netlist_tmp =f"../../../testbench/cir_tb_automation_temp2.spice"
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

    with open(netlist_tmp) as f:
        tmpl = Template(f.read())

    with open(run_dir+f"/divider_tb_out.spice" , "w") as netlist:
        netlist.write(tmpl.render(f_in = f_in, p0 = p0, p1 = p1 , p2 = p2 , p3 = p3 ,p4 = p4, p5 = p5 , p6 = p6 , p7 = p7 ,current_path=current_path))
    # Running ngspice for each netlist 
    netlist_out = run_dir+f"/divider_tb_out.spice"
    call_simulator (netlist_out, k)
    k +=1



#for loop for creating csv file from log files
results = []
y=1
# entering log files to get fout, n values 
for N in range (N_start, N_end):
    f_in = str (N/100) + "GHz"
    results_dict={}
    results_dict["f_input"]=  f_in
    current_file= open (run_dir+f"/divider_tb_out.spice{y}.log", "r")
    for line in current_file.readlines():
        s = line.split()
        #print (s)
        if len(s) > 2:
             if s[0] == "f_out":
                results_dict["f_out"] = s[2]
             elif s[0] == "n":
                 results_dict["n"] = s[2]

    results.append(results_dict)
    y +=1
if len(results) > 0:
      df = pd.DataFrame(results)
      df.to_csv("measurements/all_measurements.csv", index=False)
    






