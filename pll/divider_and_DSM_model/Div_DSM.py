import numpy as np
import pandas as pd

NumberofSamples = 2**16
Bus_Size = 24                            # Bits
Accumulator_Bits = 24                    # Bits
Accumulator_Size = 2**Accumulator_Bits  

input = [0] * Accumulator_Size
Div_avg = [0] * Accumulator_Size
Divider = [256,255,254,253,252,251,250,249,248,247,246,245,244,243,242,241,240,239,238,237,236,235,234,233,232,231,230,229,228,227,226,225]

#Fraction = 0.2                              # From 0 to 1
#Fraction_Internal = (2**Bus_Size)*Fraction

for Fraction_Internal in range (1,200):                      # Choosing channel aka choosing the fraction to divide by
	input[Fraction_Internal] = Fraction_Internal
	C1 = [0] * NumberofSamples                 # Carry out of the 1st accumulator
	C2 = [0] * NumberofSamples                 # Carry out of the 2nd accumulator
	C3 = [0] * NumberofSamples                 # Carry out of the 3rd accumulator
	U1 = [0] * NumberofSamples                 # Output of the 1st accumulator
	U2 = [0] * NumberofSamples                 # Output of the 2nd accumulator 
	U3 = [0] * NumberofSamples                 # Output of the 3rd accumulator
	Yout3 = [0] * NumberofSamples              # 3rd Order MASH DSM
	#### Core operation of the DSM ####
	for index in range(2,NumberofSamples-1):
		U1[index] = input[Fraction_Internal] + U1[index-1]
		U2[index] = U1[index-1] + U2[index-1]
		U3[index] = U2[index-1] + U3[index-1]
		if U1[index] > Accumulator_Size:
			C1[index] = 1
			U1[index] = U1[index] - Accumulator_Size
		if U2[index] > Accumulator_Size:
			C2[index] = 1
			U2[index] = U2[index] - Accumulator_Size
		if U3[index] > Accumulator_Size:
			C3[index] = 1
			U3[index] = U3[index] - Accumulator_Size

		Yout3[index] = C1[index] + C2[index] + C3[index] - C2[index-1] - 2*C3[index-1] + C3[index-2]
		#print (Yout3[index])

	#### Calculating the mean of the output of the DSM ####
	Output_Mean = np.mean(Yout3)
	#print('Output Fraction = ', Output_Mean)
	f = open('DSM_Outputs.txt','w')
	f.write(str(Yout3))
	f.close
	f = open('DSM_Outputs.txt','r')
	for line in f.readlines():
		out1 = line.replace('[','')
		out2 = out1.replace(']','')
		out = out2.split(", ")
	f.close()
	DSM_out = [int(i) for i in out]
	for i in range(0,len(DSM_out)):
		if DSM_out[i] < 0:
			DSM_out[i] = 32 + DSM_out[i]
		if DSM_out[i] == -3:
			DSM_out[i] = 29
		if DSM_out[i] == -2:
			DSM_out[i] = 30
		if DSM_out[i] == -1:
			DSM_out[i] = 31
		
	Div_out = [0] * len(DSM_out)
	for i in range(0,len(DSM_out)):
		Div_out[i] = Divider[DSM_out[i]]
	Div_avg[Fraction_Internal] = np.mean(Div_out)
	print('Input = ',input[Fraction_Internal],' , Div = ',Div_avg[Fraction_Internal])

'''
dict = {}
dict['Input'] = input
print(len(input))
print(len(Div_avg))
dict['Division Ratio'] = Div_avg
df = pd.DataFrame(dict)
df.to_csv("Measurements.csv",index=False)
'''