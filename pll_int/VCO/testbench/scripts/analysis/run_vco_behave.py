################################################################################################
## Mabrains LLC
################################################################################################

import os
import subprocess
import pandas as pd
import matplotlib.pyplot as plt
import jinja2
import concurrent.futures
import numpy as np

plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True

NUM_WORKERS = 8  # maximum number of processor threds to operate on
TEMP_TB_PATH = os.path.join(
    os.path.dirname(os.path.abspath(__file__)), "../../test_vco_behave.sp"
)
run_dir = os.path.join("..", "run_test")


def run_corner(vctrl):
    # This function gets a corner case and returns a list of
    # values of all the intended measurments

    templateLoader = jinja2.FileSystemLoader(searchpath=".")
    templateEnv = jinja2.Environment(loader=templateLoader)
    template = templateEnv.get_template(TEMP_TB_PATH)

    # update the tb with the new values and save the content in a variable
    vctrl_str = "{:.2f}".format(vctrl)
    full_spice = template.render(vctrl=vctrl_str)

    # create a new tb for the intended corner and update it and then close it
    spice_file_path = os.path.join(run_dir, "{}.spi".format(vctrl))
    text_file = open(spice_file_path, "w")
    text_file.write(full_spice)
    text_file.close()

    # create a log file for the intended corner and
    # then run the tb
    spice_run_log = os.path.join(run_dir, "{}.log".format(vctrl))
    log_file = open(spice_run_log, "w")
    subprocess.run(["ngspice", "-b", spice_file_path], stdout=log_file, stderr=log_file)
    log_file.close()

    ## read the data from log
    log_file = open(spice_run_log, "r")

    # create an empty list to save the measurements
    # this list has labels of the name of the  measurement
    # you can append whatever you want of measurments
    results_dict = {}

    # iterate on the log file and extract the values of the intended measurments
    for line in log_file.readlines():
        s = line.split()
        # print (s)
        if len(s) > 2 and len(s) < 4:
            if s[1] == "=":
                results_dict[s[0]] = s[2]

    log_file.close()  # close the log file

    # return the list carrying the measurments
    return results_dict


if __name__ == "__main__":

    output_file = "vco_behav.csv"

    ## Delete existing output file
    if os.path.isfile(output_file):
        os.remove(output_file)

    if not os.path.isdir(run_dir):
        os.makedirs(run_dir)

    # create an empty list to carry all the measurements for all the corners
    vctrl = list(np.arange(0.0, 1.8, 0.01))

    my_results = []

    # We can use a with statement to ensure threads are cleaned up promptly
    with concurrent.futures.ThreadPoolExecutor(max_workers=NUM_WORKERS) as executor:
        # Start the load operations and mark each future with its URL
        future_to_comb = {executor.submit(run_corner, comp): comp for comp in vctrl}

        for future in concurrent.futures.as_completed(future_to_comb):
            comb = future_to_comb[future]
            try:
                data = {}
                data["vctrl"] = comb

                new_data = future.result()

                data.update(new_data)
                my_results.append(data)

            except Exception as exc:
                print("%{:.2f} generated an exception: %s" % (comb, exc))
            else:
                print("%s voltage completed" % (str(comb)))

    # loop on the csv file to plot and sort the measurement
    if len(my_results) > 0:
        df = pd.DataFrame(my_results)
        df.sort_values(by="vctrl", inplace=True)
        df["freq"] = df["freq"].astype("float")
        df.to_csv(output_file, index=False)
        df.plot(x="vctrl", y="freq")
        plt.grid()
        plt.show()
