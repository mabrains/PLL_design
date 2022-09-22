v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 280 80 280 110 {
lab=VDD}
N 280 80 540 80 {
lab=VDD}
N 540 80 540 110 {
lab=VDD}
N 280 170 280 290 {
lab=#net1}
N 280 350 280 390 {
lab=#net2}
N 280 390 540 390 {
lab=#net2}
N 540 360 540 390 {
lab=#net2}
N 410 390 410 430 {
lab=#net2}
N 510 320 540 320 {
lab=GND}
N 280 320 310 320 {
lab=GND}
N 270 140 280 140 {
lab=VDD}
N 270 110 270 140 {
lab=VDD}
N 270 110 280 110 {
lab=VDD}
N 540 140 550 140 {
lab=VDD}
N 550 110 550 140 {
lab=VDD}
N 540 110 550 110 {
lab=VDD}
N 540 350 540 360 {
lab=#net2}
N 540 170 540 290 {
lab=Vout}
N 410 500 420 500 {
lab=GND}
N 420 500 420 530 {
lab=GND}
N 410 530 420 530 {
lab=GND}
N 410 530 410 560 {
lab=GND}
N 160 500 370 500 {
lab=#net3}
N 120 530 120 550 {
lab=GND}
N 110 500 120 500 {
lab=GND}
N 110 500 110 530 {
lab=GND}
N 110 530 120 530 {
lab=GND}
N 120 450 120 470 {
lab=#net3}
N 580 320 630 320 {
lab=#net4}
N 410 430 410 470 {
lab=#net2}
N 200 320 200 330 {
lab=#net5}
N 200 320 240 320 {
lab=#net5}
N 630 320 630 330 {
lab=#net4}
N 320 140 500 140 {
lab=#net1}
N 280 190 350 190 {
lab=#net1}
N 350 190 390 190 {
lab=#net1}
N 390 140 390 190 {
lab=#net1}
N 120 460 180 460 {
lab=#net3}
N 180 460 180 500 {
lab=#net3}
N 540 220 620 220 {
lab=Vout}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 260 320 0 0 {name=M1
L=2.2
W=5.5
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 390 500 0 0 {name=M2
L=2.2
W=3
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 320 0 1 {name=M3
L=2.2
W=5.5
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 300 140 0 1 {name=M4
L=7
W=10
nf=1
mult=30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 520 140 0 0 {name=M5
L=7
W=10
nf=1
mult=30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 510 320 0 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 310 320 0 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/gnd.sym} 410 560 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 110 190 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} 410 80 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 110 220 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 110 160 0 0 {name=l6 lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 500 0 1 {name=M6
L=2.2	
W=3
nf=1
mult=9
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 120 550 0 0 {name=l7 lab=GND}
C {devices/isource.sym} 120 420 0 0 {name=I0 value=50u}
C {devices/vdd.sym} 120 390 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 630 420 0 0 {name=V2 value=1}
C {devices/gnd.sym} 630 450 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 630 360 0 0 {name=V4 value="ac -0.5"}
C {devices/vsource.sym} 200 420 0 0 {name=V3 value=1}
C {devices/gnd.sym} 200 450 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 200 360 0 0 {name=V5 value="ac 0.5"}
C {sky130_fd_pr/corner.sym} 890 10 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 890 180 0 0 {name=AC  only_toplevel=false value=" .ac dec 20 10 10G
.plot  vdb(Vout) 
*.param peak =1 BW =1
*.measure AC peak max V(vout)
*.measure AC BW
*+WHEN mag(v(vout)) = 'peak/sqrt(2)' FALL=1

  .control
    op
      print  @m.xm2.msky130_fd_pr__nfet_01v8_lvt[id]
      print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
      print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
    
      print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[Vds]
      print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[Vds]
      print  @m.xm2.msky130_fd_pr__nfet_01v8_lvt[Vds]
     
      print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]/
           +@m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
      print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]/
           +@m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
      print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]/
           +@m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]

  .endc
.save all "}
C {devices/lab_pin.sym} 540 200 0 1 {name=l11 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 250 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=127 spiceprefix=X}
C {devices/gnd.sym} 620 280 0 0 {name=l12 lab=GND}
