v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 100 90 240 90 {
lab=#net1}
N 100 -20 240 -20 {
lab=#net2}
N 280 10 280 60 {
lab=#net3}
N 60 10 60 60 {
lab=#net4}
N 60 120 60 160 {
lab=GND}
N 60 160 280 160 {
lab=GND}
N 280 120 280 160 {
lab=GND}
N 60 -120 60 -50 {
lab=#net5}
N 280 -120 280 -50 {
lab=#net6}
N 100 -150 240 -150 {
lab=#net7}
N 280 -230 280 -180 {
lab=#net8}
N 60 -230 60 -180 {
lab=#net9}
N 100 -260 240 -260 {
lab=#net10}
N 280 -370 280 -290 {
lab=VDD}
N 60 -370 280 -370 {
lab=VDD}
N 60 -370 60 -290 {
lab=VDD}
N 280 -70 390 -70 {
lab=#net6}
N 390 -70 390 70 {
lab=#net6}
N 390 70 640 70 {
lab=#net6}
N 680 100 680 150 {
lab=GND}
N 280 160 680 160 {
lab=GND}
N 680 150 680 160 {
lab=GND}
N 680 -220 680 40 {
lab=#net11}
N 280 -370 680 -370 {
lab=VDD}
N 680 -370 680 -280 {
lab=VDD}
N 570 -250 640 -250 {
lab=#net12}
N 280 -90 460 -90 {
lab=#net6}
N 520 -90 540 -90 {
lab=#net13}
N 600 -90 680 -90 {
lab=#net11}
N -340 -210 -340 -160 {
lab=#net8}
N -340 -210 280 -210 {
lab=#net8}
N -580 -100 -580 -70 {
lab=#net14}
N -580 -70 -340 -70 {
lab=#net14}
N -340 -100 -340 -70 {
lab=#net14}
N -440 -70 -440 -20 {
lab=#net14}
N -580 -180 -580 -160 {
lab=#net9}
N -580 -180 60 -180 {
lab=#net9}
N -390 230 -390 280 {
lab=#net15}
N -50 20 60 20 {
lab=#net4}
N -790 200 -650 200 {
lab=V+}
N -350 200 -250 200 {
lab=V-}
N -710 -130 -620 -130 {
lab=V+}
N -300 -130 -220 -130 {
lab=V-}
N -540 10 -480 10 {
lab=N_bias}
N -610 140 -610 170 {
lab=#net17}
N -610 140 -520 140 {
lab=#net17}
N -390 140 -390 170 {
lab=#net17}
N -520 140 -390 140 {
lab=#net17}
N -390 280 -50 280 {}
N -50 80 -50 280 {}
N -50 20 -50 80 {}
N -610 230 -610 250 {}
N -610 250 -110 250 {}
N -110 50 -110 250 {}
N -110 50 280 50 {}
C {sky130_fd_pr/nfet3_01v8.sym} 260 90 0 0 {name=M1
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} 80 90 0 1 {name=M2
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} 260 -20 0 0 {name=M3
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} 80 -20 0 1 {name=M4
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/pfet3_01v8.sym} 80 -150 0 1 {name=M5
L=0.15
W=1
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} 260 -150 0 0 {name=M6
L=0.15
W=1
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} 80 -260 0 1 {name=M7
L=0.15
W=1
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} 260 -260 0 0 {name=M8
L=0.15
W=1
body=VDD
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
C {sky130_fd_pr/nfet3_01v8.sym} 660 70 0 0 {name=M9
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/pfet3_01v8.sym} 660 -250 0 0 {name=M10
L=0.15
W=1
body=VDD
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
C {devices/vdd.sym} 360 -370 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 390 160 0 0 {name=l2 lab=GND}
C {devices/res.sym} 490 -90 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 570 -90 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet3_01v8.sym} -600 -130 0 0 {name=M11
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} -320 -130 0 1 {name=M12
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} -460 10 0 0 {name=M13
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/pfet3_01v8.sym} -630 200 0 0 {name=M14
L=0.15
W=1
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} -370 200 0 1 {name=M15
L=0.15
W=1
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} -540 110 0 0 {name=M16
L=0.15
W=1
body=VDD
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
C {devices/gnd.sym} -440 40 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -990 120 0 0 {name=l5 sig_type=std_logic lab=xxx}
C {devices/lab_pin.sym} -790 200 0 0 {name=l6 sig_type=std_logic lab=V+
}
C {devices/lab_pin.sym} -710 -130 0 0 {name=l7 sig_type=std_logic lab=V+
}
C {devices/lab_pin.sym} -250 200 3 0 {name=l8 sig_type=std_logic lab=V-
}
C {devices/lab_pin.sym} -220 -130 3 0 {name=l9 sig_type=std_logic lab=V-
}
C {devices/lab_pin.sym} -540 10 0 0 {name=l10 sig_type=std_logic lab=N_bias}
C {devices/vdd.sym} -520 80 0 0 {name=l3 lab=VDD}
C {devices/lab_pin.sym} -560 110 0 0 {name=l11 sig_type=std_logic lab=P_bias}
