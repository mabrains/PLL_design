import numpy as np

NumberofSamples = 2**16
Bus_Size = 7                            # Bits
Accumulator_Bits = 7                    # Bits
Accumulator_Size = 2**Accumulator_Bits  


# Fraction = 0.42                          # From 0 to 1
# Fraction_Internal = (2**Bus_Size)*Fraction
Fraction_Internal = 18                     # Choosing channel aka choosing the fraction to divide by

C1 = [0] * NumberofSamples                 # Carry out of the 1st accumulator
C2 = [0] * NumberofSamples                 # Carry out of the 2nd accumulator
C3 = [0] * NumberofSamples                 # Carry out of the 3rd accumulator

U1 = [0] * NumberofSamples                 # Output of the 1st accumulator
U2 = [0] * NumberofSamples                 # Output of the 2nd accumulator 
U3 = [0] * NumberofSamples                 # Output of the 3rd accumulator

Yout = [0] * NumberofSamples               # Output to the divider

for index in range(2,NumberofSamples-1):
    U1[index] = Fraction_Internal + U1[index-1]
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


    Yout[index] = C1[index] + C2[index] + C3[index] - C2[index-1] - 2*C3[index-1] + C3[index-2]


Output_Mean = np.mean(Yout)
print('Output Fraction = ', Output_Mean)