v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -220 -240 -220 -210 {
lab=v_tunN}
N -220 -240 -160 -240 {
lab=v_tunN}
N -160 -240 -120 -240 {
lab=v_tunN}
N -120 -240 -120 -120 {
lab=v_tunN}
N -220 -120 -120 -120 {
lab=v_tunN}
N -220 -150 -220 -120 {
lab=v_tunN}
N -220 -180 -120 -180 {
lab=v_tunN}
N -300 -180 -260 -180 {
lab=v_tunP}
N 360 -210 360 -180 {
lab=v_tunP}
N 360 -120 360 -90 {
lab=GND}
N -220 -70 -220 -30 {
lab=v_tunN}
N -220 -70 -120 -70 {
lab=v_tunN}
N -120 -70 -120 70 {
lab=v_tunN}
N -220 70 -120 70 {
lab=v_tunN}
N -220 30 -220 70 {
lab=v_tunN}
N -300 -0 -260 0 {
lab=v_tunP}
N -220 0 -120 0 {
lab=v_tunN}
N 110 -240 110 -210 {
lab=v_tunN}
N 110 -240 170 -240 {
lab=v_tunN}
N 170 -240 210 -240 {
lab=v_tunN}
N 210 -240 210 -120 {
lab=v_tunN}
N 110 -120 210 -120 {
lab=v_tunN}
N 110 -150 110 -120 {
lab=v_tunN}
N 30 -180 70 -180 {
lab=v_tunP}
N 110 -70 110 -30 {
lab=v_tunN}
N 110 -70 210 -70 {
lab=v_tunN}
N 210 -70 210 70 {
lab=v_tunN}
N 110 70 210 70 {
lab=v_tunN}
N 110 30 110 70 {
lab=v_tunN}
N 30 0 70 0 {
lab=v_tunP}
N 110 -180 190 -180 {
lab=VDD}
N 110 -0 190 0 {
lab=GND}
N 190 -20 190 0 {
lab=GND}
N -500 -210 -500 -180 {
lab=v_tunP}
N -500 -120 -500 -90 {
lab=GND}
C {sky130_fd_pr/corner.sym} 330 20 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_fd_pr/nfet_01v8.sym} -240 0 0 0 {name=M1
L=0.15
W=50
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 360 -150 0 0 {name=V_tun value=0}
C {sky130_fd_pr/pfet_01v8.sym} -240 -180 0 0 {name=M2
L=0.15
W=50
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 360 -200 0 0 {name=l1 sig_type=std_logic lab=v_tunN}
C {devices/lab_pin.sym} -300 -180 0 0 {name=l3 sig_type=std_logic lab=v_tunP}
C {devices/lab_pin.sym} -220 -240 0 0 {name=l4 sig_type=std_logic lab=v_tunN}
C {devices/lab_pin.sym} -300 0 0 0 {name=l5 sig_type=std_logic lab=v_tunP}
C {devices/lab_pin.sym} -220 -70 0 0 {name=l6 sig_type=std_logic lab=v_tunN}
C {sky130_fd_pr/nfet_01v8.sym} 90 0 0 0 {name=M3
L=0.15
W=50
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 90 -180 0 0 {name=M4
L=0.15
W=50
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 30 -180 0 0 {name=l7 sig_type=std_logic lab=v_tunP}
C {devices/lab_pin.sym} 110 -240 0 0 {name=l8 sig_type=std_logic lab=v_tunN}
C {devices/lab_pin.sym} 30 0 0 0 {name=l9 sig_type=std_logic lab=v_tunP}
C {devices/lab_pin.sym} 110 -70 0 0 {name=l10 sig_type=std_logic lab=v_tunN}
C {devices/vsource.sym} 460 -140 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 460 -110 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 460 -170 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} 190 -180 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 190 -20 2 0 {name=l14 lab=GND}
C {devices/vsource.sym} -500 -150 0 0 {name=V_tank value=1.3}
C {devices/lab_pin.sym} -500 -200 0 0 {name=l15 sig_type=std_logic lab=v_tunP}
C {devices/gnd.sym} -500 -90 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 360 -90 0 0 {name=l2 lab=GND}
