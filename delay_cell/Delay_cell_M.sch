v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -160 -110 -160 -70 {
lab=yp}
N -160 -10 -160 100 {
lab=#net1}
N 110 -110 110 -70 {
lab=yn}
N 110 -10 110 100 {
lab=#net2}
N 110 -10 110 20 {
lab=#net2}
N 30 20 110 20 {
lab=#net2}
N -30 -90 30 20 {
lab=#net2}
N -60 -140 -30 -90 {
lab=#net2}
N -120 -140 -60 -140 {
lab=#net2}
N 0 -140 70 -140 {
lab=#net1}
N -90 20 0 -140 {
lab=#net1}
N -160 20 -90 20 {
lab=#net1}
N 110 160 110 190 {
lab=GND}
N -160 190 110 190 {
lab=GND}
N -160 160 -160 190 {
lab=GND}
N 110 -80 250 -80 {
lab=yn}
N -280 -80 -160 -80 {
lab=yp}
N 110 -230 110 -170 {
lab=VDD}
N -160 -230 110 -230 {
lab=VDD}
N -160 -230 -160 -170 {
lab=VDD}
N 150 130 250 130 {
lab=xp}
N -260 130 -200 130 {
lab=xn}
N 250 130 290 130 {
lab=xp}
N -330 130 -260 130 {
lab=xn}
N -370 -80 -280 -80 {
lab=yp}
N 250 -80 560 -80 {
lab=yn}
N -350 130 -330 130 {
lab=xn}
N 290 130 380 130 {
lab=xp}
N 560 -80 580 -80 {
lab=yn}
N -530 -80 -370 -80 {
lab=yp}
N -550 -80 -530 -80 {
lab=yp}
N -370 130 -350 130 {
lab=xn}
N -380 130 -370 130 {
lab=xn}
N 380 130 400 130 {
lab=xp}
N 390 130 400 130 {
lab=xp}
N -550 -80 -540 -80 {
lab=yp}
N 580 -80 610 -80 {
lab=yn}
N 600 -80 610 -80 {
lab=yn}
N -380 130 -370 130 {
lab=xn}
N 450 -110 450 -80 {
lab=yn}
N 240 -110 240 -80 {
lab=yn}
N -300 -110 -300 -80 {
lab=yp}
N -460 -110 -460 -80 {
lab=yp}
N -460 -230 -160 -230 {
lab=VDD}
N -460 -230 -460 -170 {
lab=VDD}
N -300 -230 -300 -170 {
lab=VDD}
N 280 -140 320 -140 {
lab=vf}
N 490 -140 540 -140 {
lab=vc}
N 110 -230 450 -230 {
lab=VDD}
N 450 -230 450 -170 {
lab=VDD}
N 240 -230 240 -170 {
lab=VDD}
N -340 -270 -340 -140 {
lab=vf}
N 280 -290 280 -140 {
lab=vf}
N -340 -290 280 -290 {
lab=vf}
N -340 -290 -340 -270 {
lab=vf}
N -500 -310 -500 -140 {
lab=vc}
N -500 -310 490 -310 {
lab=vc}
N 490 -310 490 -140 {
lab=vc}
C {devices/res.sym} 110 -40 0 0 {name=R1
value=800
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -30 190 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} -20 -230 0 0 {name=l6 lab=VDD}
C {devices/iopin.sym} -540 -80 2 0 {name=p4 lab=yp}
C {devices/iopin.sym} -370 130 2 0 {name=p3 lab=xn}
C {devices/iopin.sym} 390 130 0 0 {name=p6 lab=xp}
C {devices/iopin.sym} 600 -80 0 0 {name=p7 lab=yn}
C {devices/res.sym} -160 -40 0 0 {name=R5
value=800
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet3_01v8.sym} -180 130 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 130 130 0 1 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} 90 -140 0 0 {name=M3
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
C {sky130_fd_pr/pfet3_01v8.sym} -140 -140 0 1 {name=M4
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
C {sky130_fd_pr/pfet3_01v8.sym} 260 -140 0 1 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} 470 -140 0 1 {name=M6
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
C {sky130_fd_pr/pfet3_01v8.sym} -320 -140 0 0 {name=M7
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
C {sky130_fd_pr/pfet3_01v8.sym} -480 -140 0 0 {name=M8
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
C {devices/ipin.sym} 310 -140 0 1 {name=p5 lab=vf}
C {devices/ipin.sym} 530 -140 0 1 {name=p8 lab=vc}
