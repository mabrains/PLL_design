v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 800 2050 800 2100 {
lab=#net1}
N 650 2130 760 2130 {
lab=RST}
N 650 2020 760 2020 {
lab=REF}
N 800 1940 800 1990 {
lab=#net2}
N 800 1850 800 1880 {
lab=VDD}
N 610 1910 760 1910 {
lab=RST}
N 1080 2040 1080 2090 {
lab=#net3}
N 1080 1940 1080 1980 {
lab=up_b}
N 1080 1840 1080 1880 {
lab=VDD}
N 800 1840 1080 1840 {
lab=VDD}
N 800 1840 800 1850 {
lab=VDD}
N 1080 2150 1080 2190 {
lab=GND}
N 1080 2190 1080 2210 {
lab=GND}
N 800 2210 1080 2210 {
lab=GND}
N 800 2190 800 2210 {
lab=GND}
N 800 2160 800 2190 {
lab=GND}
N 980 1910 1040 1910 {
lab=#net1}
N 980 2010 1040 2010 {
lab=REF}
N 1080 1960 1170 1960 {
lab=up_b}
N 1170 1960 1170 2050 {
lab=up_b}
N 1270 1940 1270 2090 {
lab=up}
N 1270 1840 1270 1880 {
lab=VDD}
N 1080 1840 1270 1840 {
lab=VDD}
N 1270 2150 1270 2200 {
lab=GND}
N 1270 2200 1270 2210 {
lab=GND}
N 1080 2210 1270 2210 {
lab=GND}
N 1190 1910 1230 1910 {
lab=up_b}
N 1190 1910 1190 2120 {
lab=up_b}
N 1190 2120 1230 2120 {
lab=up_b}
N 1170 2050 1340 2050 {
lab=up_b}
N 1170 1990 1190 1990 {
lab=up_b}
N 1270 2000 1340 2000 {
lab=up}
N 610 2130 650 2130 {
lab=RST}
N 610 1910 610 2130 {
lab=RST}
N 920 1910 980 1910 {
lab=#net1}
N 920 1910 920 2100 {
lab=#net1}
N 920 2100 920 2120 {
lab=#net1}
N 920 2120 1040 2120 {
lab=#net1}
N 800 2080 920 2080 {
lab=#net1}
N 980 1970 980 2010 {
lab=REF}
N 730 1970 980 1970 {
lab=REF}
N 730 1970 730 2020 {
lab=REF}
N 820 2540 820 2590 {
lab=#net4}
N 670 2620 780 2620 {
lab=RST}
N 670 2510 780 2510 {
lab=FB}
N 820 2430 820 2480 {
lab=#net5}
N 820 2340 820 2370 {
lab=VDD}
N 630 2400 780 2400 {
lab=RST}
N 1100 2530 1100 2580 {
lab=#net6}
N 1100 2430 1100 2470 {
lab=dn_b}
N 1100 2330 1100 2370 {
lab=VDD}
N 820 2330 1100 2330 {
lab=VDD}
N 820 2330 820 2340 {
lab=VDD}
N 1100 2640 1100 2680 {
lab=GND}
N 1100 2680 1100 2700 {
lab=GND}
N 820 2700 1100 2700 {
lab=GND}
N 820 2680 820 2700 {
lab=GND}
N 820 2650 820 2680 {
lab=GND}
N 1000 2400 1060 2400 {
lab=#net4}
N 1000 2500 1060 2500 {
lab=FB}
N 1100 2450 1190 2450 {
lab=dn_b}
N 1190 2450 1190 2540 {
lab=dn_b}
N 1290 2430 1290 2580 {
lab=dn}
N 1290 2330 1290 2370 {
lab=VDD}
N 1100 2330 1290 2330 {
lab=VDD}
N 1290 2640 1290 2690 {
lab=GND}
N 1290 2690 1290 2700 {
lab=GND}
N 1100 2700 1290 2700 {
lab=GND}
N 1210 2400 1250 2400 {
lab=dn_b}
N 1210 2400 1210 2610 {
lab=dn_b}
N 1210 2610 1250 2610 {
lab=dn_b}
N 1190 2540 1360 2540 {
lab=dn_b}
N 1190 2480 1210 2480 {
lab=dn_b}
N 1290 2490 1360 2490 {
lab=dn}
N 630 2620 670 2620 {
lab=RST}
N 630 2400 630 2620 {
lab=RST}
N 940 2400 1000 2400 {
lab=#net4}
N 940 2400 940 2590 {
lab=#net4}
N 940 2590 940 2610 {
lab=#net4}
N 940 2610 1060 2610 {
lab=#net4}
N 820 2570 940 2570 {
lab=#net4}
N 1000 2460 1000 2500 {
lab=FB}
N 750 2460 1000 2460 {
lab=FB}
N 750 2460 750 2510 {
lab=FB}
N 1430 2360 1430 2390 {
lab=dn_b}
N 1430 2390 1470 2390 {
lab=dn_b}
N 640 2020 640 2050 {
lab=REF}
N 640 2020 650 2020 {
lab=REF}
C {sky130_fd_pr/nfet3_01v8.sym} 780 2130 0 0 {name=M1
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 780 2020 0 0 {name=M2
L=0.2
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
C {sky130_fd_pr/pfet3_01v8.sym} 780 1910 0 0 {name=M3
L=0.15
W=5
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
C {devices/ipin.sym} 640 2040 3 0 {name=p1 lab=REF

}
C {devices/ipin.sym} 290 1800 0 0 {name=p2 lab=RST
}
C {devices/iopin.sym} 240 1850 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 240 1910 0 0 {name=p4 lab=GND}
C {devices/lab_pin.sym} 610 2040 0 0 {name=l2 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 1360 2490 2 0 {name=l5 sig_type=std_logic lab=dn}
C {devices/lab_pin.sym} 1360 2540 2 0 {name=l6 sig_type=std_logic lab=dn_b
}
C {sky130_fd_pr/pfet3_01v8.sym} 800 2510 0 0 {name=M10
L=0.2
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
C {devices/lab_pin.sym} 630 2530 0 0 {name=l9 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 1340 2050 2 0 {name=l11 sig_type=std_logic lab=up_b
}
C {devices/lab_pin.sym} 670 2510 3 0 {name=l3 sig_type=std_logic lab=FB}
C {Nor_gate.sym} 1410 2380 3 0 {name=X1}
C {devices/lab_pin.sym} 1410 2360 3 0 {name=l7 sig_type=std_logic lab=up_b
}
C {devices/lab_pin.sym} 1470 2390 2 0 {name=l14 sig_type=std_logic lab=dn_b
}
C {devices/lab_pin.sym} 1420 2190 1 0 {name=l17 sig_type=std_logic lab=RST}
C {sky130_fd_pr/nfet3_01v8.sym} 1080 2500 0 0 {name=M4
L=0.2
W=2
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
C {sky130_fd_pr/nfet3_01v8.sym} 1060 2010 0 0 {name=M6
L=0.2
W=2
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
C {sky130_fd_pr/nfet3_01v8.sym} 1060 2120 0 0 {name=M5
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 1060 1910 0 0 {name=M14
L=0.15
W=5
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
C {sky130_fd_pr/nfet3_01v8.sym} 800 2620 0 0 {name=M9
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 800 2400 0 0 {name=M11
L=0.15
W=5
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
C {sky130_fd_pr/nfet3_01v8.sym} 1080 2610 0 0 {name=M12
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 1080 2400 0 0 {name=M13
L=0.15
W=5
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
C {sky130_fd_pr/nfet3_01v8.sym} 1270 2610 0 0 {name=M15
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 1270 2400 0 0 {name=M16
L=0.15
W=5
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
C {sky130_fd_pr/nfet3_01v8.sym} 1250 2120 0 0 {name=M7
L=0.15
W=2.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 1250 1910 0 0 {name=M8
L=0.15
W=5
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
C {devices/ipin.sym} 310 1960 0 0 {name=p6 lab=FB

}
C {devices/lab_pin.sym} 990 1840 1 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1010 2330 1 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1040 2700 3 0 {name=l12 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 930 2210 3 0 {name=l13 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1380 2300 2 1 {name=l15 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 1340 2000 0 0 {name=p7 lab=up}
C {devices/opin.sym} 260 2050 0 0 {name=p8 lab=up_b
}
C {devices/opin.sym} 270 2110 0 0 {name=p9 lab=dn_b}
C {devices/opin.sym} 280 2170 0 0 {name=p10 lab=dn}
C {devices/lab_pin.sym} 1460 2300 2 0 {name=l18 sig_type=std_logic lab=GND}
