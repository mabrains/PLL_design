v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 15 85 15 125 {
lab=GND}
N -95 45 -35 45 {
lab=#net1}
N 15 -50 15 5 {
lab=VDD}
N -220 25 -220 45 {
lab=VDD}
N -220 125 15 125 {
lab=GND}
N -220 105 -220 125 {
lab=GND}
N -95 105 -95 125 {
lab=GND}
N 75 45 140 45 {
lab=out}
N -40 45 -35 45 {
lab=#net1}
N -35 45 -30 45 {
lab=#net1}
N -35 45 -25 45 {
lab=#net1}
N 15 70 15 90 {
lab=GND}
N 70 45 80 45 {
lab=out}
N 15 -5 15 15 {
lab=VDD}
C {devices/code_shown.sym} -210 -100 0 0 {name=s1 only_toplevel=false value=" 
.dc V1 0 1.8 .01
.save all"}
C {sky130_fd_pr/corner.sym} -330 -140 0 0 {name=CORNER only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
C {FF_cell.sym} -40 50 0 0 {}
C {devices/vsource.sym} -95 75 0 0 {name=V1 value=0}
C {devices/vsource.sym} -220 75 0 0 {name=V2 value=1.8}
C {devices/vdd.sym} -220 25 0 0 {name=l1 lab=VDD}
C {devices/vdd.sym} 15 -50 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -220 125 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 140 45 0 1 {name=l4 sig_type=std_logic lab=out}
