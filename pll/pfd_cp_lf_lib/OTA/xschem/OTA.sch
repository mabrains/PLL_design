v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
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
lab=Nbais}
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
lab=VBp}
N 1130 -560 1130 -510 {
lab=#net3}
N 910 -560 910 -510 {
lab=#net1}
N 950 -590 1090 -590 {
lab=p_bais}
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
N 1000 -170 1000 -120 {
lab=GND}
N 520 -150 520 -140 {
lab=VDD}
N 530 -240 580 -240 {
lab=GND}
N -70 -120 20 -120 {
lab=Nbais}
N -110 -90 -110 -30 {
lab=GND}
N -110 -30 40 -30 {
lab=GND}
N 40 -30 60 -30 {
lab=GND}
N 60 -90 60 -30 {
lab=GND}
N 60 -210 60 -150 {
lab=#net7}
N -110 -210 -110 -150 {
lab=#net8}
N -70 -240 20 -240 {
lab=VBN}
N -110 -340 -110 -270 {
lab=Nbais}
N -110 -340 -50 -340 {
lab=Nbais}
N -50 -340 -50 -120 {
lab=Nbais}
N 60 -360 60 -270 {
lab=VBp}
N -110 -370 -110 -340 {
lab=Nbais}
N 60 -470 60 -420 {
lab=p_bais}
N -110 -470 -110 -430 {
lab=VBN}
N 60 -590 60 -530 {
lab=#net9}
N -110 -580 -110 -470 {
lab=VBN}
N 60 -670 60 -640 {
lab=VDD}
N -110 -670 -110 -640 {
lab=VDD}
N -110 -670 60 -670 {
lab=VDD}
N -10 -500 20 -500 {
lab=VBp}
N -10 -500 -10 -340 {
lab=VBp}
N -10 -340 60 -340 {
lab=VBp}
N -50 -610 20 -610 {
lab=p_bais}
N -50 -610 -50 -460 {
lab=p_bais}
N -50 -460 60 -460 {
lab=p_bais}
N -110 -460 -70 -460 {
lab=VBN}
N -70 -460 -70 -370 {
lab=VBN}
N -70 -370 -30 -370 {
lab=VBN}
N -30 -370 -30 -240 {
lab=VBN}
N -150 -400 -130 -400 {
lab=VDD}
N 40 -390 110 -390 {
lab=VDD}
N 110 -400 110 -390 {
lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 510 -270 0 0 {name=M13
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
C {devices/lab_pin.sym} 750 -410 3 0 {name=l7 sig_type=std_logic lab=V+
}
C {sky130_fd_pr/pfet3_01v8.sym} 930 -590 0 1 {name=M7
L=0.6
W=4
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
W=4
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
C {devices/lab_pin.sym} 1030 -350 3 0 {name=l14 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 1130 -440 0 0 {name=l15 sig_type=std_logic lab=VO}
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
L=1
W=1.3
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
L=1
W=1.3
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
C {sky130_fd_pr/pfet3_01v8.sym} 370 -10 0 0 {name=M14
L=0.15
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
C {sky130_fd_pr/pfet3_01v8.sym} 720 0 0 1 {name=M15
L=0.15
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
C {devices/lab_pin.sym} 750 0 3 0 {name=l22 sig_type=std_logic lab=V+
}
C {devices/lab_pin.sym} 310 0 3 0 {name=l28 sig_type=std_logic lab=V-
}
C {devices/iopin.sym} 750 -780 0 0 {name=p4 lab=VDD}
C {devices/lab_pin.sym} 580 120 3 0 {name=l2 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 520 -150 1 0 {name=l4 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 580 -240 3 0 {name=l16 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 1000 -120 3 0 {name=l3 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 1010 -730 1 0 {name=l5 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/nfet3_01v8.sym} 40 -120 0 0 {name=M9
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
C {sky130_fd_pr/nfet3_01v8.sym} -90 -120 0 1 {name=M10
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
C {sky130_fd_pr/nfet3_01v8.sym} 40 -240 0 0 {name=M16
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
C {sky130_fd_pr/nfet3_01v8.sym} -90 -240 0 1 {name=M17
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
C {sky130_fd_pr/pfet3_01v8.sym} 40 -500 0 0 {name=M19
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
C {sky130_fd_pr/pfet3_01v8.sym} 40 -610 0 0 {name=M20
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
C {devices/isource.sym} -110 -610 0 0 {name=I0 value=10u}
C {devices/lab_pin.sym} 0 -240 1 0 {name=l1 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 0 -120 1 0 {name=l6 sig_type=std_logic lab=Nbais}
C {devices/lab_pin.sym} -10 -400 0 0 {name=l8 sig_type=std_logic lab=VBp}
C {devices/lab_pin.sym} -50 -560 2 0 {name=l9 sig_type=std_logic lab=p_bais}
C {devices/lab_pin.sym} -20 -670 1 0 {name=l11 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -20 -30 3 0 {name=l17 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 430 -270 3 0 {name=l18 sig_type=std_logic lab=Nbais}
C {devices/lab_pin.sym} 1060 -480 3 0 {name=l10 sig_type=std_logic lab=VBp}
C {devices/lab_pin.sym} 990 -590 1 0 {name=l12 sig_type=std_logic lab=p_bais}
C {devices/lab_pin.sym} 480 -110 0 0 {name=l13 sig_type=std_logic lab=p_bais}
C {devices/ipin.sym} 230 -780 0 0 {name=p6 lab=V+
}
C {devices/ipin.sym} 230 -750 0 0 {name=p7 lab=V-
}
C {devices/opin.sym} 190 -650 0 0 {name=p8 lab=VO
}
C {devices/iopin.sym} 190 -700 0 0 {name=p9 lab=GND}
C {sky130_fd_pr/res_iso_pw.sym} -110 -400 0 0 {name=R1
rho=3050
W=2.65
L=20
model=res_iso_pw
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_iso_pw.sym} 60 -390 0 0 {name=R2
rho=3050
W=2.65
L=10
model=res_iso_pw
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -150 -400 1 0 {name=l19 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 110 -400 1 0 {name=l21 sig_type=std_logic lab=VDD
}
