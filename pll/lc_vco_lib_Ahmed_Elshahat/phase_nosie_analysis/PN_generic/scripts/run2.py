import math
import sys
import numpy as np
import pickle
import pandas as pd 

#defing the classes of the devices used in the circuit bellow
class MOS:
    def __init__(self,name,D,G,S,B,tech,L,W,m,subckt_name,instance_name):
        self.name = name
        self.D = D
        self.G = G
        self.S = S
        self.B = B
        self.tech = tech
        self.L = L
        self.W = W
        self.m = m
        self.subckt_name = subckt_name
        self.instance_name = instance_name
        
class RES:
    def __init__(self,name,vr1,vr2,value,m,subckt_name,instance_name):
        self.name = name
        self.vr1 = vr1
        self.vr2 = vr2
        self.value = value
        self.m =m
        self.subckt_name = subckt_name
        self.instance_name = instance_name
        

def get_arr(file_name):
	file = pd.read_csv (file_name,index_col=False,usecols=[1],header=None, delimiter=r"\s+")
	array = file.to_numpy()
	array = array.ravel()
	array = np.array(array)
	return array

# constants
v_out = sys.argv[1]        #expresion of the output voltage 
tran_step = sys.argv[2]
tran_stop = sys.argv[3]
eps_o = 8.854187817*(10**-12)
eps_r = 12
t_ox = 0.07*(10**-6)
cox = eps_o*eps_r/t_ox
k_flkr_mos = 10**-25
k = 1.38*(10**-23)
temp = 300 # kevin
noise_step = "0.03n"
flkr_exp = "1"


#importing the arrays of classes which carry the info on the circuit
with open('pkl_files/MOS_data.pkl', 'rb') as inp:
    MOS_list = pickle.load(inp)
inp.close()

with open('pkl_files/RES_data.pkl', 'rb') as inp:
    RES_list = pickle.load(inp)
inp.close()


#open the tb2 and calculate the noise values and then create the noise sources
temp_lines = '\n' # to create the noise sources

#looping on the mosfets
for i in range (0,len(MOS_list)):
    # get the name of the gm csv file and te INoise source
    if (len(MOS_list[i].subckt_name.lower()) > 0): 
        gm_file_name=f"csv_files/gm_{MOS_list[i].subckt_name.lower()}_{MOS_list[i].name.lower()}.csv"
        INoise_name =f"INoise_{MOS_list[i].subckt_name.lower()}_{MOS_list[i].name.lower()}"
    else:
        gm_file_name=f"csv_files/gm_{MOS_list[i].name.lower()}.csv"
        INoise_name =f"INoise_{MOS_list[i].name.lower()}"

    #calculate the noise values 
    gm_value   = get_arr(gm_file_name).max()
    if (gm_value < 10*(10**-9)):
        i_flkr = 0
        i_whit_mos = 0
        off_comment = '$Notice that this transistor does not contribut noise'
    else :    
        off_comment = ''
        L = float(MOS_list[i].L)
        W = float(MOS_list[i].W)*float(MOS_list[i].m)
        fc_flkr    = (3*gm_value*k_flkr_mos)/(8*cox*k*temp*W*L)
        i_flkr     = math.sqrt((k_flkr_mos*gm_value**2)/(fc_flkr*cox*W*L))
        i_whit_mos = math.sqrt(8*k*temp*gm_value/3)

    #put the noise source in parrallel to the mos connected from drain to source of the mosfet
    temp_lines+= f"{INoise_name} {MOS_list[i].D} {MOS_list[i].S} DC 0 trnoise ({i_whit_mos } {noise_step} {flkr_exp} {i_flkr }) {off_comment}\n "
    
#looping on the resistors
for i in range (0,len(RES_list)):
    # get the name of the INoise source
    if (len(RES_list[i].subckt_name.lower()) > 0): 
        INoise_name =f"INoise_{RES_list[i].subckt_name.lower()}_{RES_list[i].name.lower()}"
    else:
        INoise_name =f"INoise_{RES_list[i].name.lower()}"

    R = float(RES_list[i].value)
    i_whit_res = math.sqrt(4*k*temp/R)
    temp_lines+= f"{INoise_name} {RES_list[i].vr1} {RES_list[i].vr2} DC 0 trnoise ({i_whit_res} {noise_step} 0 0)\n "



f1 = open("spice_files/tb2.spice",'a',encoding = 'utf-8')
f1.write(temp_lines)



# start writing the part of simulatin the circuit
f1.write("\n.save all\n")
f1.write(f".tran {tran_step}s {tran_stop}s\n")
f1.write(".control\n")
f1.write("op\n")

f1.write('run\n')
temp_lines=f"let vdiff = {v_out}\n"
f1.write(temp_lines)
f1.write("save vdiff\n")
f1.write("plot vdiff\n")
f1.write("linearize vdiff\n")
f1.write("fft vdiff\n")


f1.write("plot mag(sp2.vdiff)\n")
f1.write("wrdata csv_files/vdiff_fft_after_noise.csv mag(sp2.vdiff)\n")
f1.write("quit\n")
f1.write(".endc\n")
f1.write(".end\n")

f1.close()