v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -140 -150 -140 -110 {
lab=yp}
N -140 -50 -140 60 {
lab=#net1}
N 130 -150 130 -110 {
lab=yn}
N 130 -50 130 60 {
lab=#net2}
N 130 -50 130 -20 {
lab=#net2}
N 50 -20 130 -20 {
lab=#net2}
N -10 -130 50 -20 {
lab=#net2}
N -40 -180 -10 -130 {
lab=#net2}
N -100 -180 -40 -180 {
lab=#net2}
N 20 -180 90 -180 {
lab=#net1}
N -70 -20 20 -180 {
lab=#net1}
N -140 -20 -70 -20 {
lab=#net1}
N 130 120 130 150 {
lab=GND}
N -140 150 130 150 {
lab=GND}
N -140 120 -140 150 {
lab=GND}
N 130 -120 290 -120 {
lab=yn}
N -260 -120 -140 -120 {
lab=yp}
N 130 -270 130 -210 {
lab=VDD}
N -140 -270 130 -270 {
lab=VDD}
N -140 -270 -140 -210 {
lab=VDD}
N 170 90 270 90 {
lab=xp}
N -240 90 -180 90 {
lab=xn}
N 270 90 310 90 {
lab=xp}
N -310 90 -240 90 {
lab=xn}
N -350 -120 -260 -120 {
lab=yp}
N 290 -120 580 -120 {
lab=yn}
N -330 90 -310 90 {
lab=xn}
N 310 90 400 90 {
lab=xp}
N 580 -120 600 -120 {
lab=yn}
N -510 -120 -350 -120 {
lab=yp}
N -530 -120 -510 -120 {
lab=yp}
N -350 90 -330 90 {
lab=xn}
N -360 90 -350 90 {
lab=xn}
N 400 90 420 90 {
lab=xp}
N 410 90 420 90 {
lab=xp}
N -530 -120 -520 -120 {
lab=yp}
N 600 -120 630 -120 {
lab=yn}
N 620 -120 630 -120 {
lab=yn}
N -360 90 -350 90 {
lab=xn}
N 470 -150 470 -120 {
lab=yn}
N 280 -150 280 -120 {
lab=yn}
N -280 -150 -280 -120 {
lab=yp}
N -440 -150 -440 -120 {
lab=yp}
N -440 -270 -140 -270 {
lab=VDD}
N -440 -270 -440 -210 {
lab=VDD}
N -280 -270 -280 -210 {
lab=VDD}
N 320 -180 360 -180 {
lab=vf}
N 510 -180 560 -180 {
lab=vc}
N 130 -270 470 -270 {
lab=VDD}
N 470 -270 470 -210 {
lab=VDD}
N 280 -270 280 -210 {
lab=VDD}
N -320 -340 -320 -180 {
lab=vf}
N -320 -340 320 -340 {
lab=vf}
N 320 -340 320 -180 {
lab=vf}
N 510 -370 510 -180 {
lab=vc}
N -490 -370 510 -370 {
lab=vc}
N -490 -370 -490 -180 {
lab=vc}
N -490 -180 -480 -180 {
lab=vc}
C {devices/res.sym} -140 -80 0 0 {name=R2
value=800
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 130 -80 0 0 {name=R1
value=800
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -10 150 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 0 -270 0 0 {name=l6 lab=VDD}
C {devices/iopin.sym} -520 -120 2 0 {name=p4 lab=yp}
C {devices/iopin.sym} -350 90 2 0 {name=p3 lab=xn}
C {devices/iopin.sym} 410 90 0 0 {name=p6 lab=xp}
C {devices/iopin.sym} 620 -120 0 0 {name=p7 lab=yn}
C {devices/ipin.sym} 350 -180 0 1 {name=p5 lab=vf}
C {devices/ipin.sym} 550 -180 0 1 {name=p8 lab=vc}
C {sky130_fd_pr/nfet3_01v8.sym} -160 90 0 0 {name=M1
L=0.15
W=2.6
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
C {sky130_fd_pr/nfet3_01v8.sym} 150 90 0 1 {name=M2
L=0.15
W=2.6
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
C {sky130_fd_pr/pfet3_01v8.sym} 110 -180 0 0 {name=M3
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
C {sky130_fd_pr/pfet3_01v8.sym} -300 -180 0 0 {name=M4
L=0.15
W=.6
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
C {sky130_fd_pr/pfet3_01v8.sym} -460 -180 0 0 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} -120 -180 0 1 {name=M6
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
C {sky130_fd_pr/pfet3_01v8.sym} 300 -180 0 1 {name=M7
L=0.15
W=.6
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
C {sky130_fd_pr/pfet3_01v8.sym} 490 -180 0 1 {name=M8
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
