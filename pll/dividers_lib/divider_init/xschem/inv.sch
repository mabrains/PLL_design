v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 -180 250 -110 {
lab=out}
N 250 -240 250 -210 {
lab=vdd}
N 250 -80 250 -50 {
lab=gnd}
N 190 -80 210 -80 {
lab=in}
N 190 -210 190 -80 {
lab=in}
N 190 -210 210 -210 {
lab=in}
N 250 -140 280 -140 {
lab=out}
N 170 -140 190 -140 {
lab=in}
N 250 -50 250 -30 {
lab=gnd}
N 250 -260 250 -240 {
lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 230 -210 0 0 {name=M11
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 230 -80 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 250 -260 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 170 -140 0 0 {name=p2 lab=in}
C {devices/ipin.sym} 250 -30 0 0 {name=p3 lab=gnd}
C {devices/opin.sym} 280 -140 0 0 {name=p4 lab=out}
