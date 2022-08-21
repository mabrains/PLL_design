v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -80 960 -80 1000 {
lab=#net1}
N 30 1000 190 1000 {
lab=#net1}
N 190 960 190 1000 {
lab=#net1}
N -80 860 -80 870 {
lab=Von}
N 190 860 190 870 {
lab=Vop}
N 190 870 190 900 {
lab=Vop}
N -80 870 -80 900 {
lab=Von}
N 190 590 190 620 {
lab=VDD}
N 190 740 190 760 {
lab=Vop}
N 110 590 110 650 {
lab=VDD}
N 110 710 110 760 {
lab=Vop}
N -70 540 160 540 {
lab=VDD}
N -110 930 -80 930 {
lab=GND}
N 190 930 220 930 {
lab=GND}
N -290 870 -290 890 {
lab=Von}
N -230 860 -80 860 {
lab=Von}
N 370 860 370 880 {
lab=Vop}
N 190 860 300 860 {
lab=Vop}
N 270 590 270 640 {
lab=VDD}
N 270 700 270 760 {
lab=Vop}
N 110 760 270 760 {
lab=Vop}
N 110 590 270 590 {
lab=VDD}
N -80 770 -80 840 {
lab=Von}
N -80 840 -80 850 {
lab=Von}
N -80 850 -80 860 {
lab=Von}
N -80 1000 30 1000 {
lab=#net1}
N -80 600 -80 630 {
lab=VDD}
N -80 750 -80 770 {
lab=Von}
N -160 600 -160 660 {
lab=VDD}
N -160 720 -160 770 {
lab=Von}
N 0 600 0 650 {
lab=VDD}
N 0 710 0 770 {
lab=Von}
N -160 770 0 770 {
lab=Von}
N -160 600 0 600 {
lab=VDD}
N 190 760 190 860 {
lab=Vop}
N -80 540 -70 540 {
lab=VDD}
N -80 540 -80 600 {
lab=VDD}
N 160 540 190 540 {
lab=VDD}
N 190 540 190 590 {
lab=VDD}
N -40 930 10 930 {
lab=Vop}
N 10 930 110 860 {
lab=Vop}
N 110 860 190 860 {
lab=Vop}
N 100 930 150 930 {
lab=Von}
N 10 860 100 930 {
lab=Von}
N -80 860 10 860 {
lab=Von}
N 300 860 370 860 {
lab=Vop}
N -290 860 -290 870 {
lab=Von}
N -290 860 -230 860 {
lab=Von}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -60 930 0 1 {name=M1
L=0.15
W=1
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 170 930 0 0 {name=M2
L=0.15
W=1
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code_shown.sym} 420 820 0 0 {name=Tran only_toplevel=false value=".tran 0.01n 100n
.save all"}
C {devices/isource.sym} 60 1030 0 0 {name=I0 value=5m}
C {devices/gnd.sym} 60 1060 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -310 750 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -310 780 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -310 720 0 0 {name=l4 lab=VDD}
C {devices/ind.sym} 190 650 0 0 {name=L2
m=1
value=4n
footprint=1206
device=inductor}
C {devices/res.sym} 190 710 0 0 {name=R3
value=3.14
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 110 680 0 0 {name=R4
value=1.257k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 50 540 0 0 {name=l7 lab=VDD}
C {devices/code.sym} 410 640 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_pin.sym} -110 930 0 0 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 220 930 0 1 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -80 820 0 1 {name=l6 sig_type=std_logic lab=Von}
C {devices/lab_pin.sym} 190 820 0 0 {name=l8 sig_type=std_logic lab=Vop}
C {devices/gnd.sym} -290 950 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 370 940 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/cap_mim_m3_2.sym} -290 920 0 0 {name=C6 model=cap_mim_m3_2 W=1 L=1 MF=370 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 370 910 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=370 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 270 670 0 0 {name=C3 model=cap_mim_m3_2 W=1 L=1 MF=18 spiceprefix=X}
C {devices/ind.sym} -80 660 0 0 {name=L1
m=1
value=4n
footprint=1206
device=inductor}
C {devices/res.sym} -80 720 0 0 {name=R1
value=3.14
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -160 690 0 0 {name=R2
value=1.257k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 0 680 0 0 {name=C2 model=cap_mim_m3_2 W=1 L=1 MF=18 spiceprefix=X}
