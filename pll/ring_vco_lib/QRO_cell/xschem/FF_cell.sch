v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 -90 90 -50 {
lab=out}
N 10 -20 50 -20 {
lab=in}
N 10 -120 10 -20 {
lab=in}
N 10 -120 50 -120 {
lab=in}
N -70 -70 10 -70 {
lab=in}
N 90 -70 210 -70 {
lab=out}
N 90 10 90 60 {
lab=vss}
N 90 -200 90 -150 {
lab=vcc}
C {sky130_fd_pr/nfet3_01v8.sym} 70 -20 0 0 {name=M1
L=0.15
W=.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 70 -120 0 0 {name=M2
L=0.15
W=1
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
C {devices/ipin.sym} 90 50 3 0 {name=p1 lab=vss}
C {devices/ipin.sym} 90 -190 1 0 {name=p2 lab=vcc}
C {devices/iopin.sym} 200 -70 0 0 {name=p3 lab=out}
C {devices/iopin.sym} -60 -70 0 1 {name=p4 lab=in}
