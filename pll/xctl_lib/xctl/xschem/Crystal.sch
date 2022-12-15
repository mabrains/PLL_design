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
lab=#net1}
N 580 -550 590 -550 {
lab=#net1}
N 590 -550 590 -320 {
lab=#net1}
N 540 -380 590 -380 {
lab=#net1}
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
N 590 -190 590 -170 {
lab=#net1}
N 530 -180 590 -180 {
lab=#net1}
N 580 -220 590 -220 {
lab=#net1}
N 310 -220 360 -220 {
lab=Vin}
N 390 -440 390 -360 {
lab=Vin}
N 360 -380 390 -380 {
lab=Vin}
N 430 -410 430 -390 {
lab=#net1}
N 430 -400 540 -400 {
lab=#net1}
N 540 -400 540 -380 {
lab=#net1}
N 430 -330 430 -290 {
lab=GND}
N 430 -480 430 -470 {
lab=VDD}
N 430 -360 460 -360 {
lab=GND}
N 460 -360 460 -300 {
lab=GND}
N 430 -300 460 -300 {
lab=GND}
N 430 -440 460 -440 {
lab=VDD}
N 460 -490 460 -440 {
lab=VDD}
N 430 -490 460 -490 {
lab=VDD}
N 660 -280 660 -260 {
lab=GND}
N 660 -490 660 -470 {
lab=VDD}
N 620 -430 620 -350 {
lab=#net1}
N 660 -400 660 -380 {
lab=out}
N 660 -320 660 -280 {
lab=GND}
N 660 -470 660 -460 {
lab=VDD}
N 660 -350 690 -350 {
lab=GND}
N 690 -350 690 -290 {
lab=GND}
N 660 -290 690 -290 {
lab=GND}
N 660 -430 690 -430 {
lab=VDD}
N 690 -480 690 -430 {
lab=VDD}
N 660 -480 690 -480 {
lab=VDD}
N 660 -390 760 -390 {
lab=out}
N 270 -570 420 -570 {
lab=Vin}
N 270 -570 270 -190 {
lab=Vin}
N 270 -190 310 -190 {
lab=Vin}
N 590 -400 620 -400 {
lab=#net1}
N 590 -320 590 -260 {
lab=#net1}
C {devices/capa.sym} 590 -140 0 0 {name=C1
m=1
value=60p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 310 -140 0 0 {name=C3
m=1
value=60p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 310 -70 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 590 -70 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 430 -270 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 140 -450 0 0 {name=V1 value= "PWL(0 0 1u 1.8 1m 1.8)"}
C {devices/gnd.sym} 140 -400 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 140 -500 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 430 -500 0 0 {name=l6 lab=VDD}
C {devices/code.sym} 890 -100 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 1120 -80 0 0 {name=s1 only_toplevel=false value=".control
tran 5n 1m
plot out
meas tran tperiod TRIG out VAL=0.9 RISE=750 TARG out VAL=0.9 RISE=751
let freq = 1/(tperiod*1000000)
print freq
.endc
"
}
C {devices/ind.sym} 550 -220 1 0 {name=Ls
m=1
value=6.237e-3
footprint=1206
device=inductor}
C {devices/res.sym} 470 -220 1 0 {name=Rs
value=26.2965
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 390 -220 1 0 {name=Cs
m=1
value=40f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 420 -180 1 0 {name=Cp
m=1
value=7p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 310 -400 0 0 {name=l8 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/pfet_01v8.sym} 410 -440 0 0 {name=M11
L=0.15
W=240
nf=16 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 410 -360 0 0 {name=M2
L=0.15
W=240  
nf=16 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 660 -260 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} 660 -490 0 0 {name=l10 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 640 -430 0 0 {name=M1
L=0.15
W=15
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 640 -350 0 0 {name=M3
L=0.15
W=15 
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 760 -390 0 0 {name=l7 sig_type=std_logic lab=out}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 420 -550 1 0 {name=R1
W=0.35
L=177.84
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
