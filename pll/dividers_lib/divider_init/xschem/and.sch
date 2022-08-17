v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 260 -130 290 -130 {
lab=#net1}
N 410 -130 440 -130 {
lab=out}
N 80 -150 110 -150 {
lab=A}
N 80 -110 110 -110 {
lab=B}
N 160 -50 160 -20 {
lab=gnd}
N 160 -230 160 -210 {
lab=vdd}
C {nand.sym} 70 70 0 0 {name=x1}
C {inv.sym} 270 -10 0 0 {name=x2}
C {devices/ipin.sym} 80 -150 0 0 {name=p1 lab=A}
C {devices/ipin.sym} 80 -110 0 0 {name=p2 lab=B}
C {devices/ipin.sym} 160 -20 0 0 {name=p3 lab=gnd}
C {devices/ipin.sym} 160 -230 0 0 {name=p4 lab=vdd}
C {devices/opin.sym} 440 -130 0 0 {name=p5 lab=out}
C {devices/lab_pin.sym} 330 -180 1 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 330 -80 3 0 {name=l2 sig_type=std_logic lab=gnd}
