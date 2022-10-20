v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3220 -490 3220 -480 {
lab=vout}
N 3220 -480 3220 -470 {
lab=vout}
N 3220 -470 3220 -450 {
lab=vout}
N 3220 -450 3220 -440 {
lab=vout}
N 3110 -520 3180 -520 {
lab=Vin}
N 3100 -520 3110 -520 {
lab=Vin}
N 3090 -520 3100 -520 {
lab=Vin}
N 3090 -520 3090 -510 {
lab=Vin}
N 3090 -510 3090 -500 {
lab=Vin}
N 3090 -500 3090 -490 {
lab=Vin}
N 3090 -490 3090 -430 {
lab=Vin}
N 3090 -430 3090 -420 {
lab=Vin}
N 3120 -410 3180 -410 {
lab=Vin}
N 3110 -410 3120 -410 {
lab=Vin}
N 3100 -410 3110 -410 {
lab=Vin}
N 3090 -410 3100 -410 {
lab=Vin}
N 3090 -420 3090 -410 {
lab=Vin}
N 3220 -380 3220 -370 {
lab=GND}
N 3220 -370 3220 -360 {
lab=GND}
N 3220 -360 3220 -350 {
lab=GND}
N 3220 -350 3220 -340 {
lab=GND}
N 3220 -580 3220 -550 {
lab=VDD}
N 3080 -470 3090 -470 {
lab=Vin}
N 3220 -470 3250 -470 {
lab=vout}
N 3220 -340 3220 -330 {
lab=GND}
N 3220 -330 3220 -320 {
lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} 3200 -410 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} 3200 -520 0 0 {name=M1
L=0.15
W=2
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
C {devices/ipin.sym} 3080 -470 0 0 {name=p1 lab=Vin
}
C {devices/iopin.sym} 3220 -580 3 0 {name=p2 lab=VDD
}
C {devices/iopin.sym} 3220 -320 1 0 {name=p3 lab=GND
}
C {devices/opin.sym} 3250 -470 0 0 {name=p4 lab=vout
}
