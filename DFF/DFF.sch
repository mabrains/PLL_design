v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -160 160 -130 {
lab=#net1}
N 160 -280 160 -220 {
lab=#net2}
N 100 -100 120 -100 {
lab=D}
N 100 -300 120 -300 {
lab=D}
N 100 -190 120 -190 {
lab=clk}
N 270 -160 270 -130 {
lab=#net3}
N 270 -270 270 -220 {
lab=#net4}
N 200 -190 230 -190 {
lab=#net1}
N 200 -190 200 -140 {
lab=#net1}
N 160 -140 200 -140 {
lab=#net1}
N 380 -270 380 -220 {
lab=Qbar}
N 380 -160 380 -130 {
lab=#net5}
N 730 -270 730 -130 {
lab=Q}
N 380 -70 380 -60 {
lab=GND}
N 380 -60 380 -50 {
lab=GND}
N 160 -50 380 -50 {
lab=GND}
N 160 -70 160 -50 {
lab=GND}
N 270 -70 270 -50 {
lab=GND}
N 300 -300 320 -300 {
lab=#net4}
N 300 -300 300 -100 {
lab=#net4}
N 300 -100 320 -100 {
lab=#net4}
N 290 -240 300 -240 {
lab=#net4}
N 270 -240 290 -240 {
lab=#net4}
N 320 -300 330 -300 {
lab=#net4}
N 330 -300 340 -300 {
lab=#net4}
N 320 -100 340 -100 {
lab=#net4}
N 480 -300 510 -300 {
lab=rstn}
N 550 -270 550 -250 {
lab=Qbar}
N 510 -250 550 -250 {
lab=Qbar}
N 380 -250 510 -250 {
lab=Qbar}
N 670 -300 690 -300 {
lab=Qbar}
N 670 -100 690 -100 {
lab=Qbar}
N 670 -300 670 -100 {
lab=Qbar}
N 550 -250 670 -250 {
lab=Qbar}
N 730 -70 730 -50 {
lab=GND}
N 380 -50 730 -50 {
lab=GND}
N 730 -350 730 -330 {
lab=VDD}
N 160 -350 730 -350 {
lab=VDD}
N 160 -350 160 -330 {
lab=VDD}
N 270 -350 270 -330 {
lab=VDD}
N 380 -350 380 -330 {
lab=VDD}
N 550 -350 550 -330 {
lab=VDD}
N 210 -100 230 -100 {
lab=clk}
N 210 -300 230 -300 {
lab=clk}
N 420 -50 420 -30 {
lab=GND}
N 440 -360 440 -350 {
lab=VDD}
N 900 -190 900 -170 {
lab=VDD}
N 900 -110 900 -90 {
lab=GND}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 140 -100 0 0 {name=M17
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 250 -100 0 0 {name=M1
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 360 -100 0 0 {name=M2
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 710 -100 0 0 {name=M3
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 250 -190 0 0 {name=M4
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 360 -190 0 0 {name=M5
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 140 -190 0 0 {name=M26
L=0.35
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 140 -300 0 0 {name=M6
L=0.35
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 250 -300 0 0 {name=M7
L=0.35
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 360 -300 0 0 {name=M8
L=0.35
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 530 -300 0 0 {name=M9
L=0.35
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 710 -300 0 0 {name=M10
L=0.35
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 100 -300 0 0 {name=l1 sig_type=std_logic lab=D
}
C {devices/lab_pin.sym} 100 -300 0 0 {name=l2 sig_type=std_logic lab=D
}
C {devices/lab_pin.sym} 100 -100 0 0 {name=l3 sig_type=std_logic lab=D
}
C {devices/lab_pin.sym} 210 -300 0 0 {name=l6 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 210 -100 0 0 {name=l7 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 340 -190 0 0 {name=l9 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 480 -300 0 0 {name=l8 sig_type=std_logic lab=rstn
}
C {devices/gnd.sym} 420 -30 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 440 -360 0 0 {name=l11 lab=VDD}
C {devices/lab_pin.sym} -70 -420 0 0 {name=l16 sig_type=std_logic lab=xxx}
C {devices/lab_pin.sym} 440 -250 1 0 {name=l17 sig_type=std_logic lab=Qbar
}
C {devices/lab_pin.sym} 730 -200 2 0 {name=l18 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 100 -190 0 0 {name=l4 sig_type=std_logic lab=clk
}
C {devices/vdd.sym} 900 -190 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 900 -90 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} 900 -140 0 0 {name=Vdd value=1.8}
