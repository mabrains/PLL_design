v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -200 120 -170 {
lab=VDD}
N 120 -170 120 -140 {
lab=VDD}
N 120 -110 120 -90 {
lab=#net1}
N 120 -60 140 -60 {
lab=VDD}
N 120 60 140 60 {
lab=GND}
N 120 90 120 130 {
lab=#net2}
N 120 -30 120 30 {
lab=#net3}
N 120 160 120 190 {
lab=GND}
N -10 160 80 160 {
lab=D}
N -10 -140 -10 160 {
lab=D}
N -10 -140 80 -140 {
lab=D}
N 60 -60 80 -60 {
lab=CLKB}
N 60 60 80 60 {
lab=CLK}
N 120 190 120 210 {
lab=GND}
N 400 -170 400 -140 {
lab=VDD}
N 400 -110 400 -90 {
lab=#net4}
N 400 -60 420 -60 {
lab=VDD}
N 400 60 420 60 {
lab=GND}
N 400 90 400 130 {
lab=#net5}
N 400 -30 400 30 {
lab=Q}
N 400 160 400 190 {
lab=GND}
N 340 -60 360 -60 {
lab=CLK}
N 340 60 360 60 {
lab=CLKB}
N 120 0 280 0 {
lab=#net3}
N 280 -140 280 0 {
lab=#net3}
N 280 -140 360 -140 {
lab=#net3}
N 280 0 280 160 {
lab=#net3}
N 280 160 360 160 {
lab=#net3}
N 400 0 450 0 {
lab=Q}
C {sky130_fd_pr/pfet_01v8.sym} 100 -140 0 0 {name=M11
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 100 -60 0 0 {name=M1
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 100 60 0 0 {name=M2
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 100 160 0 0 {name=M3
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 120 -200 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -10 0 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 60 60 0 0 {name=p1 lab=CLK}
C {devices/ipin.sym} 120 210 0 0 {name=p1 lab=GND}
C {devices/lab_pin.sym} 140 60 2 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 140 -60 2 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 60 -60 0 0 {name=p1 lab=CLKB}
C {sky130_fd_pr/pfet_01v8.sym} 380 -140 0 0 {name=M4
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 380 -60 0 0 {name=M5
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 60 0 0 {name=M6
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 160 0 0 {name=M7
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 420 60 2 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 420 -60 2 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 450 0 0 0 {name=p2 lab=Q}
C {devices/lab_pin.sym} 340 -60 2 1 {name=l2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 340 60 2 1 {name=l2 sig_type=std_logic lab=CLKB}
C {devices/lab_pin.sym} 400 190 2 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 400 -170 2 1 {name=l2 sig_type=std_logic lab=VDD}
