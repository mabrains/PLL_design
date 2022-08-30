import math

import pandas as pd 
import numpy as np

def get_gm(file_name):
	gm_file = pd.read_csv (file_name,index_col=False,usecols=[1],header=None, delimiter=r"\s+")
	gm_array = gm_file.to_numpy()
	gm_array = gm_array.ravel()
	gm_array = np.array(gm_array)
	return gm_array

gm1 = get_gm("../csv_files/gm1_no_noise.csv").max()
gm2 = get_gm("../csv_files/gm2_no_noise.csv").max()
gm3 = get_gm("../csv_files/gm3_no_noise.csv").max()
gm4 = get_gm("../csv_files/gm4_no_noise.csv").max()
gm5 = get_gm("../csv_files/gm5_no_noise.csv").max()
gm7 = get_gm("../csv_files/gm7_no_noise.csv").max()
gm10 = get_gm("../csv_files/gm10_no_noise.csv").max()
gm11 = get_gm("../csv_files/gm11_no_noise.csv").max()

gm = [gm1, gm2, gm4, gm5, gm7, gm11]
# constants
eps_o = 8.854187817*(10**-12)
eps_r = 12
t_ox = 0.07*(10**-6)
cox = eps_o*eps_r/t_ox
k_flkr_mos = 10**-25
k = 1.38*(10**-23)
temp = 300 # kevin
C =1*(10**-12) #capacitor
noise_step = "0.03n"
flkr_exp = "1"

# Exceptions
W = [200e-6, 100e-6, 150e-6, 150e-6, 100e-6, 200e-6]
L = [0.15e-6, 0.15e-6,  0.15e-6, 0.15e-6, 0.15e-6, 0.15e-6]
R =[1182, 3]

fc_flkr = [0,0,0,0,0,0,0]
v_flkr_mos = [0,0,0,0,0,0]
v_whit_mos = [0,0,0,0,0,0]
v_whit_res = [0,0]

# calculations
for i in range (0,len(gm)):
	fc_flkr[i] = (3*gm[i]*k_flkr_mos)/(8*cox*k*temp*W[i]*L[i])
	v_flkr_mos[i] = math.sqrt((k_flkr_mos)/(fc_flkr[i]*cox*W[i]*L[i]))
	v_whit_mos[i] = math.sqrt((8*k*temp)/(3*gm[i]))


for i in range (0,len(R)):
	v_whit_res[i] = math.sqrt(4*k*temp*R[i])

#v_whit_cap = math.sqrt(k*temp/C)


print("MOS Flicker Noise RMS Voltage    (nV)=",v_flkr_mos)
print("MOS White Noise RMS Voltage      (nV)=",v_whit_mos)
print("Resistor White Noise RMS Voltage (nV)=",v_whit_res)
#print("Capacitor  White RMS Voltage     (nV)=",v_whit_cap*(10**9))



line = f"\n V1 net8 vp DC 0 trnoise ({v_whit_mos[0] } {noise_step} {flkr_exp} {v_flkr_mos[0] })\n "
line+= f"V2 net7 vn DC 0 trnoise ({v_whit_mos[1] } {noise_step} {flkr_exp} {v_flkr_mos[1] })\n "
line+= f"V4 net3 net2 DC 0 trnoise ({v_whit_mos[2] } {noise_step} {flkr_exp} {v_flkr_mos[2] })\n "
line+= f"V5 net5 net2 DC 0 trnoise ({v_whit_mos[3] } {noise_step} {flkr_exp} {v_flkr_mos[3] })\n "
line+= f"V7 net6 vp DC 0 trnoise ({v_whit_mos[4] } {noise_step} {flkr_exp} {v_flkr_mos[4] })\n "
line+= f"V11 net9 vn DC 0 trnoise ({v_whit_mos[5] } {noise_step} {flkr_exp} {v_flkr_mos[5] })\n "
line+= f"V3 net11 vp DC 0 trnoise (0 0 0 0)\n "
line+= f"V10 net10 vn DC 0 trnoise (0 0 0 0)\n "
line+= f"VR1 net12 vp DC 0 trnoise ({v_whit_res[0] } {noise_step} 0 0)\n"
line+= f"VR2 net13 net14 DC 0 trnoise ({v_whit_res[1] } {noise_step} 0 0)\n"

with open('../spice_files/VCO_noise.spice', 'r') as original: data = original.read()
with open('../spice_files/VCO_noise.spice', 'w') as modified: modified.write(line + data)









