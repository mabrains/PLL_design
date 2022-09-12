v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 310 -550 390 -550 {
lab=Vin}
N 310 -550 310 -170 {
lab=Vin}
N 310 -380 360 -380 {
lab=Vin}
N 430 -290 430 -270 {
lab=GND}
N 310 -110 310 -70 {
lab=GND}
N 590 -110 590 -70 {
lab=GND}
N 590 -260 590 -190 {
lab=#net1}
N 450 -550 580 -550 {
lab=Vout}
N 580 -550 590 -550 {
lab=Vout}
N 590 -550 590 -320 {
lab=Vout}
N 540 -380 590 -380 {
lab=Vout}
N 140 -500 140 -480 {
lab=VDD}
N 140 -420 140 -400 {
lab=GND}
N 430 -500 430 -480 {
lab=VDD}
N 420 -220 440 -220 {
lab=#net2}
N 500 -220 520 -220 {
lab=#net3}
N 450 -180 530 -180 {
lab=#net1}
N 310 -180 390 -180 {
lab=Vin}
N 430 -480 430 -430 {
lab=VDD}
N 420 -430 430 -430 {
lab=VDD}
N 430 -330 430 -290 {
lab=GND}
N 420 -330 430 -330 {
lab=GND}
N 530 -380 540 -380 {
lab=Vout}
N 590 -190 590 -170 {
lab=#net1}
N 530 -180 590 -180 {
lab=#net1}
N 580 -220 590 -220 {
lab=#net1}
N 310 -220 360 -220 {
lab=Vin}
C {devices/res.sym} 590 -290 0 0 {name=R1
value=600
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 420 -550 1 0 {name=R2
value=2500k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 590 -140 0 0 {name=C1
m=1
value=40p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 310 -140 0 0 {name=C3
m=1
value=40p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 310 -70 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 590 -70 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 430 -270 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 140 -450 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 140 -400 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 140 -500 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 430 -500 0 0 {name=l6 lab=VDD}
C {devices/code.sym} 690 -300 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 910 -480 0 0 {name=s1 only_toplevel=false value=".OP
.IC V(Vout) = 0
.tran 2n 50u"
}
C {devices/lab_wire.sym} 590 -400 0 0 {name=l7 sig_type=std_logic lab=Vout
}
C {devices/ind.sym} 550 -220 1 0 {name=L1
m=1
value=9m
footprint=1206
device=inductor}
C {devices/res.sym} 470 -220 1 0 {name=R3
value=100
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 390 -220 1 0 {name=C4
m=1
value=28f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 420 -180 1 0 {name=C5
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {Inv.sym} 380 -380 0 0 {name=x1}
C {devices/lab_wire.sym} 310 -400 0 0 {name=l8 sig_type=std_logic lab=Vin}
