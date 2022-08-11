v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 -240 90 -220 {
lab=VDD}
N 90 -160 90 -30 {
lab=out}
N 90 30 90 180 {
lab=GND}
N -110 -0 50 0 {
lab=in}
N -110 190 90 190 {
lab=GND}
N 90 180 90 190 {
lab=GND}
N 90 -150 230 -150 {
lab=out}
N -170 0 -110 0 {
lab=in}
N -110 60 -110 100 {
lab=in}
N -110 160 -110 190 {
lab=GND}
N 650 50 650 80 {
lab=GND}
N 650 -50 650 -10 {
lab=VDD}
N -110 0 -110 60 {
lab=in}
C {sky130_fd_pr/nfet3_01v8.sym} 70 0 0 0 {name=M1
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
C {devices/gnd.sym} 90 190 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 90 -240 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} -170 0 0 0 {name=l3 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 230 -150 0 1 {name=l4 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 380 30 0 0 {name=s1 only_toplevel=false value=" 
.ac 0 10e6
.probe alli
.save all"}
C {sky130_fd_pr/corner.sym} 340 -150 0 0 {name=CORNER only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
C {devices/vsource.sym} -110 130 0 0 {name=Vgs value="1.8 AC 1"}
C {devices/vsource.sym} 650 20 0 0 {name=Vds value= 1.8}
C {devices/vdd.sym} 650 -50 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 650 80 0 0 {name=l6 lab=GND}
C {devices/res.sym} 90 -190 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
