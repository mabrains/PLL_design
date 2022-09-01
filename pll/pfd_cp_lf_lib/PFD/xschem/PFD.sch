v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1060 -990 1060 -930 {
lab=GND}
N 760 -990 760 -940 {
lab=GND}
N 760 -930 1060 -930 {
lab=GND}
N 760 -940 760 -930 {
lab=GND}
N 1060 -1130 1060 -1050 {
lab=#net1}
N 760 -1130 760 -1050 {
lab=#net2}
N 1060 -1280 1060 -1190 {
lab=#net3}
N 960 -1240 1060 -1240 {
lab=#net3}
N 760 -1290 760 -1190 {
lab=#net4}
N 760 -1250 870 -1250 {
lab=#net4}
N 870 -1250 870 -1030 {
lab=#net4}
N 1230 -1170 1230 -1110 {
lab=dn}
N 1230 -1170 1430 -1170 {
lab=dn}
N 1430 -1170 1430 -1110 {
lab=dn}
N 1430 -1050 1430 -980 {
lab=GND}
N 1230 -980 1430 -980 {
lab=GND}
N 1230 -1050 1230 -980 {
lab=GND}
N 1060 -1280 1200 -1280 {
lab=#net3}
N 1130 -1280 1130 -1080 {
lab=#net3}
N 1130 -1080 1190 -1080 {
lab=#net3}
N 370 -1160 370 -1100 {
lab=up}
N 370 -1160 570 -1160 {
lab=up}
N 570 -1160 570 -1100 {
lab=up}
N 570 -1040 570 -970 {
lab=GND}
N 370 -970 570 -970 {
lab=GND}
N 370 -1040 370 -970 {
lab=GND}
N 620 -1290 760 -1290 {
lab=#net4}
N 670 -1290 670 -1080 {
lab=#net4}
N 670 -1080 670 -1070 {
lab=#net4}
N 610 -1070 670 -1070 {
lab=#net4}
N 760 -1410 760 -1290 {
lab=#net4}
N 760 -1520 760 -1470 {
lab=#net5}
N 760 -1630 760 -1580 {
lab=VDD}
N 760 -1630 890 -1630 {
lab=VDD}
N 1060 -1520 1060 -1470 {
lab=#net6}
N 1060 -1410 1060 -1280 {
lab=#net3}
N 1060 -1630 1060 -1580 {
lab=VDD}
N 890 -1630 1050 -1630 {
lab=VDD}
N 1050 -1630 1060 -1630 {
lab=VDD}
N 1330 -1360 1330 -1310 {
lab=#net7}
N 1200 -1280 1290 -1280 {
lab=#net3}
N 1330 -1250 1330 -1170 {
lab=dn}
N 1060 -1630 1330 -1630 {
lab=VDD}
N 1330 -1630 1330 -1590 {
lab=VDD}
N 1330 -1590 1330 -1580 {
lab=VDD}
N 1100 -1550 1290 -1550 {
lab=REF}
N 1330 -1520 1330 -1360 {
lab=#net7}
N 470 -1370 470 -1320 {
lab=#net8}
N 470 -1600 470 -1590 {
lab=VDD}
N 470 -1260 470 -1160 {
lab=up}
N 510 -1290 620 -1290 {
lab=#net4}
N 470 -1630 760 -1630 {
lab=VDD}
N 470 -1630 470 -1600 {
lab=VDD}
N 530 -1550 720 -1550 {
lab=FB}
N 510 -1550 530 -1550 {
lab=FB}
N 470 -1590 470 -1580 {
lab=VDD}
N 470 -1520 470 -1370 {
lab=#net8}
N 250 -1070 330 -1070 {
lab=FB}
N 1470 -1080 1550 -1080 {
lab=REF}
N 1100 -1440 1150 -1440 {
lab=FB}
N 630 -1440 720 -1440 {
lab=REF}
N 1100 -1160 1100 -1130 {
lab=FB}
N 720 -1160 720 -1130 {
lab=REF}
N 870 -1030 870 -1020 {
lab=#net4}
N 870 -1020 1020 -1020 {
lab=#net4}
N 960 -1240 960 -1000 {
lab=#net3}
N 800 -1000 960 -1000 {
lab=#net3}
N 800 -1020 800 -1000 {
lab=#net3}
N 1550 -1080 1580 -1080 {
lab=REF}
N 210 -1070 250 -1070 {
lab=FB}
N 400 -1220 470 -1220 {
lab=up}
N 1330 -1220 1420 -1220 {
lab=dn}
C {sky130_fd_pr/nfet3_01v8.sym} 1080 -1160 0 1 {name=M3
L=0.15
W=2.5
body=GND
nf=2
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
C {sky130_fd_pr/nfet3_01v8.sym} 740 -1160 0 0 {name=M4
L=0.15
W=2.5
body=GND
nf=2
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
C {sky130_fd_pr/nfet3_01v8.sym} 1450 -1080 0 1 {name=M5
L=0.15
W=1
body=GND
nf=2
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
C {sky130_fd_pr/nfet3_01v8.sym} 1210 -1080 0 0 {name=M6
L=0.15
W=1
body=GND
nf=2
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
C {sky130_fd_pr/nfet3_01v8.sym} 590 -1070 0 1 {name=M7
L=0.15
W=1
body=GND
nf=2
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
C {sky130_fd_pr/nfet3_01v8.sym} 350 -1070 0 0 {name=M8
L=0.15
W=1
body=GND
nf=2
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
C {sky130_fd_pr/pfet3_01v8.sym} 740 -1440 0 0 {name=M9
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 740 -1550 0 0 {name=M1
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 1080 -1440 0 1 {name=M2
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 1080 -1550 0 1 {name=M10
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 1310 -1280 0 0 {name=M13
L=0.15
W=2
body=VDD
nf=2
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
C {sky130_fd_pr/pfet3_01v8.sym} 1310 -1550 0 0 {name=M14
L=0.15
W=2
body=VDD
nf=2
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
C {sky130_fd_pr/pfet3_01v8.sym} 490 -1290 0 1 {name=M15
L=0.15
W=2
body=VDD
nf=2
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
C {sky130_fd_pr/pfet3_01v8.sym} 490 -1550 0 1 {name=M16
L=0.15
W=2
body=VDD
nf=2
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
C {devices/lab_pin.sym} 1550 -1080 3 0 {name=l4 sig_type=std_logic lab=REF}
C {devices/lab_pin.sym} 250 -1070 3 0 {name=l6 sig_type=std_logic lab=FB}
C {devices/lab_pin.sym} 1200 -1550 3 0 {name=l7 sig_type=std_logic lab=REF}
C {devices/lab_pin.sym} 610 -1550 3 0 {name=l8 sig_type=std_logic lab=FB}
C {devices/lab_pin.sym} 1150 -1440 2 0 {name=l9 sig_type=std_logic lab=FB}
C {devices/lab_pin.sym} 630 -1440 0 0 {name=l10 sig_type=std_logic lab=REF}
C {devices/lab_pin.sym} 1100 -1130 3 0 {name=l11 sig_type=std_logic lab=FB}
C {devices/lab_pin.sym} 720 -1130 3 0 {name=l21 sig_type=std_logic lab=REF}
C {sky130_fd_pr/nfet3_01v8.sym} 1040 -1020 0 0 {name=M11
L=0.15
W=2.5
body=GND
nf=2
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
C {sky130_fd_pr/nfet3_01v8.sym} 780 -1020 0 1 {name=M12
L=0.15
W=2.5
body=GND
nf=2
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
C {devices/iopin.sym} 850 -1700 3 0 {name=p4 lab=VDD}
C {devices/iopin.sym} 800 -860 1 0 {name=p5 lab=GND}
C {devices/lab_pin.sym} 1380 -980 3 0 {name=l3 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 960 -930 3 0 {name=l1 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 510 -970 3 0 {name=l12 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 1090 -1630 1 0 {name=l23 sig_type=std_logic lab=VDD
}
C {devices/ipin.sym} 1570 -1080 2 0 {name=p1 lab=REF}
C {devices/ipin.sym} 220 -1070 0 0 {name=p2 lab=FB}
C {devices/opin.sym} 410 -1220 2 0 {name=p3 lab=up}
C {devices/opin.sym} 1410 -1220 0 0 {name=p6 lab=dn}
