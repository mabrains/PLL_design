v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -50 -10 -50 60 {
lab=voutn}
N 10 -10 50 -10 {
lab=VDD}
N 10 60 50 60 {
lab=VDD}
N 110 -10 110 60 {
lab=voutp}
N 60 150 110 150 {
lab=voutp}
N 110 60 110 150 {
lab=voutp}
N -50 60 -50 150 {
lab=voutn}
N -50 150 0 150 {
lab=voutn}
N -50 150 -50 240 {
lab=voutn}
N 110 150 110 240 {
lab=voutp}
N 110 300 110 340 {
lab=GND}
N -50 340 110 340 {
lab=GND}
N -50 300 -50 340 {
lab=GND}
N -50 270 -50 300 {
lab=GND}
N 110 270 110 300 {
lab=GND}
N -50 200 70 270 {
lab=voutn}
N -10 270 110 200 {
lab=voutp}
N -120 120 -50 120 {
lab=voutn}
N 110 120 180 120 {
lab=voutp}
N 30 -10 30 60 {
lab=VDD}
C {devices/ind.sym} 80 -10 3 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {devices/res.sym} 80 60 1 0 {name=R2
value=154
footprint=1206
device=resistor
m=1}
C {devices/ind.sym} -20 -10 3 0 {name=L2
m=1
value=1n
footprint=1206
device=inductor}
C {devices/res.sym} -20 60 1 0 {name=R3
value=154
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 30 150 1 0 {name=C1 model=cap_mim_m3_1 W=35 L=30 MF=1 spiceprefix=X}
C {devices/vdd.sym} 30 -10 0 0 {name=l1 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -30 270 2 0 {name=M2
L=0.15
W=40  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 270 0 0 {name=M1
L=0.15
W=40
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 30 340 0 0 {name=l3 lab=GND}
C {devices/noconn.sym} 180 120 3 0 {name=l9}
C {devices/noconn.sym} 180 120 3 0 {name=l2}
C {devices/noconn.sym} -120 120 3 0 {name=l4}
C {devices/lab_pin.sym} 180 120 2 0 {name=l8 sig_type=std_logic lab=voutp
}
C {devices/lab_pin.sym} -120 120 0 0 {name=l5 sig_type=std_logic lab=voutn

}
C {devices/vsource.sym} -290 110 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} -290 140 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -290 80 0 0 {name=l7 lab=VDD}
C {devices/code_shown.sym} -480 320 0 0 {name=tran sonly_toplevel=false value=".op
.tran 0.01ns 75ns
.save all
.measure tran tperiod TRIG par('(v(voutp)-v(voutn))') VAL=1.5 RISE=6 TARG par('(v(voutp)-v(voutn))') VAL=1.5 RISE=7
.control 
run 
plot voutp-voutn
.endc"
}
C {sky130_fd_pr/corner.sym} -470 70 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code.sym} -620 70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
