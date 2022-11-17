v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -420 240 -400 {
lab=VDD}
N 240 -420 550 -420 {
lab=VDD}
N 550 -420 550 -400 {
lab=VDD}
N 240 -400 240 -370 {
lab=VDD}
N 550 -400 550 -370 {
lab=VDD}
N 240 -340 240 -300 {
lab=QB}
N 550 -340 550 -300 {
lab=Q}
N 280 -370 550 -310 {
lab=Q}
N 240 -310 510 -370 {
lab=QB}
N 240 -300 240 -240 {
lab=QB}
N 240 -210 550 -210 {
lab=GND}
N 550 -300 550 -240 {
lab=Q}
N 380 -460 380 -420 {
lab=VDD}
N 140 -210 200 -210 {
lab=D}
N 590 -210 650 -210 {
lab=DB}
N 690 -210 710 -210 {
lab=GND}
N 70 -210 100 -210 {
lab=GND}
N 170 -260 170 -210 {
lab=D}
N 550 -280 570 -280 {
lab=Q}
N 400 -130 550 -130 {
lab=#net1}
N 550 -180 550 -130 {
lab=#net1}
N 240 -130 400 -130 {
lab=#net1}
N 240 -180 240 -130 {
lab=#net1}
N 400 -100 400 -70 {
lab=GND}
N 330 -100 360 -100 {
lab=CLK}
N 400 -70 400 -50 {
lab=GND}
N 690 -420 690 -240 {
lab=VDD}
N 550 -420 690 -420 {
lab=VDD}
N 100 -420 100 -240 {
lab=VDD}
N 100 -420 240 -420 {
lab=VDD}
N 620 -210 620 -170 {
lab=DB}
C {sky130_fd_pr/pfet_01v8.sym} 530 -370 0 0 {name=M11
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 120 -210 0 1 {name=M2
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 670 -210 0 0 {name=M4
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 260 -370 0 1 {name=M6
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 380 -460 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 170 -260 0 0 {name=p1 lab=D}
C {devices/opin.sym} 570 -280 0 0 {name=p1 lab=Q}
C {devices/ipin.sym} 400 -50 0 0 {name=p1 lab=GND}
C {devices/ipin.sym} 330 -100 0 0 {name=p1 lab=CLK}
C {devices/lab_pin.sym} 70 -210 0 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 710 -210 2 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 690 -180 3 0 {name=l1 sig_type=std_logic lab=QB}
C {devices/lab_pin.sym} 100 -180 3 0 {name=l1 sig_type=std_logic lab=Q}
C {devices/ipin.sym} 620 -170 0 0 {name=p1 lab=DB}
C {devices/lab_pin.sym} 390 -210 1 0 {name=l1 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 220 -210 0 0 {name=M1
L=0.15
W=4
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 570 -210 0 1 {name=M3
L=0.15
W=4
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 -100 0 0 {name=M5
L=0.15
W=4
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 240 -270 0 0 {name=p1 lab=QB}
