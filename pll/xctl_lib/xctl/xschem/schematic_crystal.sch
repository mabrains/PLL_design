v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -100 0 -80 0 {
lab=#net1}
N -20 -0 -10 -0 {
lab=#net2}
N -140 -120 -110 -120 {
lab=Vin}
N -160 -160 -140 -160 {
lab=Vin}
N -70 -180 -70 -150 {
lab=Vout}
N -70 -250 -70 -240 {
lab=VDD}
N -70 -270 -70 -250 {
lab=VDD}
N -70 -120 -60 -120 {
lab=GND}
N -60 -120 -60 -90 {
lab=GND}
N -70 -90 -60 -90 {
lab=GND}
N -180 -160 -160 -160 {
lab=Vin}
N -180 -160 -180 -0 {
lab=Vin}
N -180 0 -180 120 {
lab=Vin}
N 80 0 80 120 {
lab=#net3}
N 70 210 70 230 {
lab=GND}
N 70 120 70 150 {
lab=#net3}
N -180 120 -180 150 {
lab=Vin}
N -180 210 -180 230 {
lab=GND}
N 300 -170 300 -160 {
lab=VDD}
N 70 120 80 120 {
lab=#net3}
N -80 -170 -70 -170 {
lab=Vout}
N 80 -160 80 -100 {
lab=Vout}
N 80 -40 80 -0 {
lab=#net3}
N 650 -250 680 -250 {
lab=Vout}
N 650 -250 650 -160 {
lab=Vout}
N 650 -160 680 -160 {
lab=Vout}
N 630 -200 650 -200 {
lab=Vout}
N 720 -220 720 -190 {
lab=Voutt}
N 720 -200 770 -200 {
lab=Voutt}
N 720 -290 720 -280 {
lab=VDD}
N 720 -310 720 -290 {
lab=VDD}
N 720 -250 730 -250 {
lab=VDD}
N 730 -300 730 -250 {
lab=VDD}
N 720 -300 730 -300 {
lab=VDD}
N 720 -160 730 -160 {
lab=GND}
N 730 -160 730 -130 {
lab=GND}
N 720 -130 730 -130 {
lab=GND}
N 710 -210 720 -210 {
lab=Voutt}
N 630 -330 630 -200 {
lab=Vout}
N 80 -330 630 -330 {
lab=Vout}
N 80 -330 80 -160 {
lab=Vout}
N -20 120 70 120 {
lab=#net3}
N -70 -160 -30 -160 {
lab=Vout}
N 40 -170 80 -170 {
lab=Vout}
N -30 -160 40 -170 {
lab=Vout}
N -180 120 -80 120 {
lab=Vin}
N -180 0 -160 -0 {
lab=Vin}
N 50 0 80 -0 {
lab=#net3}
N 670 50 700 50 {
lab=Voutt}
N 670 50 670 140 {
lab=Voutt}
N 670 140 700 140 {
lab=Voutt}
N 650 100 670 100 {
lab=Voutt}
N 740 80 740 110 {
lab=Vouttt}
N 740 100 790 100 {
lab=Vouttt}
N 740 10 740 20 {
lab=VDD}
N 740 -10 740 10 {
lab=VDD}
N 740 50 750 50 {
lab=VDD}
N 750 0 750 50 {
lab=VDD}
N 740 0 750 0 {
lab=VDD}
N 740 140 750 140 {
lab=GND}
N 750 140 750 170 {
lab=GND}
N 740 170 750 170 {
lab=GND}
N 730 90 740 90 {
lab=Vouttt}
N 650 -30 650 100 {
lab=Voutt}
N 650 -85 650 -30 {
lab=Voutt}
N 650 -85 825 -85 {
lab=Voutt}
N 825 -205 825 -85 {
lab=Voutt}
N 770 -200 825 -205 {
lab=Voutt}
N -365 -400 -335 -400 {
lab=#net4}
N -365 -400 -365 -310 {
lab=#net4}
N -365 -310 -335 -310 {
lab=#net4}
N -295 -370 -295 -340 {
lab=#net5}
N -295 -440 -295 -430 {
lab=VDD}
N -295 -460 -295 -440 {
lab=VDD}
N -295 -400 -285 -400 {
lab=VDD}
N -285 -450 -285 -400 {
lab=VDD}
N -295 -450 -285 -450 {
lab=VDD}
N -295 -310 -285 -310 {
lab=GND}
N -285 -310 -285 -280 {
lab=GND}
N -295 -280 -285 -280 {
lab=GND}
N -305 -360 -295 -360 {
lab=#net5}
N -295 -350 -255 -350 {
lab=#net5}
N -140 -170 -140 -160 {
lab=Vin}
N -140 -160 -140 -120 {
lab=Vin}
C {devices/ind.sym} -50 0 1 0 {name=L1
m=1
value=12.904m
footprint=1206
device=inductor}
C {sky130_fd_pr/nfet_01v8.sym} -90 -120 0 0 {name=M1
L=0.15
W=40
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
C {devices/vdd.sym} -70 -270 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -70 -90 0 0 {name=l2 lab=GND}
C {devices/capa.sym} -180 180 2 0 {name=C3
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 70 180 2 0 {name=C4
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -180 230 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 70 230 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 300 -130 0 0 {name=VDD
value= 1}
C {devices/gnd.sym} 300 -100 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 300 -170 0 0 {name=l6 lab=VDD}
C {devices/code_shown.sym} 260 50 0 0 {name=SPICE only_toplevel=false value=".tran 1n 50u
.ic v(Vout)=0.9
.ic v(Vin)=0.9
.save all"}
C {sky130_fd_pr/corner.sym} 140 -130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} 80 -110 2 0 {name=l7 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -180 -110 0 0 {name=l8 sig_type=std_logic lab=Vin}
C {devices/isource.sym} -40 -50 1 0 {name=I0 
value="sin(0 500u 40MEG 1ns 0)"}
C {devices/res.sym} -110 -170 1 0 {name=R2
value=2.2MEG
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 700 -160 0 0 {name=M3
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 700 -250 0 0 {name=M4
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 720 -310 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} 720 -130 0 0 {name=l10 lab=GND}
C {devices/res.sym} 680 -210 1 0 {name=R3
value=1MEG
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 770 -200 2 0 {name=l11 sig_type=std_logic lab=Voutt}
C {devices/capa.sym} -130 0 1 0 {name=C1
m=1
value=19.644f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 20 0 1 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -50 120 1 0 {name=C2
m=1
value=4.623p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8.sym} 720 140 0 0 {name=M5
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 720 50 0 0 {name=M6
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 740 -10 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 740 170 0 0 {name=l13 lab=GND}
C {devices/res.sym} 700 90 1 0 {name=R5
value=1MEG
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 790 100 2 0 {name=l14 sig_type=std_logic lab=Vouttt}
C {sky130_fd_pr/nfet_01v8.sym} -315 -310 0 0 {name=M7
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} -315 -400 0 0 {name=M8
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} -295 -460 0 0 {name=l15 lab=VDD}
C {devices/gnd.sym} -295 -280 0 0 {name=l16 lab=GND}
C {devices/res.sym} -335 -360 1 0 {name=R6
value=2.2MEG
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} -70 -210 0 0 {name=I1 value=600u}
C {devices/res.sym} 80 -65 2 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
