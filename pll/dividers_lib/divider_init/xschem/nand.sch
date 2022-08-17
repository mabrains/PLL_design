v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 -250 200 -220 {
lab=out}
N 200 -220 280 -220 {
lab=out}
N 280 -220 280 -200 {
lab=out}
N 280 -220 350 -220 {
lab=out}
N 350 -250 350 -220 {
lab=out}
N 350 -310 350 -280 {
lab=vdd}
N 200 -310 200 -280 {
lab=vdd}
N 200 -330 200 -310 {
lab=vdd}
N 200 -330 350 -330 {
lab=vdd}
N 350 -330 350 -310 {
lab=vdd}
N 280 -140 280 -110 {
lab=#net1}
N 280 -80 280 -50 {
lab=gnd}
N 280 -170 300 -170 {
lab=gnd}
N 210 -80 240 -80 {
lab=B}
N 210 -170 240 -170 {
lab=A}
N 130 -280 160 -280 {
lab=A}
N 290 -280 310 -280 {
lab=B}
N 270 -350 270 -330 {
lab=vdd}
N 280 -50 280 -30 {
lab=gnd}
N 350 -220 390 -220 {
lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 180 -280 0 0 {name=M11
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 330 -280 0 0 {name=M1
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 260 -170 0 0 {name=M2
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 260 -80 0 0 {name=M3
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 270 -350 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 210 -170 0 0 {name=p2 lab=A}
C {devices/ipin.sym} 210 -80 0 0 {name=p3 lab=B}
C {devices/ipin.sym} 280 -30 0 0 {name=p4 lab=gnd}
C {devices/opin.sym} 390 -220 0 0 {name=p5 lab=out}
C {devices/lab_pin.sym} 130 -280 0 0 {name=l1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 290 -280 0 0 {name=l2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 300 -170 2 0 {name=l3 sig_type=std_logic lab=gnd}
