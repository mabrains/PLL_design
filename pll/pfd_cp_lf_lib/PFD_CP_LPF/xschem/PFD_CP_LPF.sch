v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 -0 140 40 {
lab=Vo}
N 140 -50 140 -0 {
lab=Vo}
N 140 -50 360 -50 {
lab=Vo}
N 360 100 360 130 {
lab=GND}
N 140 130 360 130 {
lab=GND}
N 140 100 140 130 {
lab=GND}
N 570 60 570 130 {
lab=GND}
N 360 130 570 130 {
lab=GND}
N 570 -50 570 -0 {
lab=Vctrl}
N 480 -50 570 -50 {
lab=Vctrl}
N 360 -50 360 -40 {
lab=Vo}
N 360 -50 420 -50 {
lab=Vo}
N 360 20 360 40 {
lab=#net1}
N -210 240 -210 250 {
lab=VDD}
N -190 20 -140 20 {
lab=#net2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 140 70 0 0 {name=C1 model=cap_mim_m3_1 W=5 L=5 MF=25 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 360 70 0 0 {name=C2 model=cap_mim_m3_1 W=15 L=15 MF=55 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 570 30 0 0 {name=C3 model=cap_mim_m3_1 W=2 L=2 MF=10 spiceprefix=X}
C {../../PFD/xschem/PFD.sym} -710 0 0 0 {name=X1}
C {../../CP/xschem/CP.sym} -330 10 0 0 {name=X2}
C {devices/lab_pin.sym} -570 10 2 0 {name=l18 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} -570 40 2 0 {name=l19 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} -670 50 0 0 {name=l24 sig_type=std_logic lab=FB
}
C {devices/lab_pin.sym} -670 0 0 0 {name=l25 sig_type=std_logic lab=REF
}
C {devices/lab_pin.sym} -300 50 0 0 {name=l8 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} -300 0 0 0 {name=l7 sig_type=std_logic lab=UPb}
C {devices/lab_pin.sym} -80 20 2 0 {name=l10 sig_type=std_logic lab=Vo
}
C {devices/lab_pin.sym} -250 280 0 0 {name=l6 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} -140 280 2 0 {name=l9 sig_type=std_logic lab=UPb}
C {../../CP/xschem/inverter.sym} -3260 730 0 0 {name=X4}
C {devices/lab_pin.sym} 140 -50 0 0 {name=l1 sig_type=std_logic lab=Vo
}
C {devices/iopin.sym} -880 -30 0 0 {name=p4 lab=VDD}
C {devices/lab_pin.sym} -620 -10 1 0 {name=l23 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -210 240 1 0 {name=l2 sig_type=std_logic lab=VDD
}
C {devices/iopin.sym} -880 10 0 0 {name=p5 lab=GND}
C {devices/lab_pin.sym} -620 60 3 0 {name=l12 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} -250 60 3 0 {name=l3 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} -210 310 3 0 {name=l4 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 340 130 3 0 {name=l5 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 570 -50 2 0 {name=l11 sig_type=std_logic lab=Vctrl
}
C {devices/lab_pin.sym} -250 -10 1 0 {name=l13 sig_type=std_logic lab=VDD
}
C {devices/ipin.sym} -820 50 0 0 {name=p1 lab=REF}
C {devices/ipin.sym} -810 90 0 0 {name=p2 lab=FB}
C {devices/opin.sym} -860 130 0 0 {name=p6 lab=Vctrl
}
C {devices/res.sym} 360 -10 0 0 {name=R2
value=39.5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 450 -50 3 0 {name=R1
value=546.18k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -110 20 3 0 {name=V1 value=0}
