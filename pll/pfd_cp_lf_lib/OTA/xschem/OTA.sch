v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -140 -170 -50 -170 {
lab=N_bias}
N -180 -140 -180 -80 {
lab=GND}
N -180 -80 -30 -80 {
lab=GND}
N -30 -80 -10 -80 {
lab=GND}
N -10 -140 -10 -80 {
lab=GND}
N -10 -260 -10 -200 {
lab=P_bias}
N -180 -260 -180 -200 {
lab=N_bias}
N -180 -390 -180 -320 {
lab=N_bias}
N -120 -390 -120 -170 {
lab=N_bias}
N -10 -410 -10 -320 {
lab=P_bias}
N -180 -420 -180 -390 {
lab=N_bias}
N -10 -520 -10 -470 {
lab=P_bias}
N -180 -520 -180 -480 {
lab=N_bias}
N -10 -640 -10 -580 {
lab=VDD}
N -180 -630 -180 -520 {
lab=N_bias}
N -10 -720 -10 -690 {
lab=VDD}
N -180 -720 -180 -690 {
lab=VDD}
N -180 -720 -10 -720 {
lab=VDD}
N -80 -550 -50 -550 {
lab=P_bias}
N -80 -550 -80 -390 {
lab=P_bias}
N -80 -390 -10 -390 {
lab=P_bias}
N 630 -490 630 -440 {
lab=#net1}
N 390 -380 390 -350 {
lab=#net2}
N 390 -350 630 -350 {
lab=#net2}
N 630 -380 630 -350 {
lab=#net2}
N 530 -350 530 -300 {
lab=#net2}
N 390 -460 390 -440 {
lab=#net3}
N 260 -410 350 -410 {
lab=V-}
N 670 -410 750 -410 {
lab=V+}
N 430 -270 490 -270 {
lab=N_bias}
N 950 -240 1090 -240 {
lab=#net4}
N 950 -350 1090 -350 {
lab=VBN}
N 1130 -320 1130 -270 {
lab=GND}
N 910 -320 910 -270 {
lab=#net5}
N 910 -210 910 -170 {
lab=GND}
N 910 -170 1130 -170 {
lab=GND}
N 1130 -210 1130 -170 {
lab=GND}
N 910 -450 910 -380 {
lab=#net4}
N 1130 -450 1130 -380 {
lab=VO}
N 950 -480 1090 -480 {
lab=VBP}
N 1130 -560 1130 -510 {
lab=#net3}
N 910 -560 910 -510 {
lab=#net1}
N 950 -590 1090 -590 {
lab=P_bias}
N 1130 -700 1130 -620 {
lab=VDD}
N 910 -700 1130 -700 {
lab=VDD}
N 910 -700 910 -620 {
lab=VDD}
N 910 -420 980 -420 {
lab=#net4}
N 980 -420 980 -240 {
lab=#net4}
N 630 -510 630 -490 {
lab=#net1}
N 390 -540 390 -460 {
lab=#net3}
N 390 -540 1130 -540 {
lab=#net3}
N -10 -470 -10 -410 {
lab=P_bias}
N -10 -690 -10 -640 {
lab=VDD}
N -180 -320 -180 -260 {
lab=N_bias}
N -180 -480 -180 -420 {
lab=N_bias}
N -180 -390 -120 -390 {
lab=N_bias}
N -10 -320 -10 -260 {
lab=P_bias}
N 630 -510 910 -510 {
lab=#net1}
N 520 -80 520 -50 {
lab=#net6}
N 390 -50 520 -50 {
lab=#net6}
N 390 -50 390 -40 {
lab=#net6}
N 700 -50 700 -30 {
lab=#net6}
N 520 -50 700 -50 {
lab=#net6}
N 700 30 700 60 {
lab=#net5}
N 700 60 810 60 {
lab=#net5}
N 810 -300 810 60 {
lab=#net5}
N 810 -300 910 -300 {
lab=#net5}
N 390 20 390 120 {
lab=GND}
N 390 120 770 120 {
lab=GND}
N 770 -280 770 120 {
lab=GND}
N 770 -280 1130 -280 {
lab=GND}
N 310 -10 350 -10 {
lab=V-}
N 310 -10 310 -0 {
lab=V-}
N 740 -0 750 0 {
lab=V+}
N 1010 -730 1010 -700 {
lab=VDD}
N -40 -750 -40 -720 {
lab=VDD}
N 1000 -170 1000 -120 {
lab=GND}
N 520 -150 520 -140 {
lab=VDD}
N 530 -240 580 -240 {
lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} -30 -170 0 0 {name=M9
L=0.6
W=2
body=GND
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -160 -170 0 1 {name=M10
L=0.6
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
C {sky130_fd_pr/pfet3_01v8.sym} -30 -550 0 0 {name=M16
L=0.6
W=6.66
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/isource.sym} -180 -660 0 0 {name=I0 value=10u}
C {devices/lab_pin.sym} -90 -170 3 0 {name=l17 sig_type=std_logic lab=N_bias}
C {sky130_fd_pr/nfet3_01v8.sym} 510 -270 0 0 {name=M13
L=0.6
W=2
body=GND
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 750 -410 3 0 {name=l7 sig_type=std_logic lab=V+
}
C {devices/lab_pin.sym} 430 -270 0 0 {name=l10 sig_type=std_logic lab=N_bias}
C {sky130_fd_pr/pfet3_01v8.sym} 930 -590 0 1 {name=M7
L=0.6
W=6.66
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1110 -590 0 0 {name=M8
L=0.6
W=6.66
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1010 -590 1 0 {name=l12 sig_type=std_logic lab=P_bias}
C {devices/lab_pin.sym} 1020 -480 3 0 {name=l13 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 1030 -350 3 0 {name=l14 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 1130 -440 0 0 {name=l15 sig_type=std_logic lab=VO}
C {devices/lab_pin.sym} -80 -480 2 0 {name=l11 sig_type=std_logic lab=P_bias}
C {devices/lab_pin.sym} 260 -410 3 0 {name=l20 sig_type=std_logic lab=V-
}
C {sky130_fd_pr/nfet3_01v8.sym} 370 -410 0 0 {name=M11
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
C {sky130_fd_pr/nfet3_01v8.sym} 650 -410 0 1 {name=M12
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
C {sky130_fd_pr/nfet3_01v8.sym} 930 -240 0 1 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 1110 -240 0 0 {name=M2
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
C {sky130_fd_pr/nfet3_01v8.sym} 930 -350 0 1 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} 1110 -350 0 0 {name=M4
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
C {sky130_fd_pr/pfet3_01v8.sym} 1110 -480 0 0 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} 930 -480 0 1 {name=M6
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
C {sky130_fd_pr/pfet3_01v8.sym} 500 -110 0 0 {name=M18
L=0.6
W=6.66
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 480 -110 0 0 {name=l21 sig_type=std_logic lab=P_bias}
C {sky130_fd_pr/pfet3_01v8.sym} 370 -10 0 0 {name=M14
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
C {sky130_fd_pr/pfet3_01v8.sym} 720 0 0 1 {name=M15
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
C {devices/lab_pin.sym} 750 0 3 0 {name=l22 sig_type=std_logic lab=V+
}
C {devices/lab_pin.sym} 310 0 3 0 {name=l28 sig_type=std_logic lab=V-
}
C {devices/ipin.sym} -410 -260 0 0 {name=p1 lab=V+
}
C {devices/ipin.sym} -410 -230 0 0 {name=p2 lab=V-
}
C {devices/opin.sym} -440 -90 0 0 {name=p3 lab=VO
}
C {devices/iopin.sym} 750 -780 0 0 {name=p4 lab=VDD}
C {devices/lab_pin.sym} -40 -750 1 0 {name=l1 sig_type=std_logic lab=VDD
}
C {devices/iopin.sym} 970 0 0 0 {name=p5 lab=GND}
C {devices/lab_pin.sym} 580 120 3 0 {name=l2 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 520 -150 1 0 {name=l4 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -110 -80 3 0 {name=l9 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 580 -240 3 0 {name=l16 sig_type=std_logic lab=GND
}
C {devices/ipin.sym} -410 -200 0 0 {name=p6 lab=VBN
}
C {devices/ipin.sym} -410 -170 0 0 {name=p7 lab=VBP
}
C {devices/lab_pin.sym} 1000 -120 3 0 {name=l3 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 1010 -730 1 0 {name=l5 sig_type=std_logic lab=VDD
}
