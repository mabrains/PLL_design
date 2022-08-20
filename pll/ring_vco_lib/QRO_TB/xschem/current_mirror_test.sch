v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 380 -60 430 -60 {
lab=vctrl}
N 470 -170 470 -90 {
lab=#net1}
N -80 -200 -80 -120 {
lab=#net2}
N 470 -270 470 -230 {
lab=VDD}
N 510 -200 530 -200 {
lab=#net1}
N 530 -200 530 -140 {
lab=#net1}
N 470 -140 530 -140 {
lab=#net1}
N 530 -200 650 -200 {
lab=#net1}
N 690 -270 690 -230 {
lab=VDD}
N 470 -270 690 -270 {
lab=VDD}
N 690 -170 690 -110 {
lab=ip}
N -80 -150 -20 -150 {
lab=#net2}
N -40 -90 -20 -90 {
lab=#net2}
N -20 -150 -20 -90 {
lab=#net2}
N -80 -60 -80 -20 {
lab=GND}
N -20 -90 130 -90 {
lab=#net2}
N 170 -60 170 -30 {
lab=GND}
N 170 -30 170 -20 {
lab=GND}
N -80 -20 170 -20 {
lab=GND}
N 60 -20 60 20 {
lab=GND}
N 590 -290 590 -270 {
lab=VDD}
N 170 -230 170 -120 {
lab=in}
N -490 50 -490 100 {
lab=VDD}
N -490 160 -490 200 {
lab=GND}
N -430 190 -430 200 {
lab=GND}
N -490 200 -430 200 {
lab=GND}
N -430 70 -430 130 {
lab=vctrl}
N 240 -170 240 -130 {
lab=VDD}
N 170 -230 240 -230 {
lab=in}
N 690 -50 690 -10 {
lab=GND}
N 470 -30 470 10 {
lab=GND}
N -80 -280 -80 -260 {
lab=VDD}
N -170 -230 -120 -230 {
lab=vctrl}
C {sky130_fd_pr/pfet3_01v8.sym} 490 -200 0 1 {name=M3
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 670 -200 0 0 {name=M4
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -60 -90 0 1 {name=M5
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 150 -90 0 0 {name=M6
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 60 20 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 590 -290 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} -170 -230 0 0 {name=l3 sig_type=std_logic lab=vctrl
}
C {devices/lab_pin.sym} 690 -110 0 0 {name=l4 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 170 -230 0 0 {name=l5 sig_type=std_logic lab=in}
C {devices/code_shown.sym} -700 -100 0 0 {name=s1 only_toplevel=false value="
.dc vctrl 0 1.8 .01
.save @m.xm5.msky130_fd_pr__nfet_01v8[gm]
.probe alli
.save all"}
C {devices/vsource.sym} -490 130 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -490 50 0 0 {name=l22 lab=VDD}
C {devices/gnd.sym} -490 200 0 0 {name=l24 lab=GND}
C {devices/vsource.sym} -430 160 0 0 {name=vctrl value=0}
C {devices/lab_pin.sym} -430 70 1 0 {name=l29 sig_type=std_logic lab=vctrl}
C {sky130_fd_pr/corner.sym} -680 40 0 0 {name=CORNER only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
C {devices/res.sym} 690 -80 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 240 -200 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 690 -10 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} -60 -90 0 1 {name=M1
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 450 -60 0 0 {name=M2
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 470 10 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} -100 -230 0 0 {name=M7
L=0.15
W=6
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 670 -200 0 0 {name=M8
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} -80 -280 0 0 {name=l9 lab=VDD}
C {devices/lab_pin.sym} 380 -60 0 0 {name=l10 sig_type=std_logic lab=vctrl
}
C {devices/vdd.sym} 240 -130 2 0 {name=l6 lab=VDD}
