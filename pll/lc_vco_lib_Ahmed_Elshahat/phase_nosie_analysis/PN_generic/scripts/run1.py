import sys
import numpy as np
import pickle

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
        


file_name  = sys.argv[1]   #file name of the netlist subscribes the circuit
v_out = sys.argv[2]        #expresion of the output voltage 
tran_step = sys.argv[3]
tran_stop = sys.argv[4]


# read the circuit file ans save a copy
file_name = 'spice_files/'+file_name
f1 = open('%s' %file_name, mode='r', encoding='utf-8')
file_content = f1.readlines() #it is the whole content of the circuit file
f1.close()


#create arrays of classes to save the data of ccircuit components
MOS_list = []
RES_list = []
subckt_name_list = ['']
instance_line_list = []
PDK_instance_line_list = ['xm' ,'xq' ,'xc' ,'xr']

#Writing the circuit description part only and start updating the devices classes 
f2 = open("spice_files/tb1.spice",'w+',encoding = 'utf-8')
f3 = open("spice_files/tb2.spice",'w+',encoding = 'utf-8')
mos_flag = 0

for line in file_content:
    line_arr = np.array(line.split())

    if '.end' not in line.split():
        f2.write(line)
        f3.write(line)

    if (mos_flag ==1 ):
        mos_flag+=1
        continue
    
    if (mos_flag == 2):
        mos_flag=0
        m = line_arr[-1][2:len(line_arr[-1])]
        MOS_list.append(MOS(name,D,G,S,B,tech,L,W,m,subckt_name,''))
        continue

    if (len(line_arr) > 0):
        if (line_arr[0].lower() == '.subckt'): #check for start of subcircuit

            subckt_name_list = np.append(subckt_name_list,line_arr[1][0:len(line_arr[1])])

        elif (line_arr[0].lower() == '.ends'): #check for end of resistor
            subckt_name_list = np.delete(subckt_name_list,len(subckt_name_list)-1)

        elif (line_arr[0][0:2].lower() == 'xm'): #check for mosfet
            name =line_arr[0][0:len(line_arr[0])]
            D = line_arr[1]
            G = line_arr[2]
            S = line_arr[3]
            B = line_arr[4]
            tech = line_arr[5]
            L = line_arr[6][2:len(line_arr[6])]
            W = line_arr[7][2:len(line_arr[7])]
            mos_flag = 1
            subckt_name = subckt_name_list[len(subckt_name_list)-1]
                
        
        elif (line_arr[0][0:1].lower() == 'r'): #check for resistor
            name =line_arr[0][0:len(line_arr[0])]
            vr1 = line_arr[1]
            vr2 = line_arr[2]
            value = line_arr[3]
            m = line_arr[4]
            subckt_name = subckt_name_list[len(subckt_name_list)-1]
            RES_list.append(RES(name,vr1,vr2,value,m,subckt_name,''))

        elif (line_arr[0][0:1].lower() == 'x' and line_arr[0][0:2].lower() not in PDK_instance_line_list): #check subcircuit instantiation
            instance_line_list.append(line)


# updating instances names to be the name of the subcircuit instantiation 
for i in range (0,len(MOS_list)):
    if (len(MOS_list[i].subckt_name.lower()) > 0): 
        for j in range (0 , len(instance_line_list)):
            if MOS_list[i].subckt_name in instance_line_list[j].split():
                temp_line_arr = np.array(instance_line_list[j].split())
                MOS_list[i].instance_name = temp_line_arr[0][0:len(temp_line_arr)]

temp_lines = '' # to save the gm of the transistors
for i in range (0,len(MOS_list)):
    if (len(MOS_list[i].subckt_name.lower()) >0):    
        temp_lines+=f"save  @m.{MOS_list[i].instance_name.lower()}.{MOS_list[i].name.lower()}.m{MOS_list[i].tech}[gm]\n "
    else:
        temp_lines+=f"save  @m.{MOS_list[i].name.lower()}.m{MOS_list[i].tech}[gm]\n "


# start writing the part of simulatin the circuit
f2.write("\n.save all\n")
f2.write(f".tran 0.01ns 500ns\n")
f2.write(".control\n")
f2.write("op\n")

f2.write(temp_lines)
f2.write('run\n')
f2.write(temp_lines)
temp_lines=f"let vdiff = {v_out}\n"
f2.write(temp_lines)
f2.write("save vdiff\n")
f2.write("plot vdiff\n")
f2.write("linearize vdiff\n")
f2.write("fft vdiff\n")



temp_lines = '' # to export  the gm of the transistors into a csv files
for i in range (0,len(MOS_list)):
    if (len(MOS_list[i].subckt_name.lower()) >0): 
        temp_lines+=f"wrdata csv_files/gm_{MOS_list[i].subckt_name.lower()}_{MOS_list[i].name.lower()}.csv tran1.@m.{MOS_list[i].instance_name.lower()}.{MOS_list[i].name.lower()}.m{MOS_list[i].tech}[gm]\n "
    else:
        temp_lines+=f"wrdata csv_files/gm_{MOS_list[i].name.lower()}.csv tran1.@m.{MOS_list[i].name.lower()}.m{MOS_list[i].tech}[gm]\n "


f2.write(temp_lines)
f2.write("plot mag(sp2.vdiff)\n")
f2.write("wrdata csv_files/vdiff_fft_before_noise.csv mag(sp2.vdiff)\n")
f2.write("quit\n")
f2.write(".endc\n")
f2.write(".end\n")


#save the array of classes which descibe the circuit into a external file to get used later
with open('pkl_files/MOS_data.pkl', 'wb') as outp:
    pickle.dump(MOS_list, outp, pickle.HIGHEST_PROTOCOL)

with open('pkl_files/RES_data.pkl', 'wb') as outp:
    pickle.dump(RES_list, outp, pickle.HIGHEST_PROTOCOL)

#closing the opend files and delete the classes
f2.close()
f3.close()
for i in range (0,len(MOS_list)):
    del MOS_list[0]

for i in range (0,len(RES_list)):
    del RES_list[0]
