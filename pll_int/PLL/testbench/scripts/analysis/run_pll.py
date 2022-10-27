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

    ## Run the simulation
    subprocess.run(["ngspice", "../../test_pll.sp"])
            