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
import subprocess

main_tb_path = os.path.join("..", "spice_files")
run_dir = os.path("..", "run_test")

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
    text_file = open(os.path.join(run_dir, "{}_{}_{}_{}.spi".format()), "w")
    text_file.write('Python Tutorial by TutorialKart.')
    text_file.close()


    with urllib.request.urlopen(url, timeout=timeout) as conn:
        return conn.read()

if __name__ == "__main__":
    
    
    all_comb = list(itertools.product(process_corners, temp_corners, supply_corners, vctrl_corners))
    
    

# We can use a with statement to ensure threads are cleaned up promptly
with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:
    # Start the load operations and mark each future with its URL
    future_to_url = {executor.submit(load_url, url, 60): url for url in URLS}
    for future in concurrent.futures.as_completed(future_to_url):
        url = future_to_url[future]
        try:
            data = future.result()
        except Exception as exc:
            print('%r generated an exception: %s' % (url, exc))
        else:
            print('%r page is %d bytes' % (url, len(data)))
    
    

    ## Generate folder structure

    ## Generate simulation netlist
    





    ## Run simulation

    ## Read measurements
