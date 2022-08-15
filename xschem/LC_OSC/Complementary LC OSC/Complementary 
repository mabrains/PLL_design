v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 500 590 500 630 {
lab=#net1}
N 790 590 790 620 {
lab=#net1}
N 500 490 500 500 {
lab=Von}
N 790 480 790 490 {
lab=Vop}
N 500 500 500 530 {
lab=Von}
N 470 560 500 560 {
lab=GND}
N 790 560 820 560 {
lab=GND}
N 350 490 500 490 {
lab=Von}
N 900 480 900 500 {
lab=Vop}
N 790 480 900 480 {
lab=Vop}
N 500 140 500 180 {
lab=Von}
N 790 140 790 180 {
lab=Vop}
N 540 110 580 110 {
lab=Vop}
N 580 110 720 180 {
lab=Vop}
N 720 180 790 180 {
lab=Vop}
N 710 110 750 110 {
lab=Von}
N 560 180 710 110 {
lab=Von}
N 500 180 560 180 {
lab=Von}
N 500 60 500 80 {
lab=VDD}
N 500 60 790 60 {
lab=VDD}
N 790 60 790 80 {
lab=VDD}
N 790 110 800 110 {
lab=VDD}
N 800 70 800 110 {
lab=VDD}
N 790 70 800 70 {
lab=VDD}
N 490 110 500 110 {
lab=VDD}
N 490 70 490 110 {
lab=VDD}
N 490 70 500 70 {
lab=VDD}
N 500 630 790 630 {
lab=#net1}
N 790 620 790 630 {
lab=#net1}
N 540 560 580 560 {
lab=Vop}
N 580 560 710 500 {
lab=Vop}
N 710 500 790 500 {
lab=Vop}
N 710 560 750 560 {
lab=Von}
N 560 500 710 560 {
lab=Von}
N 500 500 560 500 {
lab=Von}
N 500 400 500 490 {
lab=Von}
N 500 180 500 230 {
lab=Von}
N 560 400 610 400 {
lab=Von}
N 560 250 560 400 {
lab=Von}
N 560 250 610 250 {
lab=Von}
N 670 250 730 250 {
lab=Vop}
N 730 250 730 400 {
lab=Vop}
N 670 400 730 400 {
lab=Vop}
N 710 330 730 330 {
lab=Vop}
N 630 330 650 330 {
lab=#net2}
N 560 330 570 330 {
lab=Von}
N 500 230 500 400 {
lab=Von}
N 790 180 790 490 {
lab=Vop}
N 500 330 560 330 {
lab=Von}
N 730 330 790 330 {
lab=Vop}
N 350 490 350 510 {
lab=Von}
N 790 490 790 530 {
lab=Vop}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 520 560 0 1 {name=M1
L=0.5
W=1
nf=1
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 770 560 0 0 {name=M2
L=0.5
W=1
nf=1
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code_shown.sym} 320 720 0 0 {name=Tran only_toplevel=false value=".tran 0.01n 100n
.measure tran Period TRIG v(Vop) VAL=0.5 RISE=50 TARG v(Vop) VAL=0.5 RISE=51
.save all"
}
C {devices/isource.sym} 650 660 0 0 {name=I0 value=5m}
C {devices/gnd.sym} 650 690 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 380 330 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 380 360 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 380 300 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 650 60 0 0 {name=l7 lab=VDD}
C {devices/code.sym} 820 340 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_pin.sym} 470 560 0 0 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 820 560 0 1 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 500 450 0 1 {name=l6 sig_type=std_logic lab=Von}
C {devices/lab_pin.sym} 790 450 0 0 {name=l8 sig_type=std_logic lab=Vop}
C {devices/gnd.sym} 350 570 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 900 560 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/cap_mim_m3_2.sym} 350 540 0 0 {name=C6 model=cap_mim_m3_2 W=1 L=1 MF=370 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 900 530 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=370 spiceprefix=X}
C {devices/ind.sym} 600 330 1 0 {name=L3
m=1
value=4n
footprint=1206
device=inductor}
C {devices/res.sym} 680 330 1 0 {name=R5
value=3.14
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 640 400 1 0 {name=R6
value=1.257k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 640 250 1 0 {name=C4 model=cap_mim_m3_2 W=1 L=1 MF=18 spiceprefix=X}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 770 110 0 0 {name=M3
L=0.35
W=1.4
nf=1
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 520 110 0 1 {name=M4
L=0.35
W=1.4
nf=1
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
