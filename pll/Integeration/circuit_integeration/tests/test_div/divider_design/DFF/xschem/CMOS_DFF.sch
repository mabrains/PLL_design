v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 -470 350 -440 {
lab=VDD}
N 350 -440 350 -410 {
lab=VDD}
N 350 -380 350 -360 {
lab=#net1}
N 350 -330 370 -330 {
lab=VDD}
N 350 -210 370 -210 {
lab=GND}
N 350 -180 350 -140 {
lab=#net2}
N 350 -300 350 -240 {
lab=#net3}
N 350 -110 350 -80 {
lab=GND}
N 220 -110 310 -110 {
lab=D}
N 220 -410 220 -110 {
lab=D}
N 220 -410 310 -410 {
lab=D}
N 290 -330 310 -330 {
lab=CLKB}
N 290 -210 310 -210 {
lab=CLK}
N 350 -80 350 -60 {
lab=GND}
N 630 -440 630 -410 {
lab=VDD}
N 630 -380 630 -360 {
lab=#net4}
N 630 -330 650 -330 {
lab=VDD}
N 630 -210 650 -210 {
lab=GND}
N 630 -180 630 -140 {
lab=#net5}
N 630 -300 630 -240 {
lab=Q}
N 630 -110 630 -80 {
lab=GND}
N 570 -330 590 -330 {
lab=CLK}
N 570 -210 590 -210 {
lab=CLKB}
N 350 -270 510 -270 {
lab=#net3}
N 510 -410 510 -270 {
lab=#net3}
N 510 -410 590 -410 {
lab=#net3}
N 510 -270 510 -110 {
lab=#net3}
N 510 -110 590 -110 {
lab=#net3}
N 630 -270 680 -270 {
lab=Q}
C {sky130_fd_pr/pfet_01v8.sym} 330 -410 0 0 {name=M11
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 330 -330 0 0 {name=M1
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 330 -210 0 0 {name=M2
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 330 -110 0 0 {name=M3
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 350 -470 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 220 -270 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 290 -210 0 0 {name=p1 lab=CLK}
C {devices/ipin.sym} 350 -60 0 0 {name=p1 lab=GND}
C {devices/lab_pin.sym} 370 -210 2 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 370 -330 2 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 290 -330 0 0 {name=p1 lab=CLKB}
C {sky130_fd_pr/pfet_01v8.sym} 610 -410 0 0 {name=M4
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 610 -330 0 0 {name=M5
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 610 -210 0 0 {name=M6
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 610 -110 0 0 {name=M7
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 650 -210 2 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 650 -330 2 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 680 -270 0 0 {name=p2 lab=Q}
C {devices/lab_pin.sym} 570 -330 2 1 {name=l2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 570 -210 2 1 {name=l2 sig_type=std_logic lab=CLKB}
C {devices/lab_pin.sym} 630 -80 2 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 630 -440 2 1 {name=l2 sig_type=std_logic lab=VDD}
