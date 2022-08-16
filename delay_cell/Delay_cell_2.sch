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
N 130 -120 340 -120 {
lab=yn}
N -320 -120 -140 -120 {
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
N -410 -120 -320 -120 {
lab=yp}
N 340 -120 500 -120 {
lab=yn}
N -330 90 -310 90 {
lab=xn}
N 310 90 400 90 {
lab=xp}
N 500 -120 520 -120 {
lab=yn}
N -510 -120 -410 -120 {
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
N 520 -120 550 -120 {
lab=yn}
N 540 -120 550 -120 {
lab=yn}
N -360 90 -350 90 {
lab=xn}
N 370 -180 410 -180 {
lab=#net3}
N -380 -340 -380 -180 {
lab=#net3}
N -380 -340 370 -340 {
lab=#net3}
N 370 -340 370 -180 {
lab=#net3}
N 130 -270 330 -270 {
lab=VDD}
N 760 -150 760 -30 {
lab=#net3}
N 800 0 860 0 {
lab=vctrl}
N 760 30 760 80 {
lab=GND}
N 760 -110 850 -110 {
lab=#net3}
N 850 -180 850 -110 {
lab=#net3}
N 800 -180 850 -180 {
lab=#net3}
N 330 -270 760 -270 {
lab=VDD}
N 760 -270 760 -210 {
lab=VDD}
N 410 -180 800 -180 {
lab=#net3}
N -340 -150 -340 -120 {
lab=yp}
N -340 -270 -340 -210 {
lab=VDD}
N -340 -270 -140 -270 {
lab=VDD}
N 330 -150 330 -120 {
lab=yn}
N 330 -270 330 -210 {
lab=VDD}
N 280 -60 280 -40 {
lab=GND}
N -280 -60 -280 -40 {
lab=GND}
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
C {devices/iopin.sym} 540 -120 0 0 {name=p7 lab=yn}
C {sky130_fd_pr/pfet3_01v8.sym} 780 -180 0 1 {name=M4
L=0.15
W=12
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
C {sky130_fd_pr/nfet3_01v8.sym} 780 0 0 1 {name=M7
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
C {devices/gnd.sym} 760 80 0 0 {name=l1 lab=GND}
C {devices/ipin.sym} 850 0 0 1 {name=p1 lab=vctrl}
C {devices/capa.sym} 280 -90 0 0 {name=C1
m=1
value=.57e-15
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -280 -90 0 0 {name=C2
m=1
value=.57e-15
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -280 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 280 -40 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} -160 90 0 0 {name=M1
L=0.15
W=1.5
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
C {sky130_fd_pr/nfet3_01v8.sym} 150 90 0 1 {name=M6
L=0.15
W=1.5
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
C {sky130_fd_pr/pfet3_01v8.sym} -360 -180 0 0 {name=M2
L=0.15
W=.5
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
C {sky130_fd_pr/pfet3_01v8.sym} -120 -180 0 1 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} 350 -180 0 1 {name=M8
L=0.15
W=.5
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
