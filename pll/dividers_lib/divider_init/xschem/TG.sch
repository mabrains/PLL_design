v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 420 -310 420 -290 {
lab=clkb}
N 420 -30 420 -10 {
lab=clk}
N 390 -250 390 -70 {
lab=in}
N 450 -250 450 -70 {
lab=out}
N 420 -250 420 -220 {
lab=vdd}
N 330 -220 420 -220 {
lab=vdd}
N 340 -90 420 -90 {
lab=gnd}
N 420 -90 420 -70 {
lab=gnd}
N 340 -160 390 -160 {
lab=in}
N 450 -160 480 -160 {
lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 420 -270 3 1 {name=M11
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 420 -50 1 1 {name=M2
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 330 -220 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 340 -160 0 0 {name=p2 lab=in}
C {devices/ipin.sym} 340 -90 0 0 {name=p3 lab=gnd}
C {devices/ipin.sym} 420 -310 0 0 {name=p4 lab=clkb}
C {devices/ipin.sym} 420 -10 0 0 {name=p5 lab=clk}
C {devices/opin.sym} 480 -160 0 0 {name=p6 lab=out}
