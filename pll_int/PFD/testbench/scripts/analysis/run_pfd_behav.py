################################################################################################
## Mabrains LLC
################################################################################################

from genericpath import isfile
import subprocess
import pandas as pd
import matplotlib.pyplot as plt
from jinja2 import Template
import os
from datetime import datetime
from matplotlib.ticker import EngFormatter

# datetime object containing current date and time
now = datetime.now()
run_folder = now.strftime("run_%d_%m_%Y_%H_%M_%S")
os.system(f"mkdir -p {run_folder}/spice {run_folder}/csv {run_folder}/images")

netlist_tmp = os.path.join(
    os.path.dirname(os.path.abspath(__file__)), "../../test_pfd_behav.sp"
)
subckt_path = os.path.join(
    os.path.dirname(os.path.abspath(__file__)), "../../../behav/pfd_behave.ckt"
)

############################# VAR TO NETLIST ##############################

delayup = 5.0 * 100e-9
delaydwn = 5.0 * 100e-9
text = "*Test Line exchange"

for i in range(0, 3):
    delayup = 5.1 * 100e-9 if i == 1 else 5.0 * 100e-9
    delaydwn = 5.1 * 100e-9 if i == 2 else 5.0 * 100e-9
    with open(netlist_tmp) as f:
        tmpl = Template(f.read())
        file = f"{run_folder}/spice/test_pfd_mod_{i}.sp"
        with open(file, "w") as netlist:
            netlist.write(
                tmpl.render(
                    delayup=delayup,
                    delaydwn=delaydwn,
                    line=text,
                    subckt_path=subckt_path,
                    run_folder=run_folder,
                )
            )

# # Running ngspice for each netlist
# with concurrent.futures.ProcessPoolExecutor(max_workers=8) as executor:
#     executor.submit(call_simulator, netlist)

####################################### PLOT ##################################

plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True


time_formatter = EngFormatter(unit="Sec")
volt_formatter = EngFormatter(unit="V")


if __name__ == "__main__":

    for i in range(0, 3):
        if i == 0:
            file = f"{run_folder}/spice/test_pfd_mod_0.sp"
            title_lag_lead = "Locked State"
            savefig = "Locked_State.png"
        elif i == 1:
            file = f"{run_folder}/spice/test_pfd_mod_1.sp"
            title_lag_lead = "Feedback signal leads the Reference signal"
            savefig = "Feedback_signal_leads_the_Reference.png"
        elif i == 2:
            file = f"{run_folder}/spice/test_pfd_mod_2.sp"
            title_lag_lead = "Reference signal leads the Feedback signal"
            savefig = "Reference_signal_leads_the_Feedback_signal.png"

        output_file = f"{run_folder}/csv/pfd_behave.csv"

        ## Delete existing output file
        if os.path.isfile(output_file):
            os.remove(output_file)

        ## Run the simulation
        # subprocess.run(["ngspice", "-b", "-a", "PFD_TB.sp", "-o", "PFD_log_file.log"])
        subprocess.run(["ngspice", "-b", file])
        if not os.path.isfile(output_file):
            print("## Simulation didn't complete.")
            exit()

        fields = ["time", "v(FBS)", "v(REFS)", "v(UP)", "v(DWN)"]

        data_df = pd.read_csv(output_file, sep="\s+")
        timearr = data_df["time"]
        FB = data_df["v(FBS)"]
        REF = data_df["v(REFS)"]
        UP = data_df["v(UP)"]
        DWN = data_df["v(DWN)"]

        plt.figure(i + 1)

        plt.subplot(4, 1, 1)
        plt.plot(timearr, REF, color="blue", label="REF", linewidth=3)
        plt.title("REF")
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        ax = plt.gca()
        ax.xaxis.set_major_formatter(time_formatter)
        ax.yaxis.set_major_formatter(volt_formatter)

        plt.subplot(4, 1, 2)
        plt.plot(timearr, FB, color="g", label="FB", linewidth=3)
        plt.title("FB")
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        ax = plt.gca()
        ax.xaxis.set_major_formatter(time_formatter)
        ax.yaxis.set_major_formatter(volt_formatter)

        plt.subplot(4, 1, 3)
        plt.plot(timearr, UP, color="r", label="UP", linewidth=3)
        plt.title("UP")
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        ax = plt.gca()
        ax.xaxis.set_major_formatter(time_formatter)
        ax.yaxis.set_major_formatter(volt_formatter)

        plt.subplot(4, 1, 4)
        plt.plot(timearr, DWN, color="c", label="DWN", linewidth=3)
        plt.title("DWN")
        plt.xlim(4e-6, 4.2e-6)
        plt.grid(True)
        ax = plt.gca()
        ax.xaxis.set_major_formatter(time_formatter)
        ax.yaxis.set_major_formatter(volt_formatter)

        plt.legend()
        # plt.show()

        plt.suptitle(title_lag_lead)

        plt.savefig(f"{run_folder}/images/{savefig}")
