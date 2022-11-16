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
#print(main_tb_path)
# get the directory of the run folder which contain the log and tb files for each corner
run_dir = os.path.join("..", "run_test")  

TEMPLATE_FILE = "test_ring_char.spice" #name of the tb 
NUM_WORKERS = 3 # maximum number of processor threds to operate on 

process_corners = ["ss", "sf", "fs", "ff"]
temp_corners = [-40, 27, 125]
supply_corners = [0.9, 1.0, 1.1]


supply_value = 1.8

# create a string to carry all the lines related to the corners
corner_str = """
.lib /foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}
.temp {temp}
.options tnom={temp}
VDD VDD GND PWL(0 0 1u {vsup} 1.2m {vsup})"""
##PWL(0 0 1u 1.8 0.5m 1.8)
## .nodeset v(vout)=0

def run_corner(all_corner_data):


    # This function gets a corner case and returns a list of 
    # values of all the intended measurments

    templateLoader = jinja2.FileSystemLoader(searchpath=main_tb_path)
    templateEnv = jinja2.Environment(loader=templateLoader)
    template = templateEnv.get_template(TEMPLATE_FILE)
    print(template)
    # extract the (process,temp,supply) values
    # from the input list to update
    pc = all_corner_data[0]
    tc = "{:.2f}".format(all_corner_data[1])
    sc = "{:.2f}".format(all_corner_data[2] * supply_value)
    print(sc)
    # updatet the corner lines with the values of the intended corner
    new_corners_str = corner_str.format(corner=pc, 
                                        temp=tc, 
                                        vsup=sc)

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

    #create an empty list to save the measurements
    # this list has labels of the name of the  measurement
    # you can append whatever you want of measurments
    results_dict = {} 

    #iterate on the log file and extract the values of the intended measurments
    for line in log_file.readlines():
        s = line.split()
        #print (len(s))
        if len(s) > 2:
            if s[0] == "freq":
                if (float (s[2]) > 0):
                    results_dict["Oscillation Status"] = "True"
                    results_dict["freq (MHZ)"] = s[2]
                else:
                    results_dict["Oscillation Status"] = "False"
                    results_dict["freq (MHZ)"] = "-"

    log_file.close() # close the log file
    # print(results_dict)
    # return the list carrying the measurments
    return results_dict



if __name__ == "__main__":
    # create a list has all the combinations of corner cases
    all_comb = list(itertools.product(process_corners, temp_corners, supply_corners))

    # if the run folder is not found, create a new folder with the given path which is 
    # created at the beginning of the script
    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)
    
    # copy the spiceinit file to the run folder so there is comaptibility mode during the simulation
    shutil.copyfile("/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/spinit", os.path.join(os.getcwd(), ".spiceinit"))
    
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

                
                new_data = future.result()

                data.update(new_data)
                
                my_results.append(data)

            except Exception as exc:
                print('generated an exception: %s' % (exc))
            else:
                print('%s corner completed' % (str(comb)))

    # loop on the csv file to plot and sort the measurement
    # print(len(my_results))
    if len(my_results) > 0:
        df = pd.DataFrame(my_results)
        df.sort_values(by="supply", inplace=True)
        df.to_csv("all_measurements.csv", index=False)
    
    failed_corners = []
    for ind in df.index:
        if df['Oscillation Status'][ind] == False:
            corner = {}
            corner["failed_corners"] = df['process'][ind]+'_'+str(df['temp'][ind])+'_'+str(df['supply'][ind])
            if (corner not in failed_corners ):
             failed_corners.append(corner)



    if len(failed_corners) > 0:
        df = pd.DataFrame(failed_corners)
        df.to_csv("failed_corners.csv", index=False)
