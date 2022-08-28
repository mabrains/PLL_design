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
lab=UB}
N 4050 -710 4050 -690 {
lab=#net6}
N 4050 -820 4050 -770 {
lab=#net7}
N 4250 -200 4300 -200 {
lab=DN}
N 4410 -200 4470 -200 {
lab=DNB}
N 3930 -560 4030 -560 {
lab=VON}
N 4220 -550 4450 -550 {
lab=VOP}
N 3230 -480 3230 -410 {
lab=UB}
N 3220 -700 3220 -620 {
lab=DN}
N 3220 -620 3220 -610 {
lab=DN}
N 3540 -540 3580 -540 {
lab=VBN}
N 3580 -540 3580 -450 {
lab=VBN}
N 3580 -450 3620 -450 {
lab=VBN}
N 3620 -450 3620 -320 {
lab=VBN}
N 3040 -130 3080 -130 {
lab=GND}
N 3090 -470 3090 -420 {
lab=U}
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
C {devices/gnd.sym} 3610 -110 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 3630 -750 0 0 {name=l7 lab=VDD}
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
C {devices/gnd.sym} 4100 -110 0 0 {name=l8 lab=GND}
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
C {devices/vdd.sym} 4050 -880 0 0 {name=l10 lab=VDD}
C {devices/lab_pin.sym} 4010 -850 0 0 {name=l11 sig_type=std_logic lab=p_bais}
C {devices/lab_pin.sym} 4010 -740 0 0 {name=l12 sig_type=std_logic lab=VBp}
C {devices/lab_pin.sym} 4330 -500 2 0 {name=l13 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} 3820 -490 3 0 {name=l14 sig_type=std_logic lab=DNB}
C {devices/lab_pin.sym} 3830 -610 3 0 {name=l15 sig_type=std_logic lab=UB}
C {devices/lab_pin.sym} 4330 -610 3 0 {name=l16 sig_type=std_logic lab=UBP}
C {devices/lab_pin.sym} 4250 -200 0 0 {name=l17 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} 4470 -200 3 0 {name=l18 sig_type=std_logic lab=DNB}
C {devices/gnd.sym} 4350 -10 0 0 {name=l19 lab=GND}
C {devices/vdd.sym} 4350 -70 0 0 {name=l21 lab=VDD}
C {devices/lab_pin.sym} 4310 -40 0 0 {name=l22 sig_type=std_logic lab=UB}
C {devices/lab_pin.sym} 4420 -40 2 0 {name=l23 sig_type=std_logic lab=UBP}
C {devices/lab_pin.sym} 4030 -560 3 0 {name=l25 sig_type=std_logic lab=VON}
C {devices/vsource.sym} 3360 -370 0 0 {name=Vdd
value=1.8}
C {devices/gnd.sym} 3360 -340 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} 3360 -400 0 0 {name=l27 lab=VDD}
C {devices/vsource.sym} 3230 -385 0 0 {name=Vin
value=1.8
}
C {devices/gnd.sym} 3230 -355 0 0 {name=l28 lab=GND}
C {devices/vsource.sym} 3220 -585 0 0 {name=Vin1
value=1.8
}
C {devices/gnd.sym} 3220 -555 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} 3230 -480 1 0 {name=l32 sig_type=std_logic lab=UB}
C {devices/lab_pin.sym} 3220 -700 1 0 {name=l29 sig_type=std_logic lab=DN}
C {devices/vsource.sym} 4450 -520 0 0 {name=VOP value=0.9}
C {devices/gnd.sym} 4450 -490 0 0 {name=l36 lab=GND}
C {sky130_fd_pr/corner.sym} 4755 -515 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 4790 -300 0 0 {name=spice only_toplevel=false value=".dc VOP 0 1.8 0.1
.save all"}
C {devices/gnd.sym} 4340 -170 0 0 {name=l37 lab=GND}
C {devices/lab_pin.sym} 4390 -550 3 0 {name=l38 sig_type=std_logic lab=VOP}
C {inverter.sym} 1300 410 0 0 {name=X1}
C {inverter.sym} 1290 250 0 0 {name=X2}
C {devices/vdd.sym} 4340 -230 0 0 {name=l24 lab=VDD}
C {OTA.sym} 2980 -190 0 0 {name=X3}
C {devices/vdd.sym} 3070 -240 0 0 {name=l20 lab=VDD}
C {devices/gnd.sym} 3040 -130 0 0 {name=l31 lab=GND}
C {devices/lab_pin.sym} 3030 -160 0 0 {name=l33 sig_type=std_logic lab=VON}
C {devices/lab_pin.sym} 3030 -190 0 0 {name=l34 sig_type=std_logic lab=VOP}
C {devices/lab_pin.sym} 3130 -180 2 0 {name=l35 sig_type=std_logic lab=VON}
C {devices/vsource.sym} 3090 -395 0 0 {name=Vin2
value=0.9
}
C {devices/gnd.sym} 3090 -365 0 0 {name=l39 lab=GND}
C {devices/lab_pin.sym} 3090 -470 1 0 {name=l40 sig_type=std_logic lab=U}
C {devices/lab_pin.sym} 3100 -130 3 0 {name=l41 sig_type=std_logic lab=U}
C {devices/lab_pin.sym} 3100 -240 1 0 {name=l42 sig_type=std_logic lab=U}
