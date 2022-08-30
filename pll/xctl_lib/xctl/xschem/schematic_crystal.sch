v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -100 0 -80 0 {
lab=#net1}
N -20 -0 -10 -0 {
lab=#net2}
N -140 -120 -110 -120 {
lab=Vin}
N -160 -160 -140 -160 {
lab=Vin}
N -70 -180 -70 -150 {
lab=Vout1}
N -70 -250 -70 -240 {
lab=VDD}
N -70 -270 -70 -250 {
lab=VDD}
N -70 -120 -60 -120 {
lab=GND}
N -60 -120 -60 -90 {
lab=GND}
N -70 -90 -60 -90 {
lab=GND}
N -180 -160 -160 -160 {
lab=Vin}
N -180 -160 -180 -0 {
lab=Vin}
N -180 0 -180 120 {
lab=Vin}
N 80 0 80 120 {
lab=#net3}
N 80 210 80 230 {
lab=GND}
N -180 120 -180 150 {
lab=Vin}
N -180 210 -180 230 {
lab=GND}
N 530 10 530 20 {
lab=VDD}
N 70 120 80 120 {
lab=#net3}
N -80 -170 -70 -170 {
lab=Vout1}
N 80 -40 80 -0 {
lab=#net3}
N 220 -200 250 -200 {
lab=Vout1}
N 220 -200 220 -110 {
lab=Vout1}
N 220 -110 250 -110 {
lab=Vout1}
N 290 -170 290 -140 {
lab=Vout2}
N 290 -150 340 -150 {
lab=Vout2}
N 290 -240 290 -230 {
lab=VDD}
N 290 -260 290 -240 {
lab=VDD}
N 290 -200 300 -200 {
lab=VDD}
N 300 -250 300 -200 {
lab=VDD}
N 290 -250 300 -250 {
lab=VDD}
N 290 -110 300 -110 {
lab=GND}
N 300 -110 300 -80 {
lab=GND}
N 290 -80 300 -80 {
lab=GND}
N 280 -160 290 -160 {
lab=Vout2}
N -20 120 70 120 {
lab=#net3}
N -70 -160 -30 -160 {
lab=Vout1}
N -180 120 -80 120 {
lab=Vin}
N -180 0 -160 -0 {
lab=Vin}
N 50 0 80 -0 {
lab=#net3}
N 460 -200 490 -200 {
lab=Vout2}
N 460 -110 490 -110 {
lab=Vout2}
N 530 -170 530 -140 {
lab=Vout3}
N 530 -150 580 -150 {
lab=Vout3}
N 530 -240 530 -230 {
lab=VDD}
N 530 -260 530 -240 {
lab=VDD}
N 530 -200 540 -200 {
lab=VDD}
N 540 -250 540 -200 {
lab=VDD}
N 530 -250 540 -250 {
lab=VDD}
N 530 -110 540 -110 {
lab=GND}
N 540 -110 540 -80 {
lab=GND}
N 530 -80 540 -80 {
lab=GND}
N -140 -170 -140 -160 {
lab=Vin}
N -140 -160 -140 -120 {
lab=Vin}
N -30 -160 80 -160 {
lab=Vout1}
N 340 -150 460 -150 {
lab=Vout2}
N 520 -150 530 -150 {
lab=Vout3}
N 460 -200 460 -110 {
lab=Vout2}
N 80 -160 220 -160 {
lab=Vout1}
N 80 120 80 150 {
lab=#net3}
N 80 -160 80 -90 {
lab=Vout1}
C {devices/ind.sym} -50 0 1 0 {name=L1
m=1
value=12.904m
footprint=1206
device=inductor}
C {sky130_fd_pr/nfet_01v8.sym} -90 -120 0 0 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} -70 -270 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -70 -90 0 0 {name=l2 lab=GND}
C {devices/capa.sym} -180 180 2 0 {name=C3
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 80 180 2 0 {name=C4
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -180 230 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 80 230 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 530 50 0 0 {name=VDD value= 1.8}
C {devices/gnd.sym} 530 80 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 530 10 0 0 {name=l6 lab=VDD}
C {devices/code_shown.sym} 490 230 0 0 {name=SPICE only_toplevel=false value=".tran 1n 50u
.save all"}
C {sky130_fd_pr/corner.sym} 370 50 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} 80 -110 2 0 {name=l7 sig_type=std_logic lab=Vout1}
C {devices/lab_pin.sym} -180 -110 0 0 {name=l8 sig_type=std_logic lab=Vin}
C {devices/res.sym} -110 -170 1 0 {name=R2
value=2.2MEG
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 270 -110 0 0 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 270 -200 0 0 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 290 -260 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} 290 -80 0 0 {name=l10 lab=GND}
C {devices/res.sym} 250 -160 1 0 {name=R3
value=1MEG
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 300 -150 2 0 {name=l11 sig_type=std_logic lab=Vout2}
C {devices/capa.sym} -130 0 1 0 {name=C1
m=1
value=19.644f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 20 0 1 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -50 120 1 0 {name=C2
m=1
value=4.623p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8.sym} 510 -110 0 0 {name=M5
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 510 -200 0 0 {name=M6
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
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 530 -260 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 530 -80 0 0 {name=l13 lab=GND}
C {devices/res.sym} 490 -150 1 0 {name=R5
value=1MEG
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 580 -150 2 0 {name=l14 sig_type=std_logic lab=Vout3}
C {devices/isource.sym} -70 -210 0 0 {name=I1 value=600u}
C {devices/res.sym} 80 -65 2 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
