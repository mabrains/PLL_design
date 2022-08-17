v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 180 -240 180 -90 {
lab=in}
N 240 -240 240 -90 {
lab=xxx}
N 210 -240 210 -210 {
lab=vdd}
N 130 -210 210 -210 {
lab=vdd}
N 210 -120 210 -90 {
lab=gnd}
N 140 -120 210 -120 {
lab=gnd}
N 210 -300 210 -280 {
lab=clk}
N 210 -50 210 -30 {
lab=clkb}
N 160 -160 180 -160 {
lab=in}
N 240 -160 260 -160 {
lab=xxx}
C {sky130_fd_pr/pfet_01v8.sym} 210 -260 1 0 {name=M11
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 210 -70 3 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 130 -210 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 160 -160 0 0 {name=p2 lab=in}
C {devices/ipin.sym} 140 -120 0 0 {name=p3 lab=gnd}
C {devices/ipin.sym} 210 -30 0 0 {name=p4 lab=clkb}
C {devices/ipin.sym} 210 -300 0 0 {name=p5 lab=clk}
C {devices/opin.sym} 260 -160 0 0 {name=p6 lab=out}
