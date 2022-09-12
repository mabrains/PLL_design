v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 640 -310 640 -290 {
lab=Vout}
N 550 -340 600 -340 {
lab=Vin}
N 550 -340 550 -260 {
lab=Vin}
N 550 -260 600 -260 {
lab=Vin}
N 640 -380 640 -370 {
lab=VDD}
N 640 -230 640 -200 {
lab=GND}
N 640 -390 640 -380 {
lab=VDD}
N 640 -300 750 -300 {
lab=Vout}
N 700 -260 700 -220 {
lab=GND}
N 640 -190 700 -190 {
lab=GND}
N 670 -380 670 -340 {
lab=VDD}
N 640 -380 670 -380 {
lab=VDD}
N 470 -310 550 -310 {
lab=Vin}
N 750 -300 780 -300 {
lab=Vout}
N 640 -200 640 -170 {
lab=GND}
N 640 -260 700 -260 {
lab=GND}
N 640 -340 670 -340 {
lab=VDD}
N 700 -220 700 -190 {
lab=GND}
N 640 -170 650 -170 {
lab=GND}
N 640 -390 650 -390 {
lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 620 -260 0 0 {name=M1
L=0.15
W=100
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 620 -340 0 0 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 780 -300 1 0 {name=l2 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 550 -280 0 0 {name=l4 sig_type=std_logic lab=Vin
}
C {devices/opin.sym} 780 -300 0 0 {name=p6 lab=Vout}
C {devices/ipin.sym} 470 -310 0 0 {name=p1 lab=Vin}
C {devices/iopin.sym} 640 -390 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 640 -170 0 0 {name=p3 lab=GND
}
