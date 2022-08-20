v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3410 -400 3410 -330 {
lab=out}
N 3410 -270 3410 -230 {
lab=vss}
N 3320 -300 3370 -300 {
lab=in}
N 3320 -430 3320 -300 {
lab=in}
N 3320 -430 3370 -430 {
lab=in}
N 3410 -500 3410 -460 {
lab=vcc}
N 3410 -560 3410 -500 {
lab=vcc}
N 3410 -230 3410 -180 {
lab=vss}
N 3220 -360 3320 -360 {
lab=in}
N 3200 -360 3220 -360 {
lab=in}
N 3200 -360 3210 -360 {
lab=in}
N 3620 -360 3640 -360 {
lab=out}
N 3630 -360 3640 -360 {
lab=out}
N 3410 -360 3620 -360 {
lab=out}
C {sky130_fd_pr/nfet3_01v8.sym} 3390 -300 0 0 {name=M1
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/pfet3_01v8.sym} 3390 -430 0 0 {name=M2
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 3410 -550 1 0 {name=p1 lab=vcc}
C {devices/ipin.sym} 3410 -190 3 0 {name=p2 lab=vss}
C {devices/iopin.sym} 3210 -360 2 0 {name=p5 lab=in}
C {devices/iopin.sym} 3630 -360 2 1 {name=p3 lab=out}
