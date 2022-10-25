################################################################################################
## Mabrains LLC
################################################################################################

from genericpath import isfile
import subprocess
import os
import pandas as pd
import matplotlib.pyplot as plt
from calendar import c
import glob
import jinja2
import itertools
import concurrent.futures
import shutil

plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True


# get he path of the folder which contain the tb
main_tb_path = os.path.join("..")
# get the directory of the run folder which contain the log and tb files for each corner
run_dir = os.path.join("..", "run_test")
csv_dir = os.path.join("..", "csv_files")
TEMPLATE_FILE = "test_pfd.spice" #name of the tb
NUM_WORKERS = 27 # maximum number of processor threds to operate on
process_corners = ["tt", "sf", "fs", "ff", "ss"]
delay_values = [["1.4n", "1n"]]
## delay_values = [["10n", "1n"], ["1n", "10n"], ["1n", "1n"], ["1n", "1.4n"]]
temp_corners = [-40, 27, 125]
supply_corners = [0.9, 1.0, 1.1]
supply_value = 1.8



if __name__ == "__main__":
    
    ## Run the simulation
    subprocess.run(["ngspice", "PLL.sp"])
            