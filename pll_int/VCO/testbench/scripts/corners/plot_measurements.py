########################################################
# Mabrains LLC
#
# This script plots the all the intended measurements
# of the vco using the saved data inside the csv file
########################################################

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np


def D(xlist, ylist):
    yprime = np.diff(ylist) / np.diff(xlist)
    xprime = []
    for i in range(len(yprime)):
        xtemp = (xlist[i + 1] + xlist[i]) / 2
        xprime = np.append(xprime, xtemp)
    return xprime, yprime


vctrl_corners = [
    0.0,
    0.1,
    0.2,
    0.3,
    0.4,
    0.5,
    0.6,
    0.7,
    0.8,
    0.9,
    1.0,
    1.1,
    1.2,
    1.3,
    1.4,
    1.5,
    1.6,
    1.7,
    1.8,
]
df = pd.read_csv("measurements/all_measurements.csv")

fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.92)
plt.subplots_adjust(bottom=0.088)

for itr in range(0, len(df["control"]) - len(vctrl_corners) + 1, len(vctrl_corners)):
    control_list = df["control"][itr : itr + len(vctrl_corners) - 1].tolist()
    freq_list = df["freq (GHZ)"][itr : itr + len(vctrl_corners) - 1].tolist()
    oscilation_state = df["Oscillation Status"][
        itr : itr + len(vctrl_corners) - 1
    ].tolist()
    if False not in oscilation_state or 1:
        if df["corner name"][itr] == "tt,27,1.0":
            plt.plot(
                control_list,
                freq_list,
                linewidth=3,
                color="black",
                linestyle="dashed",
                label=df["corner name"][itr],
            )
        else:
            plt.plot(
                control_list, freq_list, linewidth=2.5, label=df["corner name"][itr]
            )


plt.legend(bbox_to_anchor=(1.12, 1.12), loc="upper right", labelspacing=0.015)
plt.xlabel("Control Voltage (V)", fontsize=14)
plt.ylabel("Oscillation Frequency (HZ)", fontsize=14)
plt.title("Oscillation Frequency Vs Control Voltage", fontsize=14)
plt.grid()
plt.tight_layout()
plt.plot(control_list, [2.35] * len(control_list), linewidth=4, color="blue")
plt.plot(control_list, [2.55] * len(control_list), linewidth=4, color="blue")
plt.plot(control_list, [2.4] * len(control_list), linewidth=4, color="black")
plt.plot(control_list, [2.5] * len(control_list), linewidth=4, color="black")
plt.xlim([0, 1.25])
# plt.ylim([2.3 , 2.6])
plt.show()

fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.92)
plt.subplots_adjust(bottom=0.088)

for itr in range(0, len(df["control"]) - len(vctrl_corners) + 1, len(vctrl_corners)):
    control_list = df["control"][itr : itr + len(vctrl_corners) - 1].tolist()
    freq_list = df["freq (GHZ)"][itr : itr + len(vctrl_corners) - 1].tolist()
    control_list_prime, kvco = D(control_list, freq_list)

    # freq_arr = np.array(freq_list)
    # control_arr = np.array(control_list)
    # kvco2 = np.diff(freq_arr,n=1)/np.diff(control_arr,n=1)

    oscilation_state = df["Oscillation Status"][
        itr : itr + len(vctrl_corners) - 1
    ].tolist()
    if False not in oscilation_state:
        if df["corner name"][itr] == "tt,27,1.0":
            plt.plot(
                control_list_prime,
                kvco * 1e3,
                linewidth=3,
                color="black",
                linestyle="dashed",
                label=df["corner name"][itr],
            )
        else:
            plt.plot(
                control_list_prime,
                kvco * 1e3,
                linewidth=2.5,
                label=df["corner name"][itr],
            )


plt.legend(bbox_to_anchor=(1.12, 1.12), loc="upper right", labelspacing=0.015)
plt.xlabel("Control Voltage (V)", fontsize=14)
plt.ylabel("KVCO (MHZ/V)", fontsize=14)
plt.title("Gain  Vs Control Voltage", fontsize=14)
plt.grid()
plt.tight_layout()
plt.xlim([0, 1.25])
# plt.ylim([0 , 800])
plt.show()


fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.92)
plt.subplots_adjust(bottom=0.088)

for itr in range(0, len(df["control"]) - len(vctrl_corners) + 1, len(vctrl_corners)):
    control_list = df["control"][itr : itr + len(vctrl_corners) - 1].tolist()
    swing_list = df["differential swing"][itr : itr + len(vctrl_corners) - 1].tolist()
    # print(swing_list)
    oscilation_state = df["Oscillation Status"][
        itr : itr + len(vctrl_corners) - 1
    ].tolist()
    if False not in oscilation_state:
        if df["corner name"][itr] == "tt,27,1.0":
            plt.plot(
                control_list,
                swing_list,
                linewidth=3,
                color="black",
                linestyle="dashed",
                label=df["corner name"][itr],
            )
        else:
            plt.plot(
                control_list, swing_list, linewidth=2.5, label=df["corner name"][itr]
            )


plt.legend(bbox_to_anchor=(1.12, 1.12), loc="upper right", labelspacing=0.015)
plt.xlabel("Control Voltage (V)", fontsize=14)
plt.ylabel("Differential Swing (V)", fontsize=14)
plt.title("Differntial Swing Vs Control Voltage", fontsize=14)
plt.grid()
plt.tight_layout()
plt.xlim([0, 1.25])
# plt.ylim([2.3 , 2.6])
plt.show()


# POWER PLOTTING

fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.079)
plt.subplots_adjust(top=0.92)
plt.subplots_adjust(bottom=0.088)

for itr in range(0, len(df["control"]) - len(vctrl_corners) + 1, len(vctrl_corners)):
    control_list = df["control"][itr : itr + len(vctrl_corners) - 1].tolist()
    power_list = df["Power (mW)"][itr : itr + len(vctrl_corners) - 1].tolist()
    # print(swing_list)
    oscilation_state = df["Oscillation Status"][
        itr : itr + len(vctrl_corners) - 1
    ].tolist()
    if False not in oscilation_state:
        if df["corner name"][itr] == "tt,27,1.0":
            plt.plot(
                control_list,
                power_list,
                linewidth=3,
                color="black",
                linestyle="dashed",
                label=df["corner name"][itr],
            )
        else:
            plt.plot(
                control_list, power_list, linewidth=2.5, label=df["corner name"][itr]
            )


plt.legend(bbox_to_anchor=(1.12, 1.12), loc="upper right", labelspacing=0.015)
plt.xlabel("Control Voltage (V)", fontsize=14)
plt.ylabel("Power (mW)", fontsize=14)
plt.title("VCO Power Vs Control Voltage", fontsize=14)
plt.grid()
plt.tight_layout()
plt.xlim([0, 1.25])
# plt.ylim([2.3 , 2.6])
plt.show()
