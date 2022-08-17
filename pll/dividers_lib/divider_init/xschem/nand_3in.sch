v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 380 -380 380 -350 {
lab=out}
N 380 -350 460 -350 {
lab=out}
N 460 -350 530 -350 {
lab=out}
N 530 -380 530 -350 {
lab=out}
N 530 -440 530 -410 {
lab=vdd}
N 380 -440 380 -410 {
lab=vdd}
N 380 -460 380 -440 {
lab=vdd}
N 380 -460 530 -460 {
lab=vdd}
N 530 -460 530 -440 {
lab=vdd}
N 380 -270 380 -240 {
lab=#net1}
N 380 -300 400 -300 {
lab=gnd}
N 310 -210 340 -210 {
lab=B}
N 310 -300 340 -300 {
lab=A}
N 310 -410 340 -410 {
lab=A}
N 470 -410 490 -410 {
lab=B}
N 450 -480 450 -460 {
lab=vdd}
N 380 -180 380 -160 {
lab=#net2}
N 530 -350 570 -350 {
lab=out}
N 210 -460 380 -460 {
lab=vdd}
N 210 -460 210 -440 {
lab=vdd}
N 210 -440 210 -410 {
lab=vdd}
N 130 -410 170 -410 {
lab=C}
N 210 -380 210 -350 {
lab=out}
N 210 -350 380 -350 {
lab=out}
N 380 -350 380 -330 {
lab=out}
N 380 -210 400 -210 {
lab=gnd}
N 300 -130 340 -130 {
lab=C}
N 380 -100 380 -80 {
lab=gnd}
N 380 -130 380 -100 {
lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} 360 -410 0 0 {name=M1
L=0.15
W=3
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 510 -410 0 0 {name=M3
L=0.15
W=3
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 360 -300 0 0 {name=M4
L=0.15
W=3
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 360 -210 0 0 {name=M5
L=0.15
W=3
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 450 -480 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 310 -300 0 0 {name=p2 lab=A}
C {devices/ipin.sym} 310 -210 0 0 {name=p3 lab=B}
C {devices/ipin.sym} 380 -80 0 0 {name=p4 lab=gnd}
C {devices/opin.sym} 570 -350 0 0 {name=p5 lab=out}
C {devices/lab_pin.sym} 310 -410 0 0 {name=l1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 470 -410 0 0 {name=l2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 400 -300 2 0 {name=l3 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} 190 -410 0 0 {name=M2
L=0.15
W=3
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -210 2 0 {name=l4 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/nfet_01v8.sym} 360 -130 0 0 {name=M6
L=0.15
W=3
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 300 -130 0 0 {name=p6 lab=C}
C {devices/lab_pin.sym} 130 -410 0 0 {name=l5 sig_type=std_logic lab=C}
