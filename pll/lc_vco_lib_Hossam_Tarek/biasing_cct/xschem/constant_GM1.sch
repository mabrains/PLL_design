v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 360 440 360 480 {
lab=GND}
N 410 160 520 160 {
lab=#net1}
N 400 160 410 160 {
lab=#net1}
N 360 110 360 130 {
lab=VDD}
N 360 110 560 110 {
lab=VDD}
N 560 110 560 130 {
lab=VDD}
N 360 190 360 290 {
lab=A}
N 560 190 560 290 {
lab=B}
N 400 410 520 410 {
lab=B}
N 500 360 500 410 {
lab=B}
N 500 360 560 360 {
lab=B}
N 350 160 360 160 {
lab=VDD}
N 350 130 350 160 {
lab=VDD}
N 350 130 360 130 {
lab=VDD}
N 560 160 570 160 {
lab=VDD}
N 570 130 570 160 {
lab=VDD}
N 560 130 570 130 {
lab=VDD}
N 560 410 570 410 {
lab=GND}
N 570 410 580 410 {
lab=GND}
N 340 410 360 410 {
lab=GND}
N 330 410 340 410 {
lab=GND}
N 580 410 590 410 {
lab=GND}
N 560 440 560 490 {
lab=#net2}
N 560 550 560 570 {
lab=GND}
N 930 110 930 140 {
lab=VDD}
N 930 110 1190 110 {
lab=VDD}
N 1190 110 1190 140 {
lab=VDD}
N 930 200 930 320 {
lab=#net3}
N 930 380 930 420 {
lab=#net4}
N 930 420 1190 420 {
lab=#net4}
N 1190 390 1190 420 {
lab=#net4}
N 1060 420 1060 460 {
lab=#net4}
N 1160 350 1190 350 {
lab=GND}
N 930 350 960 350 {
lab=GND}
N 920 170 930 170 {
lab=VDD}
N 920 140 920 170 {
lab=VDD}
N 920 140 930 140 {
lab=VDD}
N 1190 170 1200 170 {
lab=VDD}
N 1200 140 1200 170 {
lab=VDD}
N 1190 140 1200 140 {
lab=VDD}
N 1190 380 1190 390 {
lab=#net4}
N 1190 200 1190 320 {
lab=#net1}
N 1060 530 1070 530 {
lab=GND}
N 1070 530 1070 560 {
lab=GND}
N 1060 560 1070 560 {
lab=GND}
N 1060 560 1060 590 {
lab=GND}
N 810 530 1020 530 {
lab=#net5}
N 770 560 770 580 {
lab=GND}
N 760 530 770 530 {
lab=GND}
N 760 530 760 560 {
lab=GND}
N 760 560 770 560 {
lab=GND}
N 770 480 770 500 {
lab=#net5}
N 1060 460 1060 500 {
lab=#net4}
N 970 170 1150 170 {
lab=#net3}
N 930 220 1000 220 {
lab=#net3}
N 1000 220 1040 220 {
lab=#net3}
N 1040 170 1040 220 {
lab=#net3}
N 770 490 830 490 {
lab=#net5}
N 830 490 830 530 {
lab=#net5}
N 520 160 520 190 {
lab=#net1}
N 520 190 520 210 {
lab=#net1}
N 520 210 680 210 {
lab=#net1}
N 680 170 680 210 {
lab=#net1}
N 680 160 730 160 {
lab=#net1}
N 680 160 680 170 {
lab=#net1}
N 770 160 780 160 {
lab=VDD}
N 780 130 780 160 {
lab=VDD}
N 770 130 780 130 {
lab=VDD}
N 560 110 930 110 {
lab=VDD}
N 770 110 770 130 {
lab=VDD}
N 520 240 1190 240 {
lab=#net1}
N 470 240 520 240 {
lab=#net1}
N 470 160 470 240 {
lab=#net1}
N 560 290 560 380 {
lab=B}
N 360 350 890 350 {
lab=A}
N 360 290 360 380 {
lab=A}
N 1230 290 1230 350 {
lab=B}
N 560 290 1230 290 {
lab=B}
N 360 480 360 570 {
lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 540 410 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 380 410 0 1 {name=M2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 540 160 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 380 160 0 1 {name=M5
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
C {devices/lab_pin.sym} 330 410 0 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 590 410 0 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/gnd.sym} 360 570 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 560 570 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 770 110 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 70 320 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} 70 290 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 70 350 0 0 {name=l7 lab=GND}
C {devices/res.sym} 560 520 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 910 350 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1040 530 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1210 350 0 1 {name=M8
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 950 170 0 1 {name=M9
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1170 170 0 0 {name=M10
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
C {devices/lab_pin.sym} 1160 350 0 0 {name=l9 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 960 350 0 1 {name=l10 sig_type=std_logic lab=GND}
C {devices/gnd.sym} 1060 590 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 790 530 0 1 {name=M11
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
C {devices/gnd.sym} 770 580 0 0 {name=l15 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 750 160 0 0 {name=M12
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
C {devices/code_shown.sym} 1420 120 0 0 {name=OP only_toplevel=false value="*.nodeset v(Vx)=0
 .control
    op
     print v(A) v(B)

     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
     print  @m.xm12.msky130_fd_pr__pfet_01v8_lvt[id]
     print  @m.xm7.msky130_fd_pr__nfet_01v8_lvt[id]
     print  @m.xm8.msky130_fd_pr__nfet_01v8_lvt[id]
     print  @m.xm10.msky130_fd_pr__pfet_01v8_lvt[id]
     
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
     print  @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vth]
  .endc

.save all"
}
C {sky130_fd_pr/corner.sym} 1520 0 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} 360 320 0 0 {name=l8 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 560 330 0 0 {name=l12 sig_type=std_logic lab=B}
C {devices/isource.sym} 770 450 0 0 {name=I0 value=50u}
C {devices/vdd.sym} 770 420 0 0 {name=l13 lab=VDD}
