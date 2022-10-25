import math

import pandas as pd 
import numpy as np

def get_gm(file_name):
	gm_file = pd.read_csv (file_name,index_col=False,usecols=[1],header=None, delimiter=r"\s+")
	gm_array = gm_file.to_numpy()
	gm_array = gm_array.ravel()
	gm_array = np.array(gm_array)
	return gm_array

# gm array consists of all transistors gm
gm1 = get_gm(f"gen_gm/gm1_nand.csv").mean()
gm2 = get_gm(f"gen_gm/gm2_nand.csv").mean()
gm3 = get_gm(f"gen_gm/gm3_nand.csv").mean()
gm4 = get_gm(f"gen_gm/gm4_nand.csv").mean()
gm5 = get_gm(f"gen_gm/gm1_3nand.csv").mean()
gm6 = get_gm(f"gen_gm/gm2_3nand.csv").mean()
gm7 = get_gm(f"gen_gm/gm3_3nand.csv").mean()
gm8 = get_gm(f"gen_gm/gm4_3nand.csv").mean()
gm9 = get_gm(f"gen_gm/gm5_3nand.csv").mean()
gm10 = get_gm(f"gen_gm/gm6_3nand.csv").mean()
gm11 = get_gm(f"gen_gm/gm1_inv.csv").mean()
gm12 = get_gm(f"gen_gm/gm2_inv.csv").mean()
gm13 = get_gm(f"gen_gm/gm1_TG.csv").mean()
gm14 = get_gm(f"gen_gm/gm2_TG.csv").mean()

gm = [gm1 ,gm2 ,gm3 ,gm4 ,gm5 ,gm6, gm7 ,gm8 ,gm9, gm10 ,gm11 ,gm12 ,gm13 ,gm14]
# constants
eps_o = 8.854187817*(10**-12)
eps_r = 12
t_ox = 0.07*(10**-6)
cox = eps_o*eps_r/t_ox
k_flkr_mos = 10**-25
k = 1.38*(10**-23)
temp = 300 # kevin
noise_step = "0.03n"
flkr_exp = "1"

# Exceptions
W = [4e-6 ,4e-6 ,4e-6, 4e-6, 4e-6 ,4e-6 ,4e-6 ,6e-6 ,6e-6 ,6e-6 ,4e-6 ,2e-6 ,4e-6, 2e-6]
L = [0.15e-6, 0.15e-6, 0.15e-6, 0.15e-6 ,0.15e-6 ,0.15e-6 ,0.15e-6, 0.15e-6 ,0.15e-6 ,0.15e-6 ,0.15e-6 ,0.15e-6 ,0.15e-6 ,0.15e-6]

fc_flkr = [0,0,0,0,0,0,0,0,0,0,0,0,0,0]
v_flkr_mos = [0,0,0,0,0,0,0,0,0,0,0,0,0,0]
v_whit_mos = [0,0,0,0,0,0,0,0,0,0,0,0,0,0]

# calculations
for i in range (0,len(gm)):
	fc_flkr[i] = (3*gm[i]*k_flkr_mos)/(8*cox*k*temp*W[i]*L[i])
	v_flkr_mos[i] = math.sqrt((k_flkr_mos)/(fc_flkr[i]*cox*W[i]*L[i]))
	v_whit_mos[i] = math.sqrt((8*k*temp)/(3*gm[i]))


# nand gate
line = f"\n V14 B net13 DC 0 trnoise ({v_whit_mos[0] } {noise_step} {flkr_exp} {v_flkr_mos[0] })\n "
line+= f"V13 A net12 DC 0 trnoise ({v_whit_mos[1] } {noise_step} {flkr_exp} {v_flkr_mos[1] })\n "
line+= f"V15 B net14 DC 0 trnoise ({v_whit_mos[2] } {noise_step} {flkr_exp} {v_flkr_mos[2] })\n "
line+= f"V12 A net11 DC 0 trnoise ({v_whit_mos[3] } {noise_step} {flkr_exp} {v_flkr_mos[3] })\n "
# 3 nand gate
line+= f"V6 A net05 DC 0 trnoise ({v_whit_mos[4] } {noise_step} {flkr_exp} {v_flkr_mos[4] })\n "
line+= f"V8 B net07 DC 0 trnoise ({v_whit_mos[5] } {noise_step} {flkr_exp} {v_flkr_mos[5] })\n "
line+= f"V10 C net09 DC 0 trnoise ({v_whit_mos[6] } {noise_step} {flkr_exp} {v_flkr_mos[6] })\n "
line+= f"V7 A net06 DC 0 trnoise ({v_whit_mos[7] } {noise_step} {flkr_exp} {v_flkr_mos[7] })\n "
line+= f"V11 C net10 DC 0 trnoise ({v_whit_mos[8] } {noise_step} {flkr_exp} {v_flkr_mos[8] })\n "
line+= f"V9 B net08 DC 0 trnoise ({v_whit_mos[9] } {noise_step} {flkr_exp} {v_flkr_mos[9] })\n "
# inv 
line+= f"V4 in net03 DC 0 trnoise ({v_whit_mos[10] } {noise_step} {flkr_exp} {v_flkr_mos[10] })\n "
line+= f"V5 in net04 DC 0 trnoise ({v_whit_mos[11] } {noise_step} {flkr_exp} {v_flkr_mos[11] })\n "
#TG
line+= f"V2 clkb net01 DC 0 trnoise ({v_whit_mos[12] } {noise_step} {flkr_exp} {v_flkr_mos[12] })\n "
line+= f"V3 clk net02 DC 0 trnoise ({v_whit_mos[13] } {noise_step} {flkr_exp} {v_flkr_mos[13] })\n "

with open(f'spice_files/divider_noiseplot.spice', 'r') as original: data = original.read()
with open(f'spice_files/divider_noiseplot.spice', 'w') as modified: modified.write(line + data)




