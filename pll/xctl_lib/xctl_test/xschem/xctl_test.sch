v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1140 -190 1430 -190 {
lab=GND}
N 1140 -360 1140 -250 {
lab=V2}
N 1200 -360 1260 -360 {
lab=#net1}
N 1320 -360 1370 -360 {
lab=#net2}
N 1430 -360 1430 -250 {
lab=Vout}
N 1320 -280 1430 -280 {
lab=Vout}
N 1140 -280 1260 -280 {
lab=V2}
N 1430 -280 1460 -280 {
lab=Vout}
N 970 -100 990 -100 {
lab=VSS}
N 990 -100 990 -70 {
lab=VSS}
N 270 -100 290 -100 {
lab=VSS}
N 270 -100 270 -70 {
lab=VSS}
N 620 -100 620 -70 {
lab=VSS}
N 630 -100 930 -100 {
lab=VSS}
N 290 -360 290 -130 {
lab=#net3}
N 450 -220 480 -220 {
lab=Vin}
N 690 -190 690 -170 {
lab=#net4}
N 520 -170 690 -170 {
lab=#net4}
N 520 -190 520 -170 {
lab=#net4}
N 610 -170 610 -130 {
lab=#net4}
N 690 -360 690 -250 {
lab=V1}
N 520 -360 520 -250 {
lab=#net5}
N 560 -390 650 -390 {
lab=#net5}
N 600 -390 600 -330 {
lab=#net5}
N 520 -330 600 -330 {
lab=#net5}
N 290 -480 290 -420 {
lab=VDD}
N 690 -480 690 -420 {
lab=VDD}
N 520 -480 520 -420 {
lab=VDD}
N 970 -70 970 -20 {
lab=VSS}
N 290 -70 290 -20 {
lab=VSS}
N 290 -20 970 -20 {
lab=VSS}
N 610 -70 610 -20 {
lab=VSS}
N 620 -70 620 -50 {
lab=VSS}
N 610 -50 620 -50 {
lab=VSS}
N 990 -70 990 -50 {
lab=VSS}
N 970 -50 990 -50 {
lab=VSS}
N 270 -70 270 -40 {
lab=VSS}
N 270 -40 290 -40 {
lab=VSS}
N 970 -350 970 -130 {
lab=V2}
N 970 -480 970 -410 {
lab=VDD}
N 940 -480 970 -480 {
lab=VDD}
N 690 -480 940 -480 {
lab=VDD}
N 520 -480 690 -480 {
lab=VDD}
N 290 -480 520 -480 {
lab=VDD}
N 970 -280 1140 -280 {
lab=V2}
N 100 -550 100 -540 {
lab=VDD}
N 590 -530 590 -480 {
lab=VDD}
N 100 -270 100 -260 {
lab=Vin}
N 690 -390 730 -390 {
lab=VDD}
N 730 -450 730 -390 {
lab=VDD}
N 690 -450 730 -450 {
lab=VDD}
N 490 -390 520 -390 {
lab=VDD}
N 490 -440 490 -390 {
lab=VDD}
N 490 -440 520 -440 {
lab=VDD}
N 970 -380 1010 -380 {
lab=VDD}
N 1010 -440 1010 -380 {
lab=VDD}
N 970 -440 1010 -440 {
lab=VDD}
N 910 -310 970 -310 {
lab=V2}
N 690 -310 750 -310 {
lab=V1}
N 740 -380 930 -380 {
lab=V1}
N 740 -380 740 -310 {
lab=V1}
N 810 -310 850 -310 {
lab=#net6}
N 730 -210 730 -200 {
lab=GND}
N 730 -220 730 -210 {
lab=GND}
N 330 -390 390 -390 {
lab=#net3}
N 390 -390 390 -320 {
lab=#net3}
N 290 -320 390 -320 {
lab=#net3}
N 250 -390 290 -390 {
lab=VDD}
N 250 -450 250 -390 {
lab=VDD}
N 250 -450 290 -450 {
lab=VDD}
N 670 -220 690 -220 {
lab=#net4}
N 670 -220 670 -180 {
lab=#net4}
N 670 -180 690 -180 {
lab=#net4}
N 520 -220 540 -220 {
lab=#net4}
N 540 -220 540 -180 {
lab=#net4}
N 520 -180 540 -180 {
lab=#net4}
N 330 -100 570 -100 {
lab=VSS}
N 620 -100 630 -100 {
lab=VSS}
N 570 -100 620 -100 {
lab=VSS}
N 610 -20 610 10 {
lab=VSS}
N 100 -480 100 -450 {
lab=GND}
N 1040 -280 1040 -270 {
lab=V2}
N 730 -200 730 -190 {
lab=GND}
N 100 -450 100 -440 {
lab=GND}
N 100 -200 100 -180 {
lab=GND}
N 1290 -190 1290 -170 {
lab=GND}
N 20 -470 20 -450 {
lab=GND}
N 20 -550 20 -530 {
lab=VSS}
C {devices/ind.sym} 1170 -360 3 0 {name=Lx
m=1
value=14.07u
footprint=1206
device=inductor}
C {devices/capa.sym} 1290 -360 3 0 {name=Cx
m=1
value=18f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1400 -360 1 0 {name=Rx
value=10
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1290 -280 1 0 {name=C0
m=1
value=3.834p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1430 -220 0 0 {name=C02
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1140 -220 0 0 {name=C01
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1460 -280 2 0 {name=l1 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 1540 -130 0 0 {name=SPICE only_toplevel=false value=".tran 1n 5u
.op"}
C {devices/code.sym} 1550 -320 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/nfet_01v8.sym} 950 -100 0 0 {name=M7
L=0.8
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 590 -100 0 0 {name=M5
L=0.9
W=0.4
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
C {sky130_fd_pr/nfet_01v8.sym} 310 -100 0 1 {name=M9
L=0.35
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 950 -380 0 0 {name=M6
L=0.6
W=2.4
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
C {sky130_fd_pr/pfet_01v8.sym} 670 -390 0 0 {name=M4
L=0.35
W=0.6
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -390 0 1 {name=M3
L=0.35
W=0.6
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
C {sky130_fd_pr/pfet_01v8.sym} 310 -390 0 1 {name=M8
L=1.2
W=1.2
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
C {sky130_fd_pr/nfet_01v8.sym} 500 -220 0 0 {name=M1
L=1
W=6
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 710 -220 0 1 {name=M2
L=1
W=6
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 450 -220 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} 100 -510 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} 100 -550 0 0 {name=l6 lab=VDD}
C {devices/vdd.sym} 590 -530 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} 100 -230 0 0 {name=Vin value="sin (0 1.8 10MEG 0 0 0)"}
C {devices/res.sym} 780 -310 1 0 {name=R0
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 880 -310 3 0 {name=Cc
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 100 -270 1 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 610 10 2 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1040 -270 2 0 {name=l1 sig_type=std_logic lab=V2}
C {devices/gnd.sym} 100 -180 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 100 -440 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 730 -190 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1290 -170 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 700 -310 2 0 {name=l1 sig_type=std_logic lab=V1}
C {devices/vsource.sym} 20 -500 0 0 {name=VSS1 value=-1.8}
C {devices/gnd.sym} 20 -450 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 20 -550 1 0 {name=l1 sig_type=std_logic lab=VSS}
