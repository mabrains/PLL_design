v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1080 -120 -1080 -50 {
lab=x}
N -920 -120 -920 -50 {
lab=y}
N -750 -120 -750 -50 {
lab=d}
N -800 -150 -790 -150 {
lab=y}
N -800 -150 -800 -20 {
lab=y}
N -800 -20 -790 -20 {
lab=y}
N -970 -20 -960 -20 {
lab=x}
N -970 -150 -970 -20 {
lab=x}
N -970 -150 -960 -150 {
lab=x}
N -920 -90 -800 -90 {
lab=y}
N -1080 -90 -970 -90 {
lab=x}
N -1140 -150 -1120 -150 {
lab=d}
N -1140 -150 -1140 -20 {
lab=d}
N -1140 -20 -1120 -20 {
lab=d}
N -1160 -80 -1160 40 {
lab=d}
N -1160 -80 -1140 -80 {
lab=d}
N -750 -90 -720 -90 {
lab=d}
N -720 -90 -720 40 {
lab=d}
N -1160 40 -720 40 {
lab=d}
N -1080 -210 -1080 -180 {
lab=VDD}
N -1080 -210 -750 -210 {
lab=VDD}
N -750 -210 -750 -180 {
lab=VDD}
N -920 -210 -920 -180 {
lab=VDD}
N -920 -220 -920 -210 {
lab=VDD}
N -920 -230 -920 -220 {
lab=VDD}
N -920 10 -920 20 {
lab=GND}
N -1080 20 -920 20 {
lab=GND}
N -1080 10 -1080 20 {
lab=GND}
N -920 20 -750 20 {
lab=GND}
N -750 10 -750 20 {
lab=GND}
N -920 20 -920 60 {
lab=GND}
N -1200 -80 -1160 -80 {
lab=d}
N -1020 -110 -1020 -90 {
lab=x}
N -850 -110 -850 -90 {
lab=y}
N -570 -120 -570 -50 {
lab=vref}
N -620 -150 -610 -150 {
lab=vref}
N -620 -150 -620 -20 {
lab=vref}
N -620 -20 -610 -20 {
lab=vref}
N -570 -210 -570 -180 {
lab=VDD}
N -570 10 -570 40 {
lab=GND}
N -620 -90 -570 -90 {
lab=vref}
N -570 -90 -520 -90 {
lab=vref}
N -320 -270 -270 -270 {
lab=vctrl}
N -230 40 -230 90 {
lab=GND}
N -150 -30 -150 10 {
lab=vnmos}
N -230 -30 -150 -30 {
lab=vnmos}
N -230 -330 -230 -300 {
lab=VDD}
N -230 -240 -230 -220 {
lab=vnmos}
N -230 -220 -230 -30 {
lab=vnmos}
N -190 10 -150 10 {
lab=vnmos}
N 40 -30 40 -10 {
lab=vnmos}
N -10 -30 40 -30 {
lab=vnmos}
N -10 -30 -10 20 {
lab=vnmos}
N -10 20 0 20 {
lab=vnmos}
N -150 -30 -10 -30 {
lab=vnmos}
N 40 50 40 70 {
lab=GND}
N -70 -60 -70 -50 {
lab=vnmos}
N 90 -60 90 -50 {
lab=vnmos}
N -70 -50 90 -50 {
lab=vnmos}
N 40 -50 40 -30 {
lab=vnmos}
N -70 -210 -70 -120 {
lab=#net1}
N 90 -210 90 -120 {
lab=vpmos}
N -140 -90 -110 -90 {
lab=vref}
N 130 -90 190 -90 {
lab=x}
N -130 -240 -110 -240 {
lab=#net1}
N -130 -240 -130 -190 {
lab=#net1}
N -130 -190 -70 -190 {
lab=#net1}
N 90 -290 90 -270 {
lab=VDD}
N -70 -290 90 -290 {
lab=VDD}
N -70 -290 -70 -270 {
lab=VDD}
N 10 -310 10 -290 {
lab=VDD}
N 40 -30 160 -30 {
lab=vnmos}
N 160 -30 160 10 {
lab=vnmos}
N 160 10 200 10 {
lab=vnmos}
N 10 -330 10 -310 {
lab=VDD}
N -230 -330 10 -330 {
lab=VDD}
N 50 -240 50 -190 {
lab=vpmos}
N 50 -190 90 -190 {
lab=vpmos}
N -920 -320 -920 -230 {
lab=VDD}
N 90 -190 190 -190 {
lab=vpmos}
N -230 -30 -230 -20 {
lab=vnmos}
N -230 70 -20 70 {
lab=GND}
N -20 70 40 70 {
lab=GND}
N -1240 -80 -1200 -80 {
lab=d}
C {sky130_fd_pr/nfet3_01v8.sym} -1100 -20 0 0 {name=M6
L=0.15
W=.5
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
C {sky130_fd_pr/nfet3_01v8.sym} -940 -20 0 0 {name=M8
L=0.15
W=.5
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
C {sky130_fd_pr/nfet3_01v8.sym} -770 -20 0 0 {name=M19
L=0.15
W=.5
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
C {sky130_fd_pr/pfet3_01v8.sym} -1100 -150 0 0 {name=M9
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
C {sky130_fd_pr/pfet3_01v8.sym} -940 -150 0 0 {name=M10
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
C {sky130_fd_pr/pfet3_01v8.sym} -770 -150 0 0 {name=M11
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
C {devices/gnd.sym} -920 60 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} -1020 -110 2 1 {name=l33 sig_type=std_logic lab=x}
C {devices/lab_pin.sym} -850 -110 2 1 {name=l34 sig_type=std_logic lab=y}
C {sky130_fd_pr/nfet3_01v8.sym} -590 -20 0 0 {name=M12
L=0.15
W=.5
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
C {sky130_fd_pr/pfet3_01v8.sym} -590 -150 0 0 {name=M13
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
C {devices/lab_pin.sym} -520 -90 2 0 {name=l35 sig_type=std_logic lab=vref}
C {devices/vdd.sym} -570 -210 0 0 {name=l36 lab=VDD}
C {devices/gnd.sym} -570 40 0 0 {name=l37 lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} 20 20 0 0 {name=M16
L=20
W=.5
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
C {sky130_fd_pr/nfet3_01v8.sym} -210 10 0 1 {name=M4
L=.15
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
C {devices/lab_pin.sym} -320 -270 0 0 {name=l28 sig_type=std_logic lab=vctrl}
C {devices/gnd.sym} -230 90 0 0 {name=l38 lab=GND}
C {devices/lab_pin.sym} -140 -90 2 1 {name=l39 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 190 -90 2 0 {name=l40 sig_type=std_logic lab=x}
C {devices/lab_pin.sym} 200 10 2 0 {name=l41 sig_type=std_logic lab=vnmos}
C {devices/lab_pin.sym} 190 -190 2 0 {name=l42 sig_type=std_logic lab=vpmos}
C {devices/vdd.sym} -110 -330 0 0 {name=l43 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 110 -90 0 1 {name=M5
L=40
W=.5
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
C {sky130_fd_pr/nfet3_01v8.sym} -90 -90 0 0 {name=M7
L=40
W=.5
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
C {sky130_fd_pr/pfet3_01v8.sym} -90 -240 0 0 {name=M14
L=.15
W=15
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
C {sky130_fd_pr/pfet3_01v8.sym} 70 -240 0 0 {name=M15
L=.15
W=15
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
C {sky130_fd_pr/pfet3_01v8.sym} -250 -270 0 0 {name=M3
L=.15
W=6
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
C {devices/gnd.sym} -570 40 0 0 {name=l47 lab=GND}
C {devices/vdd.sym} -920 -320 0 0 {name=l31 lab=VDD}
C {devices/lab_pin.sym} -1240 -80 2 1 {name=l32 sig_type=std_logic lab=d}
