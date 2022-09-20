v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3580 -200 3670 -200 {
lab=Nbais}
N 3540 -170 3540 -110 {
lab=GND}
N 3540 -110 3690 -110 {
lab=GND}
N 3690 -110 3710 -110 {
lab=GND}
N 3710 -170 3710 -110 {
lab=GND}
N 3710 -290 3710 -230 {
lab=#net1}
N 3540 -290 3540 -230 {
lab=#net2}
N 3580 -320 3670 -320 {
lab=VBN}
N 3540 -420 3540 -350 {
lab=Nbais}
N 3540 -420 3600 -420 {
lab=Nbais}
N 3600 -420 3600 -200 {
lab=Nbais}
N 3710 -440 3710 -350 {
lab=VBp}
N 3540 -450 3540 -420 {
lab=Nbais}
N 3710 -550 3710 -500 {
lab=p_bais}
N 3540 -550 3540 -510 {
lab=VBN}
N 3710 -670 3710 -610 {
lab=#net3}
N 3540 -660 3540 -550 {
lab=VBN}
N 3710 -750 3710 -720 {
lab=VDD}
N 3540 -750 3540 -720 {
lab=VDD}
N 3540 -750 3710 -750 {
lab=VDD}
N 3640 -580 3670 -580 {
lab=VBp}
N 3640 -580 3640 -420 {
lab=VBp}
N 3640 -420 3710 -420 {
lab=VBp}
N 3600 -690 3670 -690 {
lab=p_bais}
N 3600 -690 3600 -540 {
lab=p_bais}
N 3600 -540 3710 -540 {
lab=p_bais}
N 3980 -200 4060 -200 {
lab=Nbais}
N 4100 -170 4100 -110 {
lab=GND}
N 4100 -270 4100 -230 {
lab=#net4}
N 4030 -300 4060 -300 {
lab=VBN}
N 4030 -310 4030 -300 {
lab=VBN}
N 4100 -390 4100 -330 {
lab=#net5}
N 4220 -470 4220 -400 {
lab=#net5}
N 4220 -400 4220 -390 {
lab=#net5}
N 4100 -390 4220 -390 {
lab=#net5}
N 3930 -390 4100 -390 {
lab=#net5}
N 3930 -460 3930 -390 {
lab=#net5}
N 4260 -500 4330 -500 {
lab=DN}
N 3820 -490 3890 -490 {
lab=DNB}
N 4220 -580 4220 -530 {
lab=VOP}
N 3930 -580 3930 -520 {
lab=VON}
N 4220 -690 4220 -640 {
lab=#net6}
N 3930 -690 4220 -690 {
lab=#net6}
N 3930 -690 3930 -640 {
lab=#net6}
N 4260 -610 4330 -610 {
lab=UBP}
N 3830 -610 3900 -610 {
lab=UP}
N 4050 -710 4050 -690 {
lab=#net6}
N 4050 -820 4050 -770 {
lab=#net7}
N 4280 -320 4330 -320 {
lab=DN}
N 4440 -320 4500 -320 {
lab=DNB}
N 3930 -560 4030 -560 {
lab=VON}
N 4220 -550 4450 -550 {
lab=VOP}
N 3540 -540 3580 -540 {
lab=VBN}
N 3580 -540 3580 -450 {
lab=VBN}
N 3580 -450 3620 -450 {
lab=VBN}
N 3620 -450 3620 -320 {
lab=VBN}
N 4240 -770 4280 -770 {
lab=GND}
N 4300 -940 4300 -880 {
lab=U}
N 4450 -550 4490 -550 {
lab=VOP}
N 4330 -500 4370 -500 {
lab=DN}
N 4370 -500 4370 -480 {
lab=DN}
N 3830 -650 3830 -610 {
lab=UP}
C {sky130_fd_pr/nfet3_01v8.sym} 3690 -200 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 3560 -200 0 1 {name=M2
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
C {sky130_fd_pr/nfet3_01v8.sym} 3690 -320 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} 3560 -320 0 1 {name=M4
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
C {devices/res.sym} 3540 -480 0 0 {name=R1
value=25k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 3710 -470 0 0 {name=R2
value=12.5k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet3_01v8.sym} 3690 -580 0 0 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} 3690 -690 0 0 {name=M6
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
C {devices/isource.sym} 3540 -690 0 0 {name=I0 value=10u}
C {devices/lab_pin.sym} 3650 -320 1 0 {name=l1 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 3650 -200 1 0 {name=l2 sig_type=std_logic lab=Nbais}
C {devices/lab_pin.sym} 3640 -480 0 0 {name=l3 sig_type=std_logic lab=VBp}
C {devices/lab_pin.sym} 3600 -640 2 0 {name=l4 sig_type=std_logic lab=p_bais}
C {sky130_fd_pr/nfet3_01v8.sym} 4080 -200 0 0 {name=M7
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
C {devices/lab_pin.sym} 3980 -200 0 0 {name=l6 sig_type=std_logic lab=Nbais}
C {sky130_fd_pr/nfet3_01v8.sym} 4080 -300 0 0 {name=M8
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
C {devices/lab_pin.sym} 4030 -310 1 0 {name=l9 sig_type=std_logic lab=VBN}
C {sky130_fd_pr/nfet3_01v8.sym} 3910 -490 0 0 {name=M9
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
C {sky130_fd_pr/nfet3_01v8.sym} 4240 -500 0 1 {name=M10
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
C {sky130_fd_pr/pfet3_01v8.sym} 4240 -610 0 1 {name=M11
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
C {sky130_fd_pr/pfet3_01v8.sym} 3910 -610 0 0 {name=M12
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
C {sky130_fd_pr/pfet3_01v8.sym} 4030 -740 0 0 {name=M13
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
C {sky130_fd_pr/pfet3_01v8.sym} 4030 -850 0 0 {name=M14
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
C {devices/lab_pin.sym} 4010 -850 0 0 {name=l11 sig_type=std_logic lab=p_bais}
C {devices/lab_pin.sym} 4010 -740 0 0 {name=l12 sig_type=std_logic lab=VBp}
C {devices/lab_pin.sym} 3820 -490 3 0 {name=l14 sig_type=std_logic lab=DNB}
C {devices/lab_pin.sym} 4330 -610 3 0 {name=l16 sig_type=std_logic lab=UBP}
C {devices/lab_pin.sym} 4280 -320 0 0 {name=l17 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} 4500 -320 3 0 {name=l18 sig_type=std_logic lab=DNB}
C {devices/lab_pin.sym} 4340 -160 0 0 {name=l22 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} 4450 -160 2 0 {name=l23 sig_type=std_logic lab=UBP}
C {devices/lab_pin.sym} 4030 -560 3 0 {name=l25 sig_type=std_logic lab=VON}
C {../../inverter/xschem/inverter.sym} 1330 290 0 0 {name=X1}
C {../../inverter/xschem/inverter.sym} 1320 130 0 0 {name=X2}
C {../../OTA/xschem/OTA.sym} 4180 -830 0 0 {name=X3}
C {devices/lab_pin.sym} 4230 -800 0 0 {name=l33 sig_type=std_logic lab=VON}
C {devices/lab_pin.sym} 4230 -830 0 0 {name=l34 sig_type=std_logic lab=VOP}
C {devices/lab_pin.sym} 4330 -820 2 0 {name=l35 sig_type=std_logic lab=VON}
C {devices/lab_pin.sym} 4300 -770 3 0 {name=l41 sig_type=std_logic lab=U}
C {devices/iopin.sym} 4010 -1010 3 0 {name=p4 lab=VDD}
C {devices/iopin.sym} 4060 90 1 0 {name=p5 lab=GND}
C {devices/lab_pin.sym} 4380 -130 3 0 {name=l19 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 4370 -290 3 0 {name=l21 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 4380 -190 1 0 {name=l24 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 4370 -350 1 0 {name=l37 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 4100 -110 3 0 {name=l8 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 4050 -880 1 0 {name=l10 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 3630 -750 1 0 {name=l7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 3630 -110 3 0 {name=l5 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 4240 -770 3 0 {name=l31 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 4270 -880 1 0 {name=l20 sig_type=std_logic lab=VDD
}
C {devices/opin.sym} 4480 -550 0 0 {name=p1 lab=VOP}
C {devices/ipin.sym} 4370 -490 3 0 {name=p2 lab=DN}
C {devices/ipin.sym} 3830 -640 1 0 {name=p3 lab=UP}
C {devices/ipin.sym} 4300 -930 1 0 {name=p6 lab=U}
