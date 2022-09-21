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

main_tb_path = os.path.join("..", "spice_files")
run_dir = os.path.join("..", "run_test")

TEMPLATE_FILE = "test_vco_char.spice"

process_corners = ["ss", "sf", "fs", "ff", "tt"]
temp_corners = [-40, 27, 125]
supply_corners = [0.9, 1.0, 1.1]
vctrl_corners = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8]

supply_value = 1.8

corner_str = """
.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice {corner}
.temp {temp}
.options tnom={temp}

VDD VDD GND {vsup}
VTuner vctrl GND {vctrl}
Isource ibias VDD 90u"""

## .nodeset v(vout)=0

def run_corner(all_corner_data):
    templateLoader = jinja2.FileSystemLoader(searchpath=main_tb_path)
    templateEnv = jinja2.Environment(loader=templateLoader)
    template = templateEnv.get_template(TEMPLATE_FILE)

    pc = all_corner_data[0]
    tc = "{:.2f}".format(all_corner_data[1])
    sc = "{:.2f}".format(all_corner_data[2] * supply_value)
    vc = "{:.2f}".format(all_corner_data[3])

    new_corners_str = corner_str.format(corner=pc, 
                                        temp=tc, 
                                        vsup=sc, 
                                        vctrl=vc)

    full_spice = template.render(corner_setup=new_corners_str)

    spice_file_path = os.path.join(run_dir, "{}_{}_{}_{}.spi".format(pc, tc, sc, vc))
    text_file = open(spice_file_path, "w")
    text_file.write(full_spice)
    text_file.close()

    spice_run_log = os.path.join(run_dir, "{}_{}_{}_{}.log".format(pc, tc, sc, vc))
    log_file = open(spice_run_log, "w")
    subprocess.run(["ngspice", "-b", spice_file_path], stdout=log_file, stderr=log_file)
    log_file.close()

    ## read the data from log
    log_file = open(spice_run_log, "r")
    results_dict = {}

    for line in log_file.readlines():
        s = line.split()
        if len(s) > 2:
            if s[0] == "vp":
                results_dict["vp"] = s[2]
            elif s[0] == "vn":
                results_dict["vn"] = s[2]

    log_file.close()


    return results_dict

if __name__ == "__main__":
    
    all_comb = list(itertools.product(process_corners, temp_corners, supply_corners, vctrl_corners))

    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)
    
    shutil.copyfile("/open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/spinit", os.path.join(run_dir, ".spiceinit"))
    
    my_results = []

    # We can use a with statement to ensure threads are cleaned up promptly
    with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:
        # Start the load operations and mark each future with its URL
        future_to_comb = {executor.submit(run_corner, comp): comp for comp in all_comb[:5]}
        
        for future in concurrent.futures.as_completed(future_to_comb):
            comb = future_to_comb[future]
            try:
                data = future.result()
                data["process"] = comb[0]
                data["temp"] = comb[1]
                data["supply"] = comb[2]
                data["control"] = comb[3]
                my_results.append(data)

            except Exception as exc:
                print('generated an exception: %s' % (exc))
            else:
                print('%s corner completed' % (str(comb)))


    if len(my_results) > 0:
        df = pd.DataFrame(my_results)
        df.to_csv("all_measurements.csv", index=False)
    
