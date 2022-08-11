v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {type=subcircuit
format="@name @pinlist @VDD @GND @symname"
template="@name=delay_cell1 VDD=vdd GND=gnd"
extra="VDD GND"}
E {}
N -20 30 40 30 {
lab=#net1}
N -130 -40 40 -40 {
lab=#net2}
N 30 -130 30 -100 {
lab=GND}
N -20 90 -20 130 {
lab=GND}
N -130 20 -130 40 {
lab=GND}
N -400 20 -400 50 {
lab=GND}
N -400 -70 -400 -40 {
lab=VDD}
N 110 170 110 190 {
lab=GND}
N 110 60 110 110 {
lab=#net3}
N 110 -190 110 -70 {
lab=#net4}
N 30 -190 110 -190 {
lab=#net4}
N 170 30 330 30 {
lab=yn}
N 170 -40 330 -40 {
lab=yp}
C {devices/lab_wire.sym} 330 -40 0 1 {name=p1 lab=yp}
C {devices/lab_wire.sym} 930 320 0 1 {name=p2 lab=xn}
C {devices/lab_wire.sym} 330 30 0 1 {name=p4 lab=yn}
C {devices/vsource.sym} -130 -10 0 0 {name=V1 value="pulse 0 1.8 0 1n 1n 10n 20n"}
C {devices/vsource.sym} -20 60 0 0 {name=V2 value="pulse 0 1.8 0 1n 1n 10n 20n"}
C {devices/vsource.sym} -400 -10 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 110 140 0 0 {name=V4 value=1.8}
C {devices/vsource.sym} 30 -160 0 0 {name=V5 value=1.8}
C {devices/vdd.sym} -400 -70 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -400 50 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -130 40 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -20 130 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 110 190 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 30 -100 0 0 {name=l6 lab=GND}
C {delay_cell_m.sym} 20 0 0 0 {}
