v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 130 140 130 {
lab=Von}
N 70 70 110 130 {
lab=Von}
N 20 70 70 70 {
lab=Von}
N 60 130 90 130 {
lab=Vop}
N 90 130 120 70 {
lab=Vop}
N 120 70 180 70 {
lab=Vop}
N 20 160 20 200 {
lab=#net1}
N 20 200 180 200 {
lab=#net1}
N 180 160 180 200 {
lab=#net1}
N 20 -40 20 70 {
lab=Von}
N 180 -40 180 70 {
lab=Vop}
N -80 -210 -80 -180 {
lab=VDD}
N -80 -210 20 -210 {
lab=VDD}
N -80 -40 20 -40 {
lab=Von}
N -80 -60 -80 -40 {
lab=Von}
N 20 -210 20 -150 {
lab=VDD}
N 20 -90 20 -40 {
lab=Von}
N 180 70 180 100 {
lab=Vop}
N 20 70 20 100 {
lab=Von}
N 20 -210 80 -210 {
lab=VDD}
N 80 -210 80 -200 {
lab=VDD}
N 80 -140 80 -40 {
lab=Von}
N 20 -40 80 -40 {
lab=Von}
N 150 -210 150 -180 {
lab=VDD}
N 150 -210 250 -210 {
lab=VDD}
N 180 -40 250 -40 {
lab=Vop}
N 150 -60 150 -40 {
lab=Vop}
N 250 -210 250 -150 {
lab=VDD}
N 250 -90 250 -40 {
lab=Vop}
N 250 -210 310 -210 {
lab=VDD}
N 310 -210 310 -200 {
lab=VDD}
N 310 -140 310 -40 {
lab=Vop}
N 250 -40 310 -40 {
lab=Vop}
N 150 -40 180 -40 {
lab=Vop}
N 20 -250 20 -210 {
lab=VDD}
N 20 -250 250 -250 {
lab=VDD}
N 250 -250 250 -210 {
lab=VDD}
N -10 130 20 130 {
lab=GND}
N 180 130 210 130 {
lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 40 130 0 1 {name=M1
L=0.15
W=1
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 160 130 0 0 {name=M2
L=0.15
W=1
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code_shown.sym} 390 150 0 0 {name=OP only_toplevel=false value=".op
.save all"}
C {devices/ind.sym} -80 -150 0 0 {name=L1
m=1
value=4n
footprint=1206
device=inductor}
C {devices/isource.sym} 100 230 0 0 {name=I0 value=5m}
C {devices/gnd.sym} 100 260 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -210 30 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -210 60 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -210 0 0 0 {name=l4 lab=VDD}
C {devices/res.sym} -80 -90 0 0 {name=R1
value=3.14
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 20 -120 0 0 {name=R2
value=1.257k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 80 -170 0 0 {name=C3
m=1
value=250f
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 150 -150 0 0 {name=L2
m=1
value=4n
footprint=1206
device=inductor}
C {devices/res.sym} 150 -90 0 0 {name=R3
value=3.14
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 250 -120 0 0 {name=R4
value=1.257k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 310 -170 0 0 {name=C4
m=1
value=250f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 140 -250 0 0 {name=l7 lab=VDD}
C {devices/code.sym} 360 -30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_pin.sym} -10 130 0 0 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 210 130 0 1 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 20 30 0 1 {name=l6 sig_type=std_logic lab=Von}
C {devices/lab_pin.sym} 180 30 0 0 {name=l8 sig_type=std_logic lab=Vop}
