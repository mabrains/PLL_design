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
N 500 500 500 530 {
lab=Von}
N 470 560 500 560 {
lab=GND}
N 790 560 820 560 {
lab=GND}
N 350 490 500 490 {
lab=Von}
N 790 490 900 490 {
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
N 650 630 650 680 {
lab=#net1}
N 650 770 660 770 {
lab=GND}
N 660 770 660 800 {
lab=GND}
N 650 800 660 800 {
lab=GND}
N 650 800 650 830 {
lab=GND}
N 650 680 650 740 {
lab=#net1}
N 340 770 610 770 {
lab=#net3}
N 300 740 360 740 {
lab=#net3}
N 360 740 360 770 {
lab=#net3}
N 290 770 300 770 {
lab=GND}
N 290 770 290 800 {
lab=GND}
N 290 800 300 800 {
lab=GND}
N 300 730 300 740 {
lab=#net3}
N 300 800 300 830 {
lab=GND}
N 790 490 790 530 {
lab=Vop}
N 1080 520 1080 610 {
lab=Vop}
N 1080 520 1140 520 {
lab=Vop}
N 1140 520 1140 610 {
lab=Vop}
N 1110 590 1110 610 {
lab=GND}
N 1110 650 1110 680 {
lab=Vctrl}
N 130 520 130 610 {
lab=Von}
N 130 520 190 520 {
lab=Von}
N 190 520 190 610 {
lab=Von}
N 160 590 160 610 {
lab=GND}
N 160 650 160 680 {
lab=Vctrl}
N 160 490 160 520 {
lab=Von}
N 160 490 350 490 {
lab=Von}
N 900 490 900 500 {
lab=Vop}
N 900 490 1110 490 {
lab=Vop}
N 1110 490 1110 520 {
lab=Vop}
N 230 240 230 310 {
lab=Vctrl}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 520 560 0 1 {name=M1
L=0.5
W=2
nf=1
mult=50
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
W=2
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code_shown.sym} 880 260 0 0 {name=Tran only_toplevel=false value=" 
.tran 0.01n 100n
.measure tran Period 
+TRIG v(Vop) VAL=0.5 RISE=150
+TARG v(Vop) VAL=0.5 RISE=151
.plot  tran v(vop)
.save all"
}
C {devices/gnd.sym} 650 830 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 380 330 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 380 360 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 380 300 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 650 60 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 470 560 0 0 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 820 560 0 1 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 500 450 0 1 {name=l6 sig_type=std_logic lab=Von}
C {devices/lab_pin.sym} 790 450 0 0 {name=l8 sig_type=std_logic lab=Vop}
C {devices/gnd.sym} 350 570 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 900 560 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/cap_mim_m3_2.sym} 350 540 0 0 {name=C6 model=cap_mim_m3_2 W=1 L=1 MF=620 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 900 530 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=620 spiceprefix=X}
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
W=2.9
nf=1
mult=50
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
W=2.9
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 630 770 0 0 {name=M5
L=0.15
W=1
nf=1
mult=80
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 320 770 0 1 {name=M6
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/isource.sym} 300 700 0 0 {name=I0 value=100u}
C {devices/vdd.sym} 300 670 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 300 830 0 0 {name=l12 lab=GND}
C {sky130_fd_pr/corner.sym} 900 70 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1110 620 3 0 {name=M7
L=1
W=2
nf=1
mult=14
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1110 590 1 0 {name=l13 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1110 680 3 0 {name=l14 sig_type=std_logic lab=Vctrl}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 160 630 3 0 {name=M8
L=1
W=2
nf=1
mult=14
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 160 590 1 0 {name=l15 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 160 680 3 0 {name=l16 sig_type=std_logic lab=Vctrl}
C {devices/vsource.sym} 230 330 0 0 {name=Vctrl value=1}
C {devices/gnd.sym} 230 360 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 230 240 0 0 {name=l18 sig_type=std_logic lab=Vctrl}
