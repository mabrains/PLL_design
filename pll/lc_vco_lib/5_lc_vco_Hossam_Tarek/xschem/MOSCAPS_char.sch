v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {N_MOSFET} -140 -130 0 0 0.4 0.4 {}
T {P_MOSFET} 130 -130 0 0 0.4 0.4 {}
N -110 -60 -100 -60 {
lab=VCM}
N -100 -60 -100 0 {
lab=VCM}
N -110 0 -100 0 {
lab=VCM}
N -110 -30 -100 -30 {
lab=VCM}
N -170 -30 -150 -30 {
lab=Vctrl}
N -290 -90 -290 -80 {
lab=Vctrl}
N -120 60 -110 60 {
lab=Vctrl}
N -120 60 -120 120 {
lab=Vctrl}
N -120 120 -110 120 {
lab=Vctrl}
N -70 90 -50 90 {
lab=VCM}
N 220 -60 230 -60 {
lab=VCM}
N 230 -60 230 0 {
lab=VCM}
N 220 0 230 0 {
lab=VCM}
N 170 -30 180 -30 {
lab=Vctrl}
N 210 70 220 70 {
lab=Vctrl}
N 210 70 210 130 {
lab=Vctrl}
N 210 130 220 130 {
lab=Vctrl}
N 210 100 220 100 {
lab=Vctrl}
N 260 100 280 100 {
lab=VCM}
N -440 -80 -440 -70 {
lab=VCM}
N -120 90 -110 90 {
lab=Vctrl}
N 220 -30 300 -30 {
lab=#net1}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 200 -30 0 0 {name=M2
L=1
W=2
nf=1
mult=14
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -130 -30 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/vsource.sym} -290 -50 0 0 {name=Vctrl value=0}
C {devices/gnd.sym} -290 -20 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -290 -90 0 0 {name=l2 sig_type=std_logic lab=Vctrl}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -90 90 0 1 {name=M3
L=1
W=2
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -170 -30 0 0 {name=l3 sig_type=std_logic lab=Vctrl}
C {devices/lab_pin.sym} -50 90 0 1 {name=l4 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} -100 -60 0 1 {name=l5 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} -120 60 0 0 {name=l7 sig_type=std_logic lab=Vctrl}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 240 100 0 1 {name=M4
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 280 100 0 1 {name=l6 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 230 -60 0 1 {name=l8 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 170 -30 0 0 {name=l9 sig_type=std_logic lab=Vctrl}
C {devices/lab_pin.sym} 210 70 0 0 {name=l10 sig_type=std_logic lab=Vctrl}
C {devices/vsource.sym} -440 -40 0 0 {name=V2 value=0.95}
C {devices/gnd.sym} -440 -10 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -440 -80 0 1 {name=l12 sig_type=std_logic lab=VCM}
C {sky130_fd_pr/corner.sym} 370 -100 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 340 40 0 0 {name=DC1  only_toplevel=false value=" 
  .control
    op
     save  @m.xm2.msky130_fd_pr__pfet_01v8_lvt[cdd]
     dc Vctrl 0 1.8 10m
     plot  @m.xm2.msky130_fd_pr__pfet_01v8_lvt[cdd]   
  .endc
.save all "}
C {devices/gnd.sym} 300 -30 0 0 {name=l13 lab=GND}
