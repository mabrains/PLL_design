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
gm3 = get_gm("gm3_no_noise.csv").max()
gm4 = get_gm("gm4_no_noise.csv").max()
gm5 = get_gm("gm5_no_noise.csv").max()
gm6 = get_gm("gm6_no_noise.csv").max()
gm10 = get_gm("gm10_no_noise.csv").max()
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



gm = [gm1, gm2, gm3, gm4, gm5, gm6, gm10, gm13, gm14, gm15, gm16, gm17, gm18, gm19, gm20, gm21, gm22, gm23, gm24]
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
W = [3e-6, 150e-6, 130.5e-6 , 130.5e-6, 903.51e-6, 903.51e-6  ,200e-6  ,20e-6  , 20e-6  , 4e-6   , 44e-6  , 90e-6 , 90e-6  , 4.2e-6 , 1.68e-6 , 1.68e-6 , 40e-6 , 0.42e-6 , 40e-6]
L = [1e-6, 1e-6  , 0.15e-6  , 0.15e-6 , 0.35e-6  , 0.35e-6    ,0.5e-6  ,0.5e-6 , 0.5e-6 , 0.5e-6 , 0.5e-6 , 0.5e-6, 0.5e-6 , 0.5e-6 , 0.5e-6 , 0.5e-6 , 1e-6 , 20e-6 , 1e-6]
R =[400, 1.6]

fc_flkr = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
v_flkr_mos = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
v_whit_mos = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
v_whit_res = [0,0]

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



line = f"\n V1 net27 net10 DC 0 trnoise ({v_whit_mos[0] } {noise_step} {flkr_exp} {v_flkr_mos[0] })\n "
line+= f"V2 net28 net10 DC 0 trnoise ({v_whit_mos[1] } {noise_step} {flkr_exp} {v_flkr_mos[1] })\n "
line+= f"V3 net29 vp    DC 0 trnoise ({v_whit_mos[2] } {noise_step} {flkr_exp} {v_flkr_mos[2] })\n "
line+= f"V4 net30 vn    DC 0 trnoise ({v_whit_mos[3] } {noise_step} {flkr_exp} {v_flkr_mos[3] })\n "
line+= f"V5 net31 vp    DC 0 trnoise ({v_whit_mos[4] } {noise_step} {flkr_exp} {v_flkr_mos[4] })\n "
line+= f"V6 net32 vn    DC 0 trnoise ({v_whit_mos[5] } {noise_step} {flkr_exp} {v_flkr_mos[5] })\n "
line+= f"V10 net13 net5 DC 0 trnoise ({v_whit_mos[6] } {noise_step} {flkr_exp} {v_flkr_mos[6] })\n "
line+= f"V13 net14 net5 DC 0 trnoise ({v_whit_mos[7] } {noise_step} {flkr_exp} {v_flkr_mos[7] })\n "
line+= f"V14 net15 net5 DC 0 trnoise ({v_whit_mos[8] } {noise_step} {flkr_exp} {v_flkr_mos[8] })\n "
line+= f"V15 net16 net5 DC 0 trnoise ({v_whit_mos[9] } {noise_step} {flkr_exp} {v_flkr_mos[9] })\n "
line+= f"V16 net17 net5 DC 0 trnoise ({v_whit_mos[10] } {noise_step} {flkr_exp} {v_flkr_mos[10] })\n "
line+= f"V17 net18 net2 DC 0 trnoise ({v_whit_mos[11] } {noise_step} {flkr_exp} {v_flkr_mos[11] })\n "
line+= f"V18 net19 VBE  DC 0 trnoise ({v_whit_mos[12] } {noise_step} {flkr_exp} {v_flkr_mos[12] })\n "
line+= f"V19 net20 net6 DC 0 trnoise ({v_whit_mos[13] } {noise_step} {flkr_exp} {v_flkr_mos[13] })\n "
line+= f"V20 net21 net3 DC 0 trnoise ({v_whit_mos[14] } {noise_step} {flkr_exp} {v_flkr_mos[14] })\n "
line+= f"V21 net22 net3 DC 0 trnoise ({v_whit_mos[15] } {noise_step} {flkr_exp} {v_flkr_mos[15] })\n "
line+= f"V22 net8 net5  DC 0 trnoise ({v_whit_mos[16] } {noise_step} {flkr_exp} {v_flkr_mos[16] })\n "
line+= f"V23 net9 net5  DC 0 trnoise ({v_whit_mos[17] } {noise_step} {flkr_exp} {v_flkr_mos[17] })\n "
line+= f"V24 net23 net7 DC 0 trnoise (0 0 0 0)\n "
   

line+= f"VR1 net34 vp DC 0 trnoise ({v_whit_res[0] } {noise_step} 0 0)\n"
line+= f"VR2 net33 vp DC 0 trnoise ({v_whit_res[1] } {noise_step} 0 0)\n"


with open('VCO_Full_Phase_Noise.spice', 'r') as original: data = original.read()
with open('VCO_Full_Phase_Noise.spice', 'w') as modified: modified.write(line + data)








