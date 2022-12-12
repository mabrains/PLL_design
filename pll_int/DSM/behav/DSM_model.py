import math as math
import numpy as np
from numpy.fft import fft, ifft
from matplotlib import pyplot as plt

NumberofSamples = 2 ** 20
Bus_Size = 7  # Bits
Accumulator_Bits = 7  # Bits
Accumulator_Size = 2 ** Accumulator_Bits


Fraction = 0.2256  # From 0 to 1
Fraction_Internal = (2 ** Bus_Size) * Fraction
# Fraction_Internal = 5                      # Choosing channel aka choosing the fraction to divide by

C1 = [0] * NumberofSamples  # Carry out of the 1st accumulator
C2 = [0] * NumberofSamples  # Carry out of the 2nd accumulator
C3 = [0] * NumberofSamples  # Carry out of the 3rd accumulator

U1 = [0] * NumberofSamples  # Output of the 1st accumulator
U2 = [0] * NumberofSamples  # Output of the 2nd accumulator
U3 = [0] * NumberofSamples  # Output of the 3rd accumulator

#### Output to the divider in 3 cases ####
Yout1 = [0] * NumberofSamples  # 1st Order MASH DSM
Yout2 = [0] * NumberofSamples  # 2nd Order MASH DSM
Yout3 = [0] * NumberofSamples  # 3rd Order MASH DSM

#### Core operation of the DSM ####
for index in range(2, NumberofSamples - 1):
    U1[index] = Fraction_Internal + U1[index - 1]
    U2[index] = U1[index - 1] + U2[index - 1]
    U3[index] = U2[index - 1] + U3[index - 1]

    if U1[index] > Accumulator_Size:
        C1[index] = 1
        U1[index] = U1[index] - Accumulator_Size

    if U2[index] > Accumulator_Size:
        C2[index] = 1
        U2[index] = U2[index] - Accumulator_Size

    if U3[index] > Accumulator_Size:
        C3[index] = 1
        U3[index] = U3[index] - Accumulator_Size

    Yout1[index] = C1[index]
    Yout2[index] = C1[index] + C2[index] - C2[index - 1]
    Yout3[index] = (
        C1[index]
        + C2[index]
        + C3[index]
        - C2[index - 1]
        - 2 * C3[index - 1]
        + C3[index - 2]
    )


#### Calculating the mean of the output of the DSM ####
Output_Mean = np.mean(Yout3)
print("Output Fraction = ", Output_Mean)


#### Calculating the Sequence length of the output of each order ####
Yout1_len = len(Yout1[1000:])
Yout2_len = len(Yout2[1000:])
Yout3_len = len(Yout3[1000:])

Yout1_mod = Yout1[1000:]
Yout2_mod = Yout2[1000:]
Yout3_mod = Yout3[1000:]

Period1 = [
    i
    for i in range(2, Yout1_len // 2 + 1)
    if Yout1_mod[:i] * (Yout1_len // i) == Yout1_mod[: Yout1_len - Yout1_len % i]
]
Period2 = [
    i
    for i in range(2, Yout2_len // 2 + 1)
    if Yout2_mod[:i] * (Yout2_len // i) == Yout2_mod[: Yout2_len - Yout2_len % i]
]
Period3 = [
    i
    for i in range(2, Yout3_len // 2 + 1)
    if Yout3_mod[:i] * (Yout3_len // i) == Yout3_mod[: Yout3_len - Yout3_len % i]
]

print("Yout1 Period = ", Period1[0])
print("Yout2 Period = ", Period2[0])
print("Yout3 Period = ", Period3[0])


##### Getting the PSD of the output of each order ####
Fs = NumberofSamples
Fmin = int(-Fs / 2)
Fmax = int(Fs / 2)
Freq = list(range(Fmin, Fmax, 1))
Freq[:] = [x / abs(Fmin) for x in Freq]


SignalFreq1 = abs(fft(Yout1))
SignalFreq1_dB = 20 * np.log10(SignalFreq1)

SignalFreq2 = abs(fft(Yout2))
SignalFreq2_dB = 20 * np.log10(SignalFreq2)

SignalFreq3 = abs(fft(Yout3))
SignalFreq3_dB = 20 * np.log10(SignalFreq3)


plt.semilogx(
    Freq, np.fft.fftshift(SignalFreq1_dB) - max(SignalFreq1_dB), label="1st Order"
)
plt.semilogx(
    Freq, np.fft.fftshift(SignalFreq2_dB) - max(SignalFreq2_dB), label="2nd Order"
)
plt.semilogx(
    Freq, np.fft.fftshift(SignalFreq3_dB) - max(SignalFreq3_dB), label="3rd Order"
)

plt.title("MASH DSM Noise", fontsize=24)
plt.xlabel("Normalized Frequency (Freq/(Fs/2)) (Hz)", fontsize=14)
plt.ylabel("PSD (dB)", fontsize=14)
plt.legend()
plt.grid()
plt.show()
