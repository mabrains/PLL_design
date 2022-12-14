################################################################################################
## Mabrains LLC
################################################################################################

from genericpath import isfile
import subprocess
import os
import pandas as pd
import matplotlib.pyplot as plt

plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True


if __name__ == "__main__":
    
    output_file = "charge_pump_behav.csv"

    ## Delete existing output file
    if os.path.isfile(output_file):
        os.remove(output_file)

    ## Run the simulation
    subprocess.run(["ngspice", "-b", "test_charge_pump_lpf.sp"])

    if not os.path.isfile(output_file):
        print("## Simulation didn't complete.")
        exit()
    
    df = pd.read_csv(output_file, sep="\s+")
    df.plot(x="time")
    plt.grid()
    plt.show()
        