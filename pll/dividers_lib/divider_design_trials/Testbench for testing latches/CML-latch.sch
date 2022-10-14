v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -350 630 -350 {
lab=#net1}
N 530 -350 530 -320 {
lab=#net1}
N 820 -370 990 -370 {
lab=#net2}
N 430 -380 630 -380 {
lab=GND}
N 790 -400 820 -400 {
lab=GND}
N 990 -400 1020 -400 {
lab=GND}
N 910 -370 910 -340 {
lab=#net2}
N 530 -260 770 -260 {
lab=#net3}
N 910 -280 910 -260 {
lab=#net3}
N 770 -230 770 -200 {
lab=GND}
N 770 -200 770 -180 {
lab=GND}
N 530 -290 570 -290 {
lab=GND}
N 910 -310 940 -310 {
lab=GND}
N 360 -380 390 -380 {
lab=D}
N 670 -380 690 -380 {
lab=DB}
N 430 -590 430 -560 {
lab=VDD}
N 430 -590 630 -590 {
lab=VDD}
N 630 -590 630 -560 {
lab=VDD}
N 550 -650 550 -590 {
lab=VDD}
N 430 -460 430 -410 {
lab=out}
N 630 -460 630 -410 {
lab=Y}
N 820 -450 820 -430 {
lab=Y}
N 990 -450 990 -430 {
lab=out}
N 770 -260 910 -260 {
lab=#net3}
N 630 -450 820 -450 {
lab=Y}
N 990 -480 990 -450 {
lab=out}
N 430 -480 990 -480 {
lab=out}
N 430 -480 430 -460 {
lab=out}
N 430 -500 430 -480 {
lab=out}
N 630 -500 630 -460 {
lab=Y}
N 250 -410 250 -260 {
lab=IBIAS}
N 290 -280 290 -230 {
lab=IBIAS}
N 250 -280 290 -280 {
lab=IBIAS}
N 290 -230 730 -230 {
lab=IBIAS}
N 450 -530 610 -530 {
lab=GND}
N 450 -290 490 -290 {
lab=CLK}
N 850 -310 870 -310 {
lab=CLKB}
N 860 -400 990 -450 {
lab=out}
N 820 -450 950 -400 {
lab=Y}
C {sky130_fd_pr/nfet_01v8.sym} 410 -380 0 0 {name=M2
L=0.15
W=9
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 650 -380 0 1 {name=M1
L=0.15
W=9
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 840 -400 0 1 {name=M3
L=0.15
W=9
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 970 -400 0 0 {name=M4
L=0.15
W=9
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 510 -290 0 0 {name=M5
L=0.15
W=9
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 890 -310 0 0 {name=M6
L=0.15
W=9
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 750 -230 0 0 {name=M7
L=1
W=18  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 770 -180 0 0 {name=p1 lab=GND}
C {devices/ipin.sym} 550 -650 0 0 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 820 -450 0 0 {name=l1 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} 790 -400 0 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1020 -400 2 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 940 -310 2 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 570 -290 2 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 550 -380 1 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 360 -380 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 690 -380 0 1 {name=p1 lab=DB}
C {devices/isource.sym} 250 -440 0 0 {name=I0 value=400u}
C {sky130_fd_pr/nfet_01v8.sym} 270 -230 0 1 {name=M11
L=1
W=18  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 250 -470 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 250 -200 1 1 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 380 -230 1 0 {name=l1 sig_type=std_logic lab=IBIAS
}
C {sky130_fd_pr/res_high_po.sym} 630 -530 0 0 {name=R5
W=1
L=3
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 430 -530 0 1 {name=R1
W=1
L=3
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 540 -530 1 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 450 -290 0 0 {name=p1 lab=CLK}
C {devices/ipin.sym} 850 -310 0 0 {name=p1 lab=CLKB}
C {devices/opin.sym} 990 -480 0 0 {name=p1 lab=out}
