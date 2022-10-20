v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -10 160 60 {
lab=Vo}
N -50 -30 0 -30 {
lab=UPb}
N -50 20 -0 20 {
lab=DN}
N -440 -160 -440 -130 {
lab=VDD}
N -440 -70 -440 -50 {
lab=GND}
N 50 -70 50 -40 {
lab=VDD}
N 50 30 50 60 {
lab=GND}
N 110 -10 160 -10 {
lab=Vo}
N -480 90 -480 140 {
lab=REF}
N -550 -80 -550 -30 {
lab=FB}
N 210 230 210 240 {
lab=VDD}
C {devices/vsource.sym} -440 -100 0 0 {name=Vdd
value=1.8}
C {devices/gnd.sym} -440 -50 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} -440 -160 0 0 {name=l27 lab=VDD}
C {devices/vdd.sym} 50 -70 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 50 60 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -50 20 0 0 {name=l8 sig_type=std_logic lab=DN}
C {sky130_fd_pr/corner.sym} 205 -275 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} 160 -10 2 0 {name=l10 sig_type=std_logic lab=Vo
}
C {../../PFD/xschem/PFD.sym} -320 -20 0 0 {name=X2}
C {devices/gnd.sym} -230 40 0 0 {name=l16 lab=GND}
C {devices/vdd.sym} -230 -30 0 0 {name=l17 lab=VDD}
C {devices/lab_pin.sym} -180 -10 2 0 {name=l18 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} -180 20 2 0 {name=l19 sig_type=std_logic lab=DN}
C {devices/vsource.sym} -480 170 0 0 {name=V4 value="pulse(0 1.8 5ns 10p 10p 12.5ns 25ns)"}
C {devices/gnd.sym} 160 120 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} -480 100 1 0 {name=l21 sig_type=std_logic lab=REF
}
C {devices/vsource.sym} -550 0 0 0 {name=V5 
value="pulse(0 1.8 0 10p 10p  12.5ns 25ns)"}
C {devices/gnd.sym} -550 30 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} -550 -80 1 0 {name=l23 sig_type=std_logic lab=FB
}
C {devices/lab_pin.sym} -280 30 0 0 {name=l24 sig_type=std_logic lab=FB
}
C {devices/lab_pin.sym} -280 -20 0 0 {name=l25 sig_type=std_logic lab=REF
}
C {devices/code_shown.sym} 230 -60 0 0 {name=spice1 only_toplevel=false value=".tran 0.1ns 400ns
.save all"}
C {devices/vsource.sym} 160 90 0 0 {name=V1 value=0.9}
C {devices/lab_pin.sym} 170 270 0 0 {name=l6 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} 280 270 2 0 {name=l9 sig_type=std_logic lab=UPb}
C {../../inverter/xschem/inverter.sym} -2840 720 0 0 {name=X3}
C {devices/lab_pin.sym} -50 -30 0 0 {name=l7 sig_type=std_logic lab=UPb}
C {devices/vdd.sym} 210 230 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 210 300 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} -480 200 0 0 {name=l3 lab=GND}
C {../../CP/xschem/CP.sym} -30 -20 0 0 {name=X1}
