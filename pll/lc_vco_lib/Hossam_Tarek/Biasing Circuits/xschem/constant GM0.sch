v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 150 310 150 350 {
lab=Vxx}
N 200 120 310 120 {
lab=Vx}
N 190 120 200 120 {
lab=Vx}
N 150 70 150 90 {
lab=VDD}
N 150 70 350 70 {
lab=VDD}
N 350 70 350 90 {
lab=VDD}
N 150 150 150 250 {
lab=Vx}
N 190 280 310 280 {
lab=Vy}
N 190 330 190 380 {
lab=Vxx}
N 150 330 190 330 {
lab=Vxx}
N 290 230 290 280 {
lab=Vy}
N 290 230 350 230 {
lab=Vy}
N 210 120 210 170 {
lab=Vx}
N 150 170 210 170 {
lab=Vx}
N 140 120 150 120 {
lab=VDD}
N 140 90 140 120 {
lab=VDD}
N 140 90 150 90 {
lab=VDD}
N 350 120 360 120 {
lab=VDD}
N 360 90 360 120 {
lab=VDD}
N 350 90 360 90 {
lab=VDD}
N 140 380 150 380 {
lab=GND}
N 140 380 140 410 {
lab=GND}
N 140 410 150 410 {
lab=GND}
N 350 280 360 280 {
lab=GND}
N 360 280 370 280 {
lab=GND}
N 130 280 150 280 {
lab=GND}
N 120 280 130 280 {
lab=GND}
N 370 280 380 280 {
lab=GND}
N 150 410 150 440 {
lab=GND}
N 350 310 350 360 {
lab=Vyy}
N 350 420 350 440 {
lab=GND}
N 350 150 350 160 {
lab=#net1}
N 350 220 350 250 {
lab=Vy}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 330 280 0 0 {name=M1
L=1
W=6.8
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 170 280 0 1 {name=M2
L=1
W=6.8
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 170 380 0 1 {name=M3
L=1
W=6.8
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 330 120 0 0 {name=M4
L=1
W=10
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 170 120 0 1 {name=M5
L=1
W=10
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 120 280 0 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 380 280 0 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/gnd.sym} 150 440 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 350 440 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 260 70 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 0 150 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} 0 120 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 0 180 0 0 {name=l7 lab=GND}
C {devices/res.sym} 350 390 0 0 {name=R2
value=9462
footprint=1206
device=resistor
m=1}
C {devices/code_shown.sym} 590 80 0 0 {name=OP only_toplevel=false value="
 

*.dc v1 1.71 1.89 0.1m

 .control
    op
     save   @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vth]
     save   @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
 
     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[cgg]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[cgg]
     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
     
     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[vds]
     print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vds]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[vds]
     print  @m.xm2.msky130_fd_pr__nfet_01v8_lvt[vds]
     print  @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vds]

     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[vgs]
     print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vgs]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[vgs]
     print  @m.xm2.msky130_fd_pr__nfet_01v8_lvt[vgs]
     print  @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vgs]

     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[vth]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[vth]
     print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
     print  @m.xm2.msky130_fd_pr__nfet_01v8_lvt[vth]
     print v(vx) v(vy) v(vxx) v(vyy)
 dc temp -40 70 2 
     plot  @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vth]
      plot  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
  .endc
.save all"
}
C {sky130_fd_pr/corner.sym} 450 80 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 350 190 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} 350 220 0 0 {name=l9 sig_type=std_logic lab=Vy}
C {devices/lab_pin.sym} 150 220 0 0 {name=l10 sig_type=std_logic lab=Vx}
C {devices/lab_pin.sym} 150 330 0 0 {name=l11 sig_type=std_logic lab=Vxx}
C {devices/lab_pin.sym} 350 330 0 0 {name=l12 sig_type=std_logic lab=Vyy}
