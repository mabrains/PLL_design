import math as m
import matplotlib.pyplot as plt
from control.matlab import *
import numpy as np

# c is the capacitors of the loop in Farads
# r is the resistors of the loop in Ohms
# ipump is the charge pump current in Amperes
# vco_gain is the VCO gain in Hertz/Volt
# fout is the output frequency in Hertz
# fref is the reference frequency in Hertz
# div_pn is divider phase noise profile (from SpectreRF)
# pfd_pn is PFD & CP current noise profile (from SpectreRF)
# vco_pn is VCO phase noise profile (from SpectreRF)
# Read noise simulation result from individual components



import System_Phasenoise
#plot open loop and cloosed loop TF
System_Phasenoise.OL_CL_TF()
#plot Crystal reference noise
System_Phasenoise.REF_Noise()
#plot divider noise
System_Phasenoise.N_Divider()
#plot vco noise
System_Phasenoise.N_VCO()
#plot PFD/CP noise
System_Phasenoise.N_PFD_CP()
#plot Total noise
System_Phasenoise.TOTAL_N()

















