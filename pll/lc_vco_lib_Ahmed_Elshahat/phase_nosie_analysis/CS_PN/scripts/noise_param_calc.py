import math

import pandas as pd 
import numpy as np
import matplotlib.pyplot as plt

gm_file = pd.read_csv ("../csv_files/gm_no_noise.csv",index_col=False,usecols=[1],header=None, delimiter=r"\s+")
gm_array = gm_file.to_numpy()
gm_array = gm_array.ravel()
gm_array = np.array(gm_array)

# constants
eps_o = 8.854187817*(10**-12)
eps_r = 12
t_ox = 0.07*(10**-6)
k_flkr_mos = 10**-25
k = 1.38*(10**-23)
temp = 300 # kevin
gm = gm_array.max()
W = 20*(10**-6)
L = 0.15*(10**-6)
R =1000 # resistor
C =1*(10**-12) #capacitor
noise_step = "0.03n"
flkr_exp = "1"
# calculations
cox = eps_o*eps_r/t_ox
fc_flkr = (3*gm*k_flkr_mos)/(8*cox*k*temp*W*L)


v_flkr_mos = math.sqrt((k_flkr_mos)/(fc_flkr*cox*W*L))
v_whit_mos = math.sqrt((8*k*temp)/(3*gm))
v_whit_res = math.sqrt(4*k*temp*R)
v_whit_cap = math.sqrt(k*temp/C)

print("MOS Flicker Noise RMS Voltage    (nV)=",v_flkr_mos*(10**9))
print("MOS White Noise RMS Voltage      (nV)=",v_whit_mos*(10**9))
print("Resistor White Noise RMS Voltage (nV)=",v_whit_res*(10**9))
print("Capacitor  White RMS Voltage     (nV)=",v_whit_cap*(10**9))



line = f"\n VmosNoise net1 vin DC 0 trnoise ({v_whit_mos } {noise_step} {flkr_exp} {v_flkr_mos })\n "
line+= f"VresNoise vout net2 DC 0 trnoise ({v_whit_res } {noise_step} 0 0)\n"

with open('transient_with_noise.spice', 'r') as original: data = original.read()
with open('transient_with_noise.spice', 'w') as modified: modified.write(line + data)
