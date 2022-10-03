v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2560 190 2560 220 {
lab=#net1}
N 2560 90 2560 130 {
lab=#net2}
N 2770 190 2770 220 {
lab=#net3}
N 2600 250 2730 250 {
lab=#net2}
N 2600 160 2730 160 {
lab=VBN}
N 2770 280 2770 340 {
lab=GND}
N 2560 340 2770 340 {
lab=GND}
N 2560 280 2560 340 {
lab=GND}
N 2770 90 2770 130 {
lab=VBP}
N 2770 -30 2770 30 {
lab=Pbias}
N 2560 -10 2560 30 {
lab=VBN}
N 2560 -150 2560 -70 {
lab=VDD}
N 2560 -190 2560 -150 {
lab=VDD}
N 2560 -190 2760 -190 {
lab=VDD}
N 2770 -190 2770 -180 {
lab=VDD}
N 2760 -190 2770 -190 {
lab=VDD}
N 2770 -40 2770 -30 {
lab=Pbias}
N 2770 -120 2770 -100 {
lab=#net4}
N 2560 10 2640 10 {
lab=VBN}
N 2640 10 2640 160 {
lab=VBN}
N 2620 110 2620 250 {
lab=#net2}
N 2560 110 2620 110 {
lab=#net2}
N 2770 110 2900 110 {
lab=VBP}
N 2900 -70 2900 110 {
lab=VBP}
N 2810 -70 2900 -70 {
lab=VBP}
N 2770 -10 2960 -10 {
lab=Pbias}
N 2960 -150 2960 -10 {
lab=Pbias}
N 2810 -150 2960 -150 {
lab=Pbias}
N 2680 340 2680 350 {
lab=GND}
N 3400 -110 3400 -50 {
lab=#net5}
N 3260 -50 3400 -50 {
lab=#net5}
N 3260 -50 3260 10 {
lab=#net5}
N 3400 -50 3550 -50 {
lab=#net5}
N 3550 -50 3550 10 {
lab=#net5}
N 3170 40 3220 40 {
lab=V-}
N 3590 40 3660 40 {
lab=V+}
N 3550 70 3550 140 {
lab=VO1}
N 3260 70 3260 150 {
lab=#net6}
N 3300 210 3510 210 {
lab=#net6}
N 3260 150 3260 180 {
lab=#net6}
N 3260 110 3390 110 {
lab=#net6}
N 3390 110 3390 210 {
lab=#net6}
N 3550 140 3550 180 {
lab=VO1}
N 3550 240 3550 330 {
lab=GND}
N 3270 330 3550 330 {
lab=GND}
N 3260 330 3270 330 {
lab=GND}
N 3260 240 3260 330 {
lab=GND}
N 3550 130 3700 130 {
lab=VO1}
N 3760 130 3790 130 {
lab=#net7}
N 3850 130 3900 130 {
lab=VO}
N 4000 130 4000 160 {
lab=VO}
N 3900 130 4000 130 {
lab=VO}
N 3640 190 3960 190 {
lab=VO1}
N 3640 130 3640 190 {
lab=VO1}
N 4000 220 4000 330 {
lab=GND}
N 3550 330 4000 330 {
lab=GND}
N 4000 -0 4000 130 {
lab=VO}
C {sky130_fd_pr/nfet3_01v8.sym} 2580 160 0 1 {name=M1
L=0.5
W=1.05
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
C {sky130_fd_pr/nfet3_01v8.sym} 2580 250 0 1 {name=M2
L=0.5
W=1.05
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
C {sky130_fd_pr/nfet3_01v8.sym} 2750 160 0 0 {name=M3
L=0.5
W=1.05
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
C {sky130_fd_pr/nfet3_01v8.sym} 2750 250 0 0 {name=M4
L=0.5
W=1.05
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
C {devices/res.sym} 2560 60 0 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2770 60 0 0 {name=R2
value=20k
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} 2560 -40 0 0 {name=I0 value=10u}
C {sky130_fd_pr/pfet3_01v8.sym} 2790 -70 0 1 {name=M5
L=0.5
W=4
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
C {sky130_fd_pr/pfet3_01v8.sym} 2790 -150 0 1 {name=M6
L=0.5
W=4
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
C {devices/lab_pin.sym} 2860 110 3 0 {name=l1 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 2680 160 3 0 {name=l3 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 2940 -10 3 0 {name=l4 sig_type=std_logic lab=Pbias}
C {sky130_fd_pr/pfet3_01v8.sym} 3380 -140 0 0 {name=M7
L=0.5
W=4
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
C {devices/lab_pin.sym} 3360 -140 0 0 {name=l8 sig_type=std_logic lab=Pbias}
C {sky130_fd_pr/pfet3_01v8.sym} 3240 40 0 0 {name=M8
L=0.583
W=6.169
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
C {sky130_fd_pr/pfet3_01v8.sym} 3570 40 0 1 {name=M9
L=0.583
W=6.169
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
C {devices/lab_pin.sym} 3660 40 2 0 {name=l9 sig_type=std_logic lab=V+}
C {devices/lab_pin.sym} 3170 40 1 0 {name=l10 sig_type=std_logic lab=V-}
C {sky130_fd_pr/nfet3_01v8.sym} 3280 210 0 1 {name=M10
L=0.7
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
C {sky130_fd_pr/nfet3_01v8.sym} 3530 210 0 0 {name=M11
L=0.7
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
C {devices/res.sym} 3730 130 3 0 {name=R3
value=2.5k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 3820 130 1 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet3_01v8.sym} 3980 190 0 0 {name=M12
L=0.7
W=15
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
C {sky130_fd_pr/pfet3_01v8.sym} 3980 -20 0 0 {name=M13
L=0.5
W=4
body=VDD
nf=4
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
C {devices/lab_pin.sym} 3960 -20 0 0 {name=l12 sig_type=std_logic lab=Pbias}
C {devices/lab_pin.sym} 4000 90 2 0 {name=l17 sig_type=std_logic lab=VO}
C {devices/lab_pin.sym} 3590 130 1 0 {name=l18 sig_type=std_logic lab=VO1}
C {devices/ipin.sym} 2020 120 0 0 {name=p1 lab=V+
}
C {devices/ipin.sym} 2020 150 0 0 {name=p2 lab=V-
}
C {devices/opin.sym} 1980 250 0 0 {name=p3 lab=VO
}
C {devices/iopin.sym} 1980 200 0 0 {name=p5 lab=GND}
C {devices/iopin.sym} 2150 -60 0 0 {name=p4 lab=VDD}
C {devices/lab_pin.sym} 2670 -190 1 0 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 3400 -170 1 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 4000 -50 1 0 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2680 350 3 0 {name=l11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 3390 330 3 0 {name=l13 sig_type=std_logic lab=GND}
