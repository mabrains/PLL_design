v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -80 20 -80 40 {
lab=VDD}
N -80 100 -80 120 {
lab=GND}
N 170 -0 220 -0 {
lab=out}
N -80 100 20 100 {
lab=GND}
N 20 90 20 100 {
lab=GND}
N 20 0 20 30 {
lab=#net1}
N 20 0 60 -0 {
lab=#net1}
N 110 -60 110 -37.5 {
lab=VDD}
N 110 37.5 110 60 {
lab=GND}
C {core_cell.sym} 40 10 0 0 {}
C {devices/code_shown.sym} -140 -100 0 0 {name=s1 only_toplevel=false value=" 
.dc V2 0 1.8 .01
.save all"}
C {devices/vsource.sym} -80 70 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} 110 -60 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 110 60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -80 120 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -80 20 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/corner.sym} -260 -140 0 0 {name=CORNER only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
C {devices/lab_pin.sym} 220 0 2 0 {name=l6 sig_type=std_logic lab=out}
C {devices/vsource.sym} 20 60 0 0 {name=V2 value=0}
