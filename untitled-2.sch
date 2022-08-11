v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -200 10 -200 60 {
lab=VDD}
N -200 120 -200 150 {
lab=GND}
N -40 50 50 50 {
lab=#net1}
N -40 50 -40 100 {
lab=#net1}
N -90 -30 50 -30 {
lab=#net2}
N -120 160 -40 160 {
lab=GND}
N -120 130 -120 160 {
lab=GND}
N -200 130 -120 130 {
lab=GND}
N -90 30 -90 160 {
lab=GND}
N 60 -160 110 -160 {
lab=#net3}
N 110 -160 110 -70 {
lab=#net3}
N 110 90 110 150 {
lab=#net4}
N 30 210 110 210 {
lab=GND}
N 30 160 30 210 {
lab=GND}
N -40 160 30 160 {
lab=GND}
N -140 -100 60 -100 {
lab=GND}
N -140 -100 -140 130 {
lab=GND}
N 160 -30 210 -30 {
lab=out}
N 160 50 210 50 {
lab=out_}
N 210 50 220 50 {
lab=out_}
N 210 -30 220 -30 {
lab=out}
N 220 50 290 50 {
lab=out_}
N 220 -30 290 -30 {
lab=out}
C {Delay_cell_M.sym} 30 10 0 0 {type=subcircuit
format="@name @pinlist @symname"
template="name=Y1"}
C {devices/vsource.sym} -40 130 0 0 {name=V1 value="pulse 0 1.8 0 1n 10n 20n"}
C {devices/vdd.sym} -200 10 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -200 150 0 0 {name=l2 lab=GND}
C {devices/code.sym} -390 50 0 0 {name=s1 only_toplevel=false value="

.tran 1p 10n
.probe I(x1)
.save all"}
C {sky130_fd_pr/corner.sym} -380 -170 0 0 {name=CORNER only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
C {devices/vsource.sym} -90 0 0 0 {name=V2 value="pulse 0 1.8 0 1n 10n 20n"}
C {devices/vsource.sym} -200 90 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 110 180 0 0 {name=V4 value=1.8}
C {devices/vsource.sym} 60 -130 0 0 {name=V5 value=1.8}
C {devices/lab_pin.sym} 290 -30 0 1 {name=l3 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 290 50 0 1 {name=l4 sig_type=std_logic lab=out_}
