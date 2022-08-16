v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 100 -80 100 -70 {
lab=VDD}
N 280 -310 280 -290 {
lab=VDD}
N 280 -310 460 -310 {
lab=VDD}
N 460 -320 460 -310 {
lab=VDD}
N 460 -160 460 -80 {
lab=#net1}
N 370 -190 420 -190 {
lab=Vin}
N 180 -120 180 -100 {
lab=#net2}
N 280 -230 280 -80 {
lab=Vin}
N 280 -80 290 -80 {
lab=Vin}
N 290 -20 290 10 {
lab=GND}
N 290 10 340 10 {
lab=GND}
N 340 10 370 10 {
lab=GND}
N 370 10 460 10 {
lab=GND}
N 460 -20 460 10 {
lab=GND}
N 280 -190 370 -190 {
lab=Vin}
N 180 -190 280 -190 {
lab=Vin}
N 180 -190 180 -180 {
lab=Vin}
N 180 -40 180 10 {
lab=Vout}
N 590 -230 590 70 {
lab=Vout}
N 460 -230 590 -230 {
lab=Vout}
N 460 -250 460 -230 {
lab=Vout}
N 460 -230 460 -220 {
lab=Vout}
N 180 70 590 70 {
lab=Vout}
N 180 40 180 70 {
lab=Vout}
N 180 10 180 40 {
lab=Vout}
N 230 -190 230 -160 {
lab=Vin}
N 230 -100 230 -70 {
lab=#net1}
N 230 -10 230 70 {
lab=Vout}
N 230 -90 250 -90 {
lab=#net1}
N 250 -90 250 50 {
lab=#net1}
N 250 50 520 50 {
lab=#net1}
N 520 -110 520 50 {
lab=#net1}
N 460 -110 520 -110 {
lab=#net1}
N 460 -190 490 -190 {
lab=GND}
N 490 -190 490 10 {
lab=GND}
N 460 10 490 10 {
lab=GND}
N 400 -120 400 -80 {
lab=#net1}
N 400 -120 460 -120 {
lab=#net1}
N 400 -20 400 10 {
lab=GND}
C {devices/vsource.sym} 100 -40 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 100 -10 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 100 -80 0 0 {name=l6 lab=VDD}
C {devices/code_shown.sym} 60 140 0 0 {name=SPICE only_toplevel=false value=".tran 1n 2u
.nodeset v(Vout)=0
.op
.save all"}
C {sky130_fd_pr/corner.sym} -60 -40 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_fd_pr/nfet_01v8.sym} 440 -190 0 0 {name=M2
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
C {devices/res.sym} 460 -50 2 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 290 -50 2 0 {name=R3
value=200k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 280 -260 2 0 {name=R4
value=200k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 460 -320 0 0 {name=l3 lab=VDD}
C {devices/ind.sym} 180 -150 2 0 {name=L2
m=1
value=1.98u
footprint=1206
device=inductor}
C {devices/res.sym} 180 -70 2 0 {name=R5
value=60
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 340 10 0 0 {name=l4 lab=GND}
C {devices/res.sym} 460 -280 2 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 230 -130 0 0 {name=C1
m=1
value=16p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 230 -40 0 0 {name=C2
m=1
value=16p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 590 -230 2 0 {name=l1 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 390 -190 1 0 {name=l2 sig_type=std_logic lab=Vin}
C {devices/capa.sym} 400 -50 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
