v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 240 230 240 {
lab=GND}
N 230 240 230 290 {
lab=GND}
N 220 290 230 290 {
lab=GND}
N 220 270 220 290 {
lab=GND}
N 220 130 220 210 {
lab=#net1}
N 220 130 600 130 {
lab=#net1}
N 460 130 460 210 {
lab=#net1}
N 460 240 470 240 {
lab=#net1}
N 470 200 470 240 {
lab=#net1}
N 460 200 470 200 {
lab=#net1}
N 460 270 460 290 {
lab=GND}
N 220 290 220 330 {
lab=GND}
N 460 290 460 330 {
lab=GND}
N 600 130 600 230 {
lab=#net1}
N 390 130 390 150 {
lab=#net1}
N 390 210 390 240 {
lab=#net2}
N 390 240 420 240 {
lab=#net2}
N 110 240 110 250 {
lab=#net3}
N 110 240 180 240 {
lab=#net3}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 200 240 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 440 240 0 0 {name=M2
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/vsource.sym} 110 280 0 0 {name=V1 value=0}
C {devices/vsource.sym} 390 180 0 0 {name=V2 value=0}
C {devices/vsource.sym} 600 260 0 0 {name=V3 value=0.6}
C {devices/gnd.sym} 220 330 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 110 310 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 460 330 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 600 290 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 650 320 0 0 {name=DC1  only_toplevel=false value=" 
  .control
    op

     save  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
     save  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cdd]
     dc v1 0 1.8 10m 
     plot  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cdd]
     plot  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
  .endc
.save all "}
C {sky130_fd_pr/corner.sym} 720 160 0 0 {name=CORNER only_toplevel=false corner=tt}
