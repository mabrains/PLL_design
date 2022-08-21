v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 710 850 710 890 {
lab=GND}
N 1000 850 1000 880 {
lab=GND}
N 710 750 710 760 {
lab=Von}
N 1000 740 1000 750 {
lab=Vop}
N 710 760 710 790 {
lab=Von}
N 680 820 710 820 {
lab=GND}
N 1000 820 1030 820 {
lab=GND}
N 560 750 710 750 {
lab=Von}
N 1110 740 1110 760 {
lab=Vop}
N 1000 740 1110 740 {
lab=Vop}
N 710 400 710 440 {
lab=Von}
N 1000 400 1000 440 {
lab=Vop}
N 750 370 790 370 {
lab=Vop}
N 790 370 930 440 {
lab=Vop}
N 930 440 1000 440 {
lab=Vop}
N 920 370 960 370 {
lab=Von}
N 770 440 920 370 {
lab=Von}
N 710 440 770 440 {
lab=Von}
N 710 320 710 340 {
lab=Vp}
N 710 320 1000 320 {
lab=Vp}
N 1000 320 1000 340 {
lab=Vp}
N 1000 370 1010 370 {
lab=Vp}
N 1010 330 1010 370 {
lab=Vp}
N 1000 330 1010 330 {
lab=Vp}
N 700 370 710 370 {
lab=Vp}
N 700 330 700 370 {
lab=Vp}
N 700 330 710 330 {
lab=Vp}
N 710 890 1000 890 {
lab=GND}
N 1000 880 1000 890 {
lab=GND}
N 750 820 790 820 {
lab=Vop}
N 790 820 920 760 {
lab=Vop}
N 920 760 1000 760 {
lab=Vop}
N 920 820 960 820 {
lab=Von}
N 770 760 920 820 {
lab=Von}
N 710 760 770 760 {
lab=Von}
N 710 660 710 750 {
lab=Von}
N 710 440 710 490 {
lab=Von}
N 770 660 820 660 {
lab=Von}
N 770 510 770 660 {
lab=Von}
N 770 510 820 510 {
lab=Von}
N 880 510 940 510 {
lab=Vop}
N 940 510 940 660 {
lab=Vop}
N 880 660 940 660 {
lab=Vop}
N 920 590 940 590 {
lab=Vop}
N 840 590 860 590 {
lab=#net1}
N 770 590 780 590 {
lab=Von}
N 710 490 710 660 {
lab=Von}
N 1000 440 1000 750 {
lab=Vop}
N 710 590 770 590 {
lab=Von}
N 940 590 1000 590 {
lab=Vop}
N 560 750 560 770 {
lab=Von}
N 1000 750 1000 790 {
lab=Vop}
N 860 290 860 320 {
lab=Vp}
N 860 260 870 260 {
lab=VDD}
N 870 230 870 260 {
lab=VDD}
N 860 230 870 230 {
lab=VDD}
N 630 260 820 260 {
lab=#net2}
N 580 260 630 260 {
lab=#net2}
N 530 260 540 260 {
lab=VDD}
N 530 230 530 260 {
lab=VDD}
N 530 230 540 230 {
lab=VDD}
N 540 290 540 310 {
lab=#net2}
N 540 310 590 310 {
lab=#net2}
N 590 260 590 310 {
lab=#net2}
N 540 310 540 330 {
lab=#net2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 730 820 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 980 820 0 0 {name=M2
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
C {devices/code_shown.sym} 1160 550 0 0 {name=Tran only_toplevel=false value=".op
.tran 0.01n 100n
.measure tran Period 
+TRIG v(Vop) VAL=0.5 RISE=50 
+TARG v(Vop) VAL=0.5 RISE=51
.save all"
}
C {devices/gnd.sym} 860 890 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 590 590 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 590 620 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 590 560 0 0 {name=l4 lab=VDD}
C {devices/code.sym} 1200 360 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_pin.sym} 680 820 0 0 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1030 820 0 1 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 710 710 0 1 {name=l6 sig_type=std_logic lab=Von}
C {devices/lab_pin.sym} 1000 710 0 0 {name=l8 sig_type=std_logic lab=Vop}
C {devices/gnd.sym} 560 830 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1110 820 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/cap_mim_m3_2.sym} 560 800 0 0 {name=C6 model=cap_mim_m3_2 W=1 L=1 MF=370 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1110 790 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=370 spiceprefix=X}
C {devices/ind.sym} 810 590 1 0 {name=L3
m=1
value=4n
footprint=1206
device=inductor}
C {devices/res.sym} 890 590 1 0 {name=R5
value=3.14
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 850 660 1 0 {name=R6
value=1.257k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 850 510 1 0 {name=C4 model=cap_mim_m3_2 W=1 L=1 MF=18 spiceprefix=X}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 980 370 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 730 370 0 1 {name=M4
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
C {devices/isource.sym} 540 360 0 0 {name=I0 value=100u}
C {devices/gnd.sym} 540 390 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 840 260 0 0 {name=M7
L=0.35
W=1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 560 260 0 1 {name=M5
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/vdd.sym} 860 230 0 0 {name=l11 lab=VDD}
C {devices/vdd.sym} 540 230 0 0 {name=l12 lab=VDD}
C {devices/lab_pin.sym} 860 310 0 0 {name=l13 sig_type=std_logic lab=Vp}
