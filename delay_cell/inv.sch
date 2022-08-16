v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 70 -50 70 20 {
lab=Vout}
N 70 80 70 120 {
lab=GND}
N -40 50 30 50 {
lab=Vin}
N -40 -80 30 -80 {
lab=Vin}
N -40 -80 -40 50 {
lab=Vin}
N -130 -10 -40 -10 {
lab=Vin}
N 70 -10 180 -10 {
lab=Vout}
N 70 -180 70 -110 {
lab=VDD}
N -180 -10 -130 -10 {
lab=Vin}
N 270 -50 270 -20 {
lab=Vout}
N 180 -50 180 -10 {
lab=Vout}
N 180 -50 270 -50 {
lab=Vout}
N -370 -50 -370 0 {
lab=Vin}
N -370 60 -370 90 {
lab=GND}
N -450 -50 -450 -0 {
lab=VDD}
N -450 60 -450 90 {
lab=GND}
C {sky130_fd_pr/corner.sym} 510 -10 0 0 {name=CORNER only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
C {sky130_fd_pr/nfet3_01v8.sym} 50 50 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} 50 -80 0 0 {name=M2
L=0.15
W=2
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
C {devices/vsource.sym} -370 30 0 0 {name=Vin value="pulse 0 1.8 0.1n .1n .1n .4n 1n"}
C {devices/vsource.sym} -450 30 0 0 {name=Vdd value=1.8}
C {devices/gnd.sym} -370 90 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 70 120 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -450 90 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -180 -10 0 0 {name=l4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 270 -20 0 0 {name=l5 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -370 -50 0 0 {name=l6 sig_type=std_logic lab=Vin}
C {devices/vdd.sym} 70 -180 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} -450 -50 0 0 {name=l8 lab=VDD}
C {devices/code_shown.sym} 310 30 0 0 {name=s1 only_toplevel=false value=" .tran .01n 1u
.save all"

}
