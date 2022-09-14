import math

import pandas as pd 
import numpy as np

def get_gm(file_name):
	gm_file = pd.read_csv (file_name,index_col=False,usecols=[1],header=None, delimiter=r"\s+")
	gm_array = gm_file.to_numpy()
	gm_array = gm_array.ravel()
	gm_array = np.array(gm_array)
	return gm_array









gm1 = get_gm("gm1_no_noise.csv").max()
gm2 = get_gm("gm2_no_noise.csv").max()
gm4 = get_gm("gm4_no_noise.csv").max()
gm5 = get_gm("gm5_no_noise.csv").max()
gm7 = get_gm("gm7_no_noise.csv").max()
gm8 = get_gm("gm8_no_noise.csv").max()
gm9 = get_gm("gm9_no_noise.csv").max()
gm10 = get_gm("gm10_no_noise.csv").max()
gm11 = get_gm("gm11_no_noise.csv").max()
gm13 = get_gm("gm13_no_noise.csv").max()
gm14 = get_gm("gm14_no_noise.csv").max()
gm15 = get_gm("gm15_no_noise.csv").max()
gm16 = get_gm("gm16_no_noise.csv").max()
gm17 = get_gm("gm17_no_noise.csv").max()
gm18 = get_gm("gm18_no_noise.csv").max()
gm19 = get_gm("gm19_no_noise.csv").max()
gm20 = get_gm("gm20_no_noise.csv").max()
gm21 = get_gm("gm21_no_noise.csv").max()
gm22 = get_gm("gm22_no_noise.csv").max()
gm23 = get_gm("gm23_no_noise.csv").max()
gm24 = get_gm("gm24_no_noise.csv").max()



gm = [gm1, gm2, gm4, gm5, gm7, gm8, gm9, gm10, gm11, gm13, gm14, gm15, gm16, gm17, gm18, gm19, gm20, gm21, gm22, gm23, gm24]
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

fc_flkr = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
v_flkr_mos = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
v_whit_mos = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
v_whit_res = [0,0,0,0,0]

# calculations
for i in range (0,len(gm)):
	fc_flkr[i] = (3*gm[i]*k_flkr_mos)/(8*cox*k*temp*W[i]*L[i])
	v_flkr_mos[i] = math.sqrt((k_flkr_mos)/(fc_flkr[i]*cox*W[i]*L[i]))
	v_whit_mos[i] = math.sqrt((8*k*temp)/(3*gm[i]))


for i in range (0,len(R)):
	v_whit_res[i] = math.sqrt(4*k*temp*R[i])

#v_whit_cap = math.sqrt(k*temp/C)


#print("MOS Flicker Noise RMS Voltage    (nV)=",v_flkr_mos)
#print("MOS White Noise RMS Voltage      (nV)=",v_whit_mos)
#print("Resistor White Noise RMS Voltage (nV)=",v_whit_res)
#print("Capacitor  White RMS Voltage     (nV)=",v_whit_cap*(10**9))



line = f"\n V1 net19 vp DC 0 trnoise ({v_whit_mos[0] } {noise_step} {flkr_exp} {v_flkr_mos[0] })\n "
line+= f"V2 net20 vn DC 0 trnoise ({v_whit_mos[1] } {noise_step} {flkr_exp} {v_flkr_mos[1] })\n "
line+= f"V4 net5 net1 DC 0 trnoise ({v_whit_mos[2] } {noise_step} {flkr_exp} {v_flkr_mos[2] })\n "
line+= f"V5 net2 net1 DC 0 trnoise ({v_whit_mos[3] } {noise_step} {flkr_exp} {v_flkr_mos[3] })\n "
line+= f"V7 net21 vp DC 0 trnoise ({v_whit_mos[4] } {noise_step} {flkr_exp} {v_flkr_mos[4] })\n "
line+= f"V8 net22 net3 DC 0 trnoise ({v_whit_mos[5] } {noise_step} {flkr_exp} {v_flkr_mos[5] })\n "
line+= f"V9 net23 net3 DC 0 trnoise ({v_whit_mos[6] } {noise_step} {flkr_exp} {v_flkr_mos[6] })\n "
line+= f"V10 net18 net11 DC 0 trnoise ({v_whit_mos[7] } {noise_step} {flkr_exp} {v_flkr_mos[7] })\n "
line+= f"V11 net24 vn DC 0 trnoise ({v_whit_mos[8] } {noise_step} {flkr_exp} {v_flkr_mos[8] })\n "
line+= f"V13 net25 net11 DC 0 trnoise ({v_whit_mos[9] } {noise_step} {flkr_exp} {v_flkr_mos[9] })\n "
line+= f"V14 net26 net11 DC 0 trnoise ({v_whit_mos[10] } {noise_step} {flkr_exp} {v_flkr_mos[10] })\n "
line+= f"V15 net27 net11 DC 0 trnoise ({v_whit_mos[11] } {noise_step} {flkr_exp} {v_flkr_mos[11] })\n "
line+= f"V16 net28 net11 DC 0 trnoise ({v_whit_mos[12] } {noise_step} {flkr_exp} {v_flkr_mos[12] })\n "
line+= f"V17 net29 net8 DC 0 trnoise ({v_whit_mos[13] } {noise_step} {flkr_exp} {v_flkr_mos[13] })\n "
line+= f"V18 net30 VBE DC 0 trnoise ({v_whit_mos[14] } {noise_step} {flkr_exp} {v_flkr_mos[14] })\n "
line+= f"V19 net31 net12 DC 0 trnoise ({v_whit_mos[15] } {noise_step} {flkr_exp} {v_flkr_mos[15] })\n "
line+= f"V20 net32 net9 DC 0 trnoise ({v_whit_mos[16] } {noise_step} {flkr_exp} {v_flkr_mos[16] })\n "
line+= f"V21 net33 net9 DC 0 trnoise ({v_whit_mos[17] } {noise_step} {flkr_exp} {v_flkr_mos[17] })\n "
line+= f"V22 net14 net11 DC 0 trnoise ({v_whit_mos[18] } {noise_step} {flkr_exp} {v_flkr_mos[18] })\n "
line+= f"V23 net15 net11 DC 0 trnoise ({v_whit_mos[19] } {noise_step} {flkr_exp} {v_flkr_mos[19] })\n "
line+= f"V24 net34 net13 DC 0 trnoise ({v_whit_mos[20] } {noise_step} {flkr_exp} {v_flkr_mos[20] })\n "

line+= f"VR1 net35 vp DC 0 trnoise ({v_whit_res[0] } {noise_step} 0 0)\n"
line+= f"VR2 net36 net37 DC 0 trnoise ({v_whit_res[1] } {noise_step} 0 0)\n"
line+= f"VR3 net16 GND DC 0 trnoise ({v_whit_res[2] } {noise_step} 0 0)\n"
line+= f"VR4 net38 net7 DC 0 trnoise ({v_whit_res[3] } {noise_step} 0 0)\n"
line+= f"VR5 net17 GND DC 0 trnoise ({v_whit_res[4] } {noise_step} 0 0)\n"

with open('VCO_Full_Noise.spice', 'r') as original: data = original.read()
with open('VCO_Full_noise.spice', 'w') as modified: modified.write(line + data)









