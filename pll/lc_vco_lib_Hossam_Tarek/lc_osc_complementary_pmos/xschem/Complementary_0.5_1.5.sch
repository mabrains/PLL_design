v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -260 430 -260 470 {
lab=#net1}
N 30 430 30 460 {
lab=#net1}
N -260 330 -260 340 {
lab=Von}
N -260 340 -260 370 {
lab=Von}
N -290 400 -260 400 {
lab=GND}
N 30 400 60 400 {
lab=GND}
N -260 -40 -260 0 {
lab=Von}
N 30 -40 30 0 {
lab=Vop}
N -220 -70 -180 -70 {
lab=Vop}
N -180 -70 -40 0 {
lab=Vop}
N -40 0 30 0 {
lab=Vop}
N -50 -70 -10 -70 {
lab=Von}
N -200 0 -50 -70 {
lab=Von}
N -260 0 -200 0 {
lab=Von}
N -260 -120 -260 -100 {
lab=VDD}
N -260 -120 30 -120 {
lab=VDD}
N 30 -120 30 -100 {
lab=VDD}
N 30 -70 40 -70 {
lab=VDD}
N 40 -110 40 -70 {
lab=VDD}
N 30 -110 40 -110 {
lab=VDD}
N -270 -70 -260 -70 {
lab=VDD}
N -270 -110 -270 -70 {
lab=VDD}
N -270 -110 -260 -110 {
lab=VDD}
N -260 470 30 470 {
lab=#net1}
N 30 460 30 470 {
lab=#net1}
N -220 400 -180 400 {
lab=Vop}
N -180 400 -50 340 {
lab=Vop}
N -50 340 30 340 {
lab=Vop}
N -50 400 -10 400 {
lab=Von}
N -200 340 -50 400 {
lab=Von}
N -260 340 -200 340 {
lab=Von}
N -260 220 -260 310 {
lab=Von}
N -260 0 -260 50 {
lab=Von}
N -200 220 -150 220 {
lab=Von}
N -200 70 -200 220 {
lab=Von}
N -200 70 -150 70 {
lab=Von}
N -90 70 -30 70 {
lab=Vop}
N -30 70 -30 220 {
lab=Vop}
N -90 220 -30 220 {
lab=Vop}
N -50 150 -30 150 {
lab=Vop}
N -130 150 -110 150 {
lab=#net2}
N -200 150 -190 150 {
lab=Von}
N -260 50 -260 220 {
lab=Von}
N 30 0 30 310 {
lab=Vop}
N 30 330 30 370 {
lab=Vop}
N 320 360 380 360 {
lab=Vop}
N 350 480 350 510 {
lab=Vctrl}
N -630 360 -570 360 {
lab=Von}
N -600 480 -600 510 {
lab=Vctrl}
N -600 330 -410 330 {
lab=Von}
N 140 330 350 330 {
lab=Vop}
N -530 60 -530 130 {
lab=Vctrl}
N 320 360 320 440 {
lab=Vop}
N 350 430 350 440 {
lab=VDD}
N 380 360 380 440 {
lab=Vop}
N -340 570 -150 570 {
lab=#net3}
N -380 540 -310 540 {
lab=#net3}
N -310 540 -310 570 {
lab=#net3}
N -110 570 -110 600 {
lab=GND}
N -380 570 -380 600 {
lab=GND}
N -110 470 -110 540 {
lab=#net1}
N -630 360 -630 440 {
lab=Von}
N -570 360 -570 440 {
lab=Von}
N -600 430 -600 440 {
lab=VDD}
N -260 150 -200 150 {
lab=Von}
N -30 150 30 150 {
lab=Vop}
N -410 330 -260 330 {
lab=Von}
N 30 330 140 330 {
lab=Vop}
N -260 310 -260 380 {
lab=Von}
N 30 310 30 380 {
lab=Vop}
N -600 330 -600 360 {
lab=Von}
N 350 330 350 360 {
lab=Vop}
N -460 330 -460 360 {
lab=Von}
N 200 330 200 370 {
lab=Vop}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -240 400 0 1 {name=M2
L=0.15
W=10
nf=1
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 10 400 0 0 {name=M3
L=0.15
W=10
nf=1
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/vsource.sym} -530 -20 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -530 10 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -530 -50 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} -110 -120 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} -290 400 0 0 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 60 400 0 1 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -260 290 0 0 {name=l6 sig_type=std_logic lab=Von}
C {devices/lab_pin.sym} 30 290 0 1 {name=l8 sig_type=std_logic lab=Vop}
C {devices/ind.sym} -160 150 1 0 {name=L3
m=1
value=4n
footprint=1206
device=inductor}
C {devices/res.sym} -80 150 1 0 {name=R5
value=3.12
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -120 220 1 0 {name=R6
value=1.25k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} -120 70 1 0 {name=C2 model=cap_mim_m3_2 W=1 L=1 MF=22 spiceprefix=X}
C {sky130_fd_pr/corner.sym} 600 420 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 350 460 3 0 {name=M7
L=1
W=2
nf=1
mult=55
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 350 510 3 0 {name=l14 sig_type=std_logic lab=Vctrl}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -600 460 3 0 {name=M5
L=1
W=2
nf=1
mult=55
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -600 510 3 0 {name=l16 sig_type=std_logic lab=Vctrl}
C {devices/vsource.sym} -530 150 0 0 {name=Vctrl value=1.5}
C {devices/gnd.sym} -530 180 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -530 60 0 0 {name=l18 sig_type=std_logic lab=Vctrl}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 10 -70 0 0 {name=M4
L=0.35
W=8
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -240 -70 0 1 {name=M1
L=0.35
W=8
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/code_shown.sym} 440 -100 0 0 {name=Tran1 only_toplevel=false value=" .tran 0.01n 100n

.measure tran Period 
+TRIG v(vop) VAL=1     RISE=150
+TARG v(vop) VAL=1     RISE=151

 .control
    op
 
     print  @m.xm16.msky130_fd_pr__nfet_01v8_lvt[id]
     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
     print  @m.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[vds]
     print  @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vds]
     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
     print  @m.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
     
     print  @m.xm16.msky130_fd_pr__nfet_01v8_lvt[vds]
     print  @m.xm16.msky130_fd_pr__nfet_01v8_lvt[gm]
   
     print  @m.xm4.msky130_fd_pr__pfet_01v8_lvt[cdd]
     print  @m.xm3.msky130_fd_pr__nfet_01v8_lvt[cdd]
     print  @m.xm5.msky130_fd_pr__pfet_01v8_lvt[cdd]
  .endc

.save all"
}
C {devices/gnd.sym} -110 600 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -360 570 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -130 570 0 0 {name=M16
L=0.15
W=1
nf=1
mult=60
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} -380 600 0 0 {name=l11 lab=GND}
C {devices/isource.sym} -380 510 0 0 {name=I0 value=50u}
C {devices/vdd.sym} -380 480 0 0 {name=l12 lab=VDD}
C {sky130_fd_pr/cap_mim_m3_2.sym} -460 390 0 0 {name=C6 model=cap_mim_m3_2 W=1 L=1 MF=210 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 200 400 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=210 spiceprefix=X}
C {devices/gnd.sym} -460 420 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 200 430 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/cap_mim_m3_2.sym} 60 150 3 1 {name=C3 model=cap_mim_m3_2 W=1 L=1 MF=10 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} -290 150 1 0 {name=C4 model=cap_mim_m3_2 W=1 L=1 MF=10 spiceprefix=X}
C {devices/gnd.sym} -320 150 1 0 {name=l13 lab=GND}
C {devices/gnd.sym} 90 150 3 1 {name=l15 lab=GND}
C {devices/vdd.sym} -600 430 0 0 {name=l19 lab=VDD}
C {devices/vdd.sym} 350 430 0 0 {name=l20 lab=VDD}
