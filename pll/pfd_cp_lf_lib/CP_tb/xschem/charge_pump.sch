v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -770 170 -680 170 {
lab=Nbais}
N -810 200 -810 260 {
lab=GND}
N -810 260 -660 260 {
lab=GND}
N -660 260 -640 260 {
lab=GND}
N -640 200 -640 260 {
lab=GND}
N -640 80 -640 140 {
lab=#net1}
N -810 80 -810 140 {
lab=#net2}
N -770 50 -680 50 {
lab=VBN}
N -810 -50 -810 20 {
lab=Nbais}
N -810 -50 -750 -50 {
lab=Nbais}
N -750 -50 -750 170 {
lab=Nbais}
N -640 -70 -640 20 {
lab=VBp}
N -810 -80 -810 -50 {
lab=Nbais}
N -640 -180 -640 -130 {
lab=p_bais}
N -810 -180 -810 -140 {
lab=VBN}
N -640 -300 -640 -240 {
lab=#net3}
N -810 -290 -810 -180 {
lab=VBN}
N -640 -380 -640 -350 {
lab=VDD}
N -810 -380 -810 -350 {
lab=VDD}
N -810 -380 -640 -380 {
lab=VDD}
N -710 -210 -680 -210 {
lab=VBp}
N -710 -210 -710 -50 {
lab=VBp}
N -710 -50 -640 -50 {
lab=VBp}
N -750 -320 -680 -320 {
lab=p_bais}
N -750 -320 -750 -170 {
lab=p_bais}
N -750 -170 -640 -170 {
lab=p_bais}
N -370 170 -290 170 {
lab=Nbais}
N -250 200 -250 260 {
lab=GND}
N -250 100 -250 140 {
lab=#net4}
N -320 70 -290 70 {
lab=VBN}
N -320 60 -320 70 {
lab=VBN}
N -250 -20 -250 40 {
lab=#net5}
N -130 -100 -130 -30 {
lab=#net5}
N -130 -30 -130 -20 {
lab=#net5}
N -250 -20 -130 -20 {
lab=#net5}
N -420 -20 -250 -20 {
lab=#net5}
N -420 -90 -420 -20 {
lab=#net5}
N -90 -130 -20 -130 {
lab=DN}
N -530 -120 -460 -120 {
lab=DNB}
N -130 -210 -130 -160 {
lab=VO}
N -130 -320 -130 -270 {
lab=#net6}
N -420 -320 -130 -320 {
lab=#net6}
N -420 -320 -420 -270 {
lab=#net6}
N -90 -240 -20 -240 {
lab=UP}
N -520 -240 -450 -240 {
lab=UBP}
N -300 -340 -300 -320 {
lab=#net6}
N -300 -450 -300 -400 {
lab=#net7}
N -130 -180 100 -180 {
lab=VO}
N -810 -170 -770 -170 {
lab=VBN}
N -770 -170 -770 -80 {
lab=VBN}
N -770 -80 -730 -80 {
lab=VBN}
N -730 -80 -730 50 {
lab=VBN}
N 430 0 480 0 {
lab=DN}
N 590 0 650 0 {
lab=DNB}
N -420 -210 -380 -210 {
lab=GND}
N 100 -180 140 -180 {
lab=VO}
C {sky130_fd_pr/nfet3_01v8.sym} -660 170 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} -790 170 0 1 {name=M2
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
C {sky130_fd_pr/nfet3_01v8.sym} -660 50 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} -790 50 0 1 {name=M4
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
C {devices/res.sym} -810 -110 0 0 {name=R1
value=25k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -640 -100 0 0 {name=R2
value=12.5k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet3_01v8.sym} -660 -210 0 0 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} -660 -320 0 0 {name=M6
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
C {devices/isource.sym} -810 -320 0 0 {name=I0 value=10u}
C {devices/lab_pin.sym} -700 50 1 0 {name=l1 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} -700 170 1 0 {name=l2 sig_type=std_logic lab=Nbais}
C {devices/lab_pin.sym} -710 -110 0 0 {name=l3 sig_type=std_logic lab=VBp}
C {devices/lab_pin.sym} -750 -270 2 0 {name=l4 sig_type=std_logic lab=p_bais}
C {sky130_fd_pr/nfet3_01v8.sym} -270 170 0 0 {name=M7
L=0.6
W=2
body=GND
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -370 170 0 0 {name=l6 sig_type=std_logic lab=Nbais}
C {sky130_fd_pr/nfet3_01v8.sym} -270 70 0 0 {name=M8
L=0.6
W=2
body=GND
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -320 60 1 0 {name=l9 sig_type=std_logic lab=VBN}
C {sky130_fd_pr/nfet3_01v8.sym} -440 -120 0 0 {name=M9
L=0.15
W=4
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
C {sky130_fd_pr/nfet3_01v8.sym} -110 -130 0 1 {name=M10
L=0.15
W=4
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
C {sky130_fd_pr/pfet3_01v8.sym} -110 -240 0 1 {name=M11
L=0.15
W=10
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
C {sky130_fd_pr/pfet3_01v8.sym} -440 -240 0 0 {name=M12
L=0.15
W=10
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
C {sky130_fd_pr/pfet3_01v8.sym} -320 -370 0 0 {name=M13
L=0.6
W=6.66
body=VDD
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -320 -480 0 0 {name=M14
L=0.6
W=6.66
body=VDD
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -340 -480 0 0 {name=l11 sig_type=std_logic lab=p_bais}
C {devices/lab_pin.sym} -340 -370 0 0 {name=l12 sig_type=std_logic lab=VBp}
C {devices/lab_pin.sym} -20 -130 2 0 {name=l13 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} -530 -120 3 0 {name=l14 sig_type=std_logic lab=DNB}
C {devices/lab_pin.sym} -20 -240 3 0 {name=l15 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} -520 -240 3 0 {name=l16 sig_type=std_logic lab=UBP}
C {devices/lab_pin.sym} 140 -180 3 0 {name=l38 sig_type=std_logic lab=VO}
C {devices/lab_pin.sym} -250 260 3 0 {name=l8 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} -300 -510 1 0 {name=l10 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -720 -380 1 0 {name=l7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -720 260 3 0 {name=l5 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 430 0 0 0 {name=l17 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} 650 0 3 0 {name=l18 sig_type=std_logic lab=DNB}
C {devices/lab_pin.sym} 490 160 0 0 {name=l22 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} 600 160 2 0 {name=l23 sig_type=std_logic lab=UBP}
C {inverter.sym} -2520 610 0 0 {name=X1}
C {inverter.sym} -2530 450 0 0 {name=X2}
C {devices/lab_pin.sym} 530 190 3 0 {name=l19 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 520 30 3 0 {name=l21 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 530 130 1 0 {name=l24 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 520 -30 1 0 {name=l37 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -420 -150 2 0 {name=l20 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -380 -210 2 0 {name=l25 sig_type=std_logic lab=GND
}
C {devices/iopin.sym} -1590 240 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -1580 280 0 0 {name=p5 lab=GND}
C {devices/opin.sym} -1380 220 0 0 {name=p1 lab=VO}
C {devices/ipin.sym} -1310 260 0 0 {name=p2 lab=DN}
C {devices/ipin.sym} -1310 300 0 0 {name=p3 lab=UP}
