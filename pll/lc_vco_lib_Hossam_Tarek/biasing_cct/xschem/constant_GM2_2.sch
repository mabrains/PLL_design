v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 110 250 110 {
lab=Vout}
N 130 110 140 110 {
lab=Vout}
N 90 60 90 80 {
lab=VDD}
N 90 60 290 60 {
lab=VDD}
N 430 60 430 80 {
lab=VDD}
N 90 140 90 240 {
lab=Vx}
N 130 400 250 400 {
lab=Vx}
N 80 110 90 110 {
lab=VDD}
N 80 80 80 110 {
lab=VDD}
N 80 80 90 80 {
lab=VDD}
N 430 110 440 110 {
lab=VDD}
N 440 80 440 110 {
lab=VDD}
N 430 80 440 80 {
lab=VDD}
N 430 400 440 400 {
lab=GND}
N 440 400 450 400 {
lab=GND}
N 70 400 90 400 {
lab=GND}
N 60 400 70 400 {
lab=GND}
N 450 400 460 400 {
lab=GND}
N 90 530 90 560 {
lab=GND}
N 430 430 430 480 {
lab=Vyy}
N 430 540 430 560 {
lab=GND}
N 430 140 430 150 {
lab=Vy}
N 430 210 430 240 {
lab=Vy}
N 90 430 90 530 {
lab=GND}
N 430 150 430 210 {
lab=Vy}
N 740 70 740 100 {
lab=VDD}
N 740 70 1000 70 {
lab=VDD}
N 1000 70 1000 100 {
lab=VDD}
N 740 340 770 340 {
lab=GND}
N 730 130 740 130 {
lab=VDD}
N 730 100 730 130 {
lab=VDD}
N 730 100 740 100 {
lab=VDD}
N 1000 130 1010 130 {
lab=VDD}
N 1010 100 1010 130 {
lab=VDD}
N 1000 100 1010 100 {
lab=VDD}
N 870 530 880 530 {
lab=GND}
N 880 530 880 560 {
lab=GND}
N 870 560 880 560 {
lab=GND}
N 870 560 870 590 {
lab=GND}
N 580 560 580 580 {
lab=GND}
N 570 530 580 530 {
lab=GND}
N 570 530 570 560 {
lab=GND}
N 570 560 580 560 {
lab=GND}
N 580 480 580 500 {
lab=#net1}
N 780 130 960 130 {
lab=#net2}
N 740 180 810 180 {
lab=#net2}
N 810 180 850 180 {
lab=#net2}
N 850 130 850 180 {
lab=#net2}
N 580 490 640 490 {
lab=#net1}
N 640 490 640 530 {
lab=#net1}
N 290 60 430 60 {
lab=VDD}
N 250 110 390 110 {
lab=Vout}
N 90 240 90 370 {
lab=Vx}
N 430 240 430 370 {
lab=Vy}
N 250 400 390 400 {
lab=Vx}
N 90 340 160 340 {
lab=Vx}
N 160 340 160 400 {
lab=Vx}
N 1000 280 1040 280 {
lab=GND}
N 1000 160 1000 230 {
lab=Vout}
N 1000 230 1000 250 {
lab=Vout}
N 740 370 740 460 {
lab=#net3}
N 740 460 1000 460 {
lab=#net3}
N 1000 310 1000 460 {
lab=#net3}
N 430 340 700 340 {
lab=Vy}
N 870 460 870 500 {
lab=#net3}
N 620 530 830 530 {
lab=#net1}
N 100 280 960 280 {
lab=Vx}
N 90 280 100 280 {
lab=Vx}
N 740 160 740 310 {
lab=#net2}
N 270 110 270 220 {
lab=Vout}
N 270 220 1000 220 {
lab=Vout}
N 580 60 580 80 {
lab=VDD}
N 580 110 590 110 {
lab=VDD}
N 590 80 590 110 {
lab=VDD}
N 580 80 590 80 {
lab=VDD}
N 580 160 580 480 {
lab=#net1}
N 430 60 580 60 {
lab=VDD}
N 580 140 580 160 {
lab=#net1}
N 540 110 540 220 {
lab=Vout}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 410 400 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 110 400 0 1 {name=M2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 410 110 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 110 110 0 1 {name=M5
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
C {devices/lab_pin.sym} 60 400 0 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 460 400 0 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/gnd.sym} 90 560 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 430 560 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 270 60 0 0 {name=l5 lab=VDD}
C {devices/res.sym} 430 510 0 0 {name=R2
value=3875
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 430 160 0 0 {name=l9 sig_type=std_logic lab=Vy}
C {devices/lab_pin.sym} 90 160 0 0 {name=l10 sig_type=std_logic lab=Vx}
C {devices/lab_pin.sym} 430 450 0 0 {name=l12 sig_type=std_logic lab=Vyy}
C {devices/code_shown.sym} 1100 60 0 0 {name=OP only_toplevel=false value="
*.nodeset v(vout)=0
 .control
    op
     save   @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
     
     print  @m.xm3.msky130_fd_pr__pfet_01v8_lvt[id]
     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
     
     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[vds]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[vds]
     print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vds]
     print  @m.xm2.msky130_fd_pr__nfet_01v8_lvt[vds]

     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[vgs]
     print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vgs]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[vgs]
     print  @m.xm2.msky130_fd_pr__nfet_01v8_lvt[vgs]

     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[vth]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[vth]
     print  @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
     print  @m.xm2.msky130_fd_pr__nfet_01v8_lvt[vth]
     print v(vx) v(vy) v(vyy)
*dc v1 1.71 1.89 0.1m 
*dc temp -40 75 1   
tran 0.1n 1000n 
     plot  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
  .endc
.save all"
}
C {sky130_fd_pr/corner.sym} 1570 210 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -50 220 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -50 190 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} -50 250 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 720 340 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 850 530 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 980 280 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 760 130 0 1 {name=M9
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 980 130 0 0 {name=M10
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
C {devices/lab_pin.sym} 1040 280 0 1 {name=l11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 770 340 0 1 {name=l13 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 600 530 0 1 {name=M11
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
C {devices/gnd.sym} 580 580 0 0 {name=l15 lab=GND}
C {devices/vdd.sym} 870 70 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 870 590 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1000 200 0 0 {name=l14 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 560 110 0 0 {name=M3
L=1
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
