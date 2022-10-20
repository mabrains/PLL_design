v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -550 470 -520 {
lab=vdd}
N 470 -260 470 -240 {
lab=gnd}
N 470 -290 470 -260 {
lab=gnd}
N 470 -520 470 -490 {
lab=vdd}
N 470 -400 490 -400 {
lab=vdd}
N 490 -490 490 -400 {
lab=vdd}
N 470 -490 490 -490 {
lab=vdd}
N 470 -350 620 -350 {
lab=#net1}
N 1240 -420 1270 -420 {
lab=QB}
N 1070 -420 1070 -400 {
lab=Q}
N 380 -490 430 -490 {
lab=D}
N 340 -360 380 -360 {
lab=D}
N 360 -400 430 -400 {
lab=clk}
N 470 -460 470 -430 {
lab=#net2}
N 470 -370 470 -320 {
lab=#net1}
N 380 -360 380 -290 {
lab=D}
N 380 -290 430 -290 {
lab=D}
N 380 -490 380 -360 {
lab=D}
N 570 -410 600 -410 {
lab=gnd}
N 470 -440 600 -440 {
lab=#net2}
N 600 -380 600 -350 {
lab=#net1}
N 640 -410 660 -410 {
lab=clkb}
N 790 -260 790 -240 {
lab=gnd}
N 790 -290 790 -260 {
lab=gnd}
N 790 -520 790 -490 {
lab=vdd}
N 790 -400 810 -400 {
lab=vdd}
N 810 -490 810 -400 {
lab=vdd}
N 790 -490 810 -490 {
lab=vdd}
N 790 -460 790 -430 {
lab=#net3}
N 790 -370 790 -320 {
lab=#net4}
N 1000 -440 1000 -380 {
lab=Q}
N 1000 -350 1000 -320 {
lab=gnd}
N 1000 -320 1000 -240 {
lab=gnd}
N 790 -240 950 -240 {
lab=gnd}
N 860 -400 890 -400 {
lab=gnd}
N 890 -370 890 -340 {
lab=#net4}
N 790 -430 890 -430 {
lab=#net3}
N 790 -340 890 -340 {
lab=#net4}
N 620 -290 750 -290 {
lab=#net1}
N 620 -350 620 -290 {
lab=#net1}
N 600 -490 750 -490 {
lab=#net2}
N 600 -490 600 -440 {
lab=#net2}
N 950 -240 1000 -240 {
lab=gnd}
N 890 -350 960 -350 {
lab=#net4}
N 890 -470 890 -430 {
lab=#net3}
N 890 -470 960 -470 {
lab=#net3}
N 1000 -420 1070 -420 {
lab=Q}
N 1070 -420 1120 -420 {
lab=Q}
N 1000 -500 1000 -470 {
lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 450 -400 0 0 {name=M1
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 450 -490 0 0 {name=M2
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 450 -290 0 0 {name=M4
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 470 -550 0 0 {name=p4 lab=vdd}
C {devices/ipin.sym} 470 -240 3 0 {name=p6 lab=gnd}
C {devices/ipin.sym} 340 -360 0 0 {name=p1 lab=D}
C {inv.sym} 1100 -300 0 0 {name=x5}
C {devices/lab_pin.sym} 1160 -470 1 0 {name=l5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1160 -370 1 1 {name=l4 sig_type=std_logic lab=gnd}
C {devices/opin.sym} 1270 -420 0 0 {name=p5 lab=QB}
C {devices/opin.sym} 1070 -400 3 1 {name=p5 lab=Q}
C {devices/ipin.sym} 360 -400 0 0 {name=p2 lab=clk}
C {devices/ipin.sym} 660 -410 0 1 {name=p3 lab=clkb}
C {sky130_fd_pr/nfet_01v8.sym} 620 -410 0 1 {name=M3
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 570 -410 0 0 {name=l7 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} 770 -400 0 0 {name=M5
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 770 -490 0 0 {name=M6
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 770 -290 0 0 {name=M7
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 980 -470 0 0 {name=M8
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 980 -350 0 0 {name=M9
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 790 -240 0 0 {name=l7 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/nfet_01v8.sym} 910 -400 0 1 {name=M10
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 860 -400 0 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 930 -400 3 0 {name=l7 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 750 -400 3 0 {name=l7 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 790 -520 1 0 {name=l7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1000 -500 1 0 {name=l7 sig_type=std_logic lab=vdd}
