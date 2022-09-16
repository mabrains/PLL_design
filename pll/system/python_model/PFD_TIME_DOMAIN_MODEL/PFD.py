import math as m
import matplotlib.pyplot as plt
from control.matlab import *
import numpy as np
from scipy import signal
fsampling=100000000
fref = 10e6
ipump = 100e-6
Kpd = ipump/(2/m.pi); # phase detector gain
VDD =1.8
thresh=0.9

edgeA="none"
edgeB="none"

Ctrl_A=0
Ctrl_B=0
LEAD="none"

t = np.linspace(0, 1, fsampling, endpoint=True)
refcr=1.8*(signal.square(2 * np.pi * fref * t+(np.pi/2)))
FB=1.8*(signal.square(2 * np.pi * fref * t))

UP_SIGNAL=np.zeros(len(refcr))
DOWN_SIGNAL=np.zeros(len(refcr))
A_index=0
B_index=0
ctrl=0
for i in range(len(refcr)):
    if i == 0:
        Before_RE_A = VDD
        Before_RE_B = VDD
        ctrl=1
    else:
        Before_RE_A = refcr[i-1]
        Before_RE_B = FB[i-1]
        Current_state_A = refcr[i]
        Current_state_B = FB[i]  

    if Before_RE_A == -1.8 and Current_state_A == 1.8:
        edgeA="RISING_A"
        A_index = i
    if Before_RE_B == -1.8 and Current_state_B == 1.8:
        edgeB="RISING_B"
        B_index = i
        
    # if ctrl==1 and (edgeA=="RISING_A" or edgeB=="RISING_B"):
    #     if A_index > 0 and B_index ==0:
    #         LEAD ="UP"
    #     elif A_index == 0 and B_index >0:
    #         LEAD ="DOWN"
    #     A_index=0   
    #     B_index=0
    #     ctrl=0
    if LEAD == "none" and A_index>0 and B_index ==0:
        LEAD = "UP"
        A_index=0   
        B_index=0
    elif LEAD == "none" and A_index==0 and B_index >0:
        LEAD ="DOWN"
        A_index=0   
        B_index=0

    if (A_index > 0 and B_index > 0 and A_index<B_index):
            LEAD ="UP"
            A_index=0   
            B_index=0
    elif (A_index > 0 and B_index > 0 and A_index>B_index):
            LEAD ="DOWN"
            A_index=0   
            B_index=0

    if   (edgeA == "RISING_A" and edgeB == "RISING_B") or (edgeA == "none" and edgeB == "none"):
        State="Locked"
    elif edgeA == "RISING_A" and edgeB == "none" and LEAD=="UP":
        State = "UP"
    elif edgeA == "none" and edgeB == "RISING_B"  and LEAD=="DOWN":  
        State = "DOWN" 

    if State=="Locked":
        UP_SIGNAL[i]=0
        DOWN_SIGNAL[i]=0
    elif State == "UP":
        UP_SIGNAL[i]=VDD
    elif State == "DOWN":
        DOWN_SIGNAL[i]=VDD
        
    edgeA="none"
    edgeB="none"

plt.figure(1)
plt.subplot(4,1, 1)
leg=plt.plot(t,refcr)
plt.ylim(-2, 2)
plt.xlim(0, 5/fref)
plt.xlabel('Time (Sec)') 
plt.ylabel('Amplitude (V)') 
# displaying the title
plt.title('REF Signal')
# plt.legend("REF")
# plot with grid
plt.grid(True)
leg=plt.subplot(4, 1, 2)
plt.plot(t,FB,color = "Red")
plt.ylim(-2, 2)
plt.xlim(0, 5/fref)
plt.ylabel('Amplitude (V)') 
# displaying the title
plt.title('Feedback Signal')
# plt.legend("FB")
# plot with grid
plt.grid(True)
leg=plt.subplot(4, 1, 3)
plt.plot(t,UP_SIGNAL,color = "lime")
plt.ylim(0, 2)
plt.xlim(0, 5/fref)
 
plt.ylabel('Amplitude (V)') 
# displaying the title
plt.title('UP Signal')
# plt.legend("UP")
# plot with grid
plt.grid(True)
leg=plt.subplot(4, 1, 4)
plt.plot(t,DOWN_SIGNAL,color = "deeppink")
plt.ylim(0, 2)
plt.xlim(0, 5/fref)
plt.ylabel('Amplitude (V)') 
# displaying the title
plt.title('DOWN Signal')
# plt.legend("UP")
# plot with grid
plt.grid(True)
# show the plot
# show the plot
plt.suptitle("PFD")
plt.show()

