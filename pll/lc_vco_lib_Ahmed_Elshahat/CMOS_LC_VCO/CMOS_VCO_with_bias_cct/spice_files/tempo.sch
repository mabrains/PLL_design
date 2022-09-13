v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 420 90 450 {
lab=#net1}
N -280 420 -280 450 {
lab=#net1}
N -420 530 -140 530 {
lab=#net2}
N -460 530 -460 560 {
lab=GND}
N -100 530 -100 560 {
lab=GND}
N -380 460 -380 530 {
lab=#net2}
N -460 460 -380 460 {
lab=#net2}
N -460 560 -460 580 {
lab=GND}
N -460 580 -280 580 {
lab=GND}
N -280 580 -100 580 {
lab=GND}
N -100 560 -100 580 {
lab=GND}
N -280 450 90 450 {
lab=#net1}
N -100 450 -100 500 {
lab=#net1}
N -100 140 -80 140 {
lab=#net3}
N -280 -130 -280 250 {
lab=vn}
N 90 -140 90 250 {
lab=vp}
N -220 -100 -110 -100 {
lab=vn}
N -220 -100 -220 140 {
lab=vn}
N -220 140 -160 140 {
lab=vn}
N -20 140 50 140 {
lab=vp}
N 50 -100 50 140 {
lab=vp}
N -50 -100 50 -100 {
lab=vp}
N -220 40 -120 40 {
lab=vn}
N -60 40 50 40 {
lab=vp}
N -280 40 -220 40 {
lab=vn}
N 50 40 90 40 {
lab=vp}
N -280 -240 -280 -210 {
lab=vn}
N 90 -240 90 -220 {
lab=vp}
N -280 -210 -280 -130 {
lab=vn}
N 90 -220 90 -140 {
lab=vp}
N -240 -270 90 -180 {
lab=vp}
N -280 -180 50 -270 {
lab=vn}
N -280 340 50 420 {
lab=vn}
N -240 420 90 340 {
lab=vp}
N 90 -350 90 -300 {
lab=VDD}
N -280 -350 90 -350 {
lab=VDD}
N -280 -350 -280 -300 {
lab=VDD}
N 90 40 220 40 {
lab=vp}
N -420 40 -280 40 {
lab=vn}
N -460 100 -460 120 {
lab=GND}
N 270 100 270 130 {
lab=GND}
N -280 -300 -280 -270 {
lab=VDD}
N 90 -300 90 -270 {
lab=VDD}
N -280 250 -280 390 {
lab=vn}
N 90 250 90 390 {
lab=vp}
N -280 260 -120 260 {
lab=vn}
N -60 260 90 260 {
lab=vp}
N -460 40 -420 40 {
lab=vn}
N 220 40 270 40 {
lab=vp}
N -280 580 -280 600 {
lab=GND}
N -100 -370 -100 -350 {
lab=VDD}
N 170 200 170 240 {
lab=V_ctrl}
N 170 200 270 200 {
lab=V_ctrl}
N 270 200 270 340 {
lab=V_ctrl}
N 170 340 270 340 {
lab=V_ctrl}
N 170 300 170 340 {
lab=V_ctrl}
N 90 270 130 270 {
lab=vp}
N 170 270 270 270 {
lab=V_ctrl}
N -380 270 -340 270 {
lab=V_ctrl}
N -340 200 -340 240 {
lab=V_ctrl}
N -430 200 -340 200 {
lab=V_ctrl}
N -430 200 -430 350 {
lab=V_ctrl}
N -430 350 -340 350 {
lab=V_ctrl}
N -340 300 -340 350 {
lab=V_ctrl}
N -430 270 -380 270 {
lab=V_ctrl}
N -300 270 -280 270 {
lab=vn}
N 380 -170 380 -140 {
lab=V_ctrl}
N -640 410 -640 460 {
lab=#net2}
N -640 460 -460 460 {
lab=#net2}
N -460 460 -460 500 {
lab=#net2}
N -640 -110 -640 410 {
lab=#net2}
C {devices/vsource.sym} 260 -100 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 260 -70 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 260 -130 0 0 {name=l7 lab=VDD}
C {sky130_fd_pr/corner.sym} 240 -340 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_fd_pr/nfet_01v8.sym} 70 420 0 0 {name=M4
L=0.15
W=50
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -260 420 0 1 {name=M3
L=0.15
W=50
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -440 530 0 1 {name=M1
L=2
W=10.11
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -280 600 0 0 {name=l1 lab=GND}
C {devices/ind.sym} -130 140 3 0 {name=L1
m=1
value=1.6n
footprint=1206
device=inductor}
C {devices/res.sym} -50 140 1 0 {name=R2
value=1.6
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} -80 -100 1 0 {name=CF model=cap_mim_m3_1 W=10 L=2.3 MF=1 spiceprefix=X}
C {devices/res.sym} -90 40 1 0 {name=R3
value=400
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet_01v8.sym} -260 -270 0 1 {name=M5
L=0.15
W=50
nf=2 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 70 -270 0 0 {name=M6
L=0.15
W=50
nf=2 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} -100 -370 0 0 {name=l3 lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} -460 70 0 0 {name=C3 model=cap_mim_m3_1 W=1 L=1.95 MF=1 spiceprefix=X}
C {devices/gnd.sym} -460 120 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 270 130 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 170 40 1 0 {name=l8 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} -350 40 1 0 {name=l9 sig_type=std_logic lab=vn}
C {sky130_fd_pr/cap_mim_m3_1.sym} 270 70 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1.95 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} -120 530 0 0 {name=M2
L=2
W=10.11
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/capa.sym} -90 260 1 0 {name=C_load
m=1
value=2.233058p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8.sym} 150 270 0 0 {name=M8
L=0.15
W=50
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -320 270 0 1 {name=M7
L=0.15
W=50
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 380 -110 0 0 {name=Tuner value=0}
C {devices/gnd.sym} 380 -80 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 380 -160 2 0 {name=l11 sig_type=std_logic lab=V_ctrl}
C {devices/lab_pin.sym} -430 240 0 0 {name=l12 sig_type=std_logic lab=V_ctrl}
C {devices/lab_pin.sym} 270 230 2 0 {name=l13 sig_type=std_logic lab=V_ctrl}
C {BGR_Banba.sym} -340 -90 1 0 {name=X1}
C {devices/vdd.sym} -520 -220 1 0 {name=l14 lab=VDD}
C {devices/gnd.sym} -760 -220 1 0 {name=l15 lab=GND}
