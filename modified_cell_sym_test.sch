v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -370 40 -370 90 {
lab=VDD}
N -370 150 -370 180 {
lab=GND}
N 110 90 110 140 {
lab=#net1}
N 110 200 110 230 {
lab=GND}
N 550 -120 550 -70 {
lab=#net2}
N 550 -10 550 20 {
lab=GND}
N 110 -120 550 -120 {
lab=#net2}
N 110 -120 110 -90 {
lab=#net2}
N -40 20 -40 70 {
lab=#net3}
N -40 130 -40 160 {
lab=GND}
N -160 -20 -40 -20 {
lab=out_}
N 260 -20 330 -20 {
lab=out}
N 330 -20 420 -20 {
lab=out}
N 310 20 310 70 {
lab=#net4}
N 310 130 310 160 {
lab=GND}
N -230 -130 -150 -130 {
lab=out_}
N 260 20 310 20 {
lab=#net4}
N -230 -130 -230 -20 {
lab=out_}
N -230 -20 -160 -20 {
lab=out_}
C {Delay_cell_2.sym} 110 0 0 0 {name=X1}
C {devices/vsource.sym} -370 120 0 0 {name=V2 value=1.8}
C {devices/vdd.sym} -370 40 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -370 180 0 0 {name=l4 lab=GND}
C {devices/code.sym} -560 80 0 0 {name=s2 only_toplevel=false value="

.tran 1n 10u

.save all"}
C {sky130_fd_pr/corner.sym} -550 -140 0 0 {name=CORNER1 only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
}
C {devices/vsource.sym} 110 170 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 110 230 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 550 -40 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} 550 20 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -40 100 0 0 {name=V4 value="pulse 1.8 0 0 1n 1n 10n 20n"}
C {devices/gnd.sym} -40 160 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 420 -20 0 1 {name=l7 sig_type=std_logic lab=out}
C {devices/gnd.sym} 310 160 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -150 -130 2 0 {name=l8 sig_type=std_logic lab=out_}
C {devices/vsource.sym} 310 100 0 0 {name=V5 value="pulse 0 1.8 0 1n 1n 10n 20n"}
