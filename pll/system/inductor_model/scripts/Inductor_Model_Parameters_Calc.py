# Simple Code to calculate the parameters of an inductor PI model for Skywater 130nm PDK 
### Enter the value of inductor in "nH" ###
L = 4
### Enter the value of the desired Q  ###
Q = 10
### Enter the center frequency in "GHz" ###
f = 2.45
w = 2*22/7*f
### Capacitors Assumptions (values are in "fF")###
Cf = 50
C1 = Cf/2
C2 = C1

### Calculating Rs and Rp ###
Rs = L*w/(2*Q)
Rp = 2*Q*L*w
### Printing model parameters ###
print("### Model parameters at Q =",Q,"& frequency =",f,"GHz ###")
print("Inductor inductance (L) =",L,"nH")
print("Parallel Capacitor (Cf) =",Cf,"fF")
print("Shunt Capacitors (C1 & C2) =",C2,"fF")
print("Series Resistance (Rs) =",Rs,"Ohm")
print("Parallel Resistance (Rp) =",Rp,"Ohm")
