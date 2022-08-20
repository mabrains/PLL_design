v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 460 -140 460 -30 {
lab=d}
N -380 -140 460 -140 {
lab=d}
N -380 -140 -380 -30 {
lab=d}
N -380 -30 -370 -30 {
lab=d}
N 160 530 160 570 {
lab=vss}
N 160 630 160 680 {
lab=GND}
N 160 410 160 450 {
lab=vcc}
N 160 320 160 350 {
lab=VDD}
N -740 340 -740 390 {
lab=VDD}
N -740 450 -740 490 {
lab=GND}
N -680 480 -680 490 {
lab=GND}
N -740 490 -680 490 {
lab=GND}
N -680 360 -680 420 {
lab=vctrl}
N -250 -30 -150 -30 {
lab=a}
N -30 -30 60 -30 {
lab=b}
N 180 -30 310 -30 {
lab=c}
N 430 -30 460 -30 {
lab=d}
N -200 170 -200 220 {
lab=c}
N 10 170 10 220 {
lab=d}
N -200 -30 -200 40 {
lab=a}
N 10 -30 10 40 {
lab=b}
N 210 -30 210 40 {
lab=c}
N -90 20 -90 50 {
lab=vss}
N -310 20 -310 50 {
lab=vss}
N -280 120 -230 120 {
lab=vcc}
N -280 80 -280 120 {
lab=vcc}
N -160 120 -90 120 {
lab=vss}
N -90 50 -90 120 {
lab=vss}
N -90 10 -90 20 {
lab=vss}
N -90 10 -90 20 {
lab=vss}
N -310 10 -310 20 {
lab=vss}
N -310 10 -310 20 {
lab=vss}
N -310 10 -310 20 {
lab=vss}
N -40 120 -20 120 {
lab=vcc}
N 460 170 460 220 {
lab=b}
N 210 170 210 220 {
lab=a}
N 460 -30 460 40 {
lab=d}
N 460 -30 500 -30 {
lab=d}
N 120 20 120 40 {
lab=vss}
N 120 10 120 20 {
lab=vss}
N 120 10 120 20 {
lab=vss}
N 120 10 120 20 {
lab=vss}
N 10 -80 10 -30 {
lab=b}
N -200 -80 -200 -30 {
lab=a}
N -210 -80 -200 -80 {
lab=a}
N -310 -100 -310 -80 {
lab=vcc}
N -310 -80 -310 -70 {
lab=vcc}
N -310 -80 -310 -70 {
lab=vcc}
N -310 -80 -310 -70 {
lab=vcc}
N 120 -110 120 -80 {
lab=vcc}
N 120 -110 120 -80 {
lab=vcc}
N 120 -80 120 -70 {
lab=vcc}
N 120 -80 120 -70 {
lab=vcc}
N 120 -80 120 -70 {
lab=vcc}
N 220 -80 220 -30 {
lab=c}
N 370 -110 370 -80 {
lab=vcc}
N 370 -110 370 -80 {
lab=vcc}
N 370 -80 370 -70 {
lab=vcc}
N 370 -80 370 -70 {
lab=vcc}
N 370 -80 370 -70 {
lab=vcc}
N 500 120 540 120 {
lab=vss}
N 370 20 370 40 {
lab=vss}
N 370 10 370 20 {
lab=vss}
N 370 10 370 20 {
lab=vss}
N 370 10 370 20 {
lab=vss}
N -90 -110 -90 -70 {
lab=vcc}
N -90 -80 -90 -70 {
lab=vcc}
N -90 -80 -90 -70 {
lab=vcc}
N 240 120 280 120 {
lab=vcc}
N 340 120 430 120 {
lab=vcc}
N 340 90 340 120 {
lab=vcc}
N 280 90 340 90 {
lab=vcc}
N 280 90 280 120 {
lab=vcc}
N 100 120 100 150 {
lab=vss}
N 50 120 100 120 {
lab=vss}
N 50 120 100 120 {
lab=vss}
N 100 120 170 120 {
lab=vss}
N -40 490 -40 570 {
lab=#net1}
N 0 320 20 320 {
lab=#net2}
N 20 320 20 380 {
lab=#net2}
N -40 380 20 380 {
lab=#net2}
N -40 540 20 540 {
lab=#net1}
N 0 600 20 600 {
lab=#net1}
N 20 540 20 600 {
lab=#net1}
N -40 630 -40 670 {
lab=GND}
N -40 670 -40 710 {
lab=GND}
N -40 410 -40 430 {
lab=#net2}
N -130 460 -80 460 {
lab=vctrl}
N 20 600 120 600 {
lab=#net1}
N -40 350 -40 380 {
lab=#net2}
N -40 380 -40 400 {
lab=#net2}
N -40 400 -40 410 {
lab=#net2}
N -40 270 -40 290 {
lab=VDD}
N 20 380 120 380 {
lab=#net2}
C {devices/code_shown.sym} -760 590 0 0 {name=s1 only_toplevel=false value="
.tran 1p 10n
.save @m.xm5.msky130_fd_pr__nfet_01v8[gm]
.save all"}
C {devices/lab_pin.sym} -210 -80 1 0 {name=l1 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 10 -80 1 0 {name=l2 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 220 -80 1 0 {name=l3 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 500 -30 2 0 {name=l4 sig_type=std_logic lab=d}
C {devices/lab_pin.sym} -200 220 1 1 {name=l5 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 10 220 3 0 {name=l6 sig_type=std_logic lab=d}
C {devices/lab_pin.sym} 210 220 3 0 {name=l7 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 460 220 3 0 {name=l8 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} -310 -100 0 0 {name=l9 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} -90 -110 0 0 {name=l10 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 120 -110 0 0 {name=l11 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 370 -110 0 0 {name=l12 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} -310 50 0 0 {name=l13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -90 50 0 0 {name=l14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 120 40 0 0 {name=l15 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 540 120 2 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -280 80 0 0 {name=l17 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} -40 120 0 0 {name=l18 sig_type=std_logic lab=vcc}
C {devices/vsource.sym} -740 420 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -740 340 0 0 {name=l22 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 140 600 0 0 {name=M1
L=0.15
W=.5
body=GND
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 160 530 0 0 {name=l23 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet3_01v8.sym} 140 380 0 0 {name=M2
L=0.15
W=.5
body=VDD
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -740 490 0 0 {name=l24 lab=GND}
C {devices/gnd.sym} 160 680 0 0 {name=l25 lab=GND}
C {devices/lab_pin.sym} 160 450 3 0 {name=l26 sig_type=std_logic lab=vcc}
C {devices/vdd.sym} 160 320 0 0 {name=l27 lab=VDD}
C {devices/vsource.sym} -680 450 0 0 {name=V2 value=1.8}
C {devices/lab_pin.sym} -680 360 1 0 {name=l29 sig_type=std_logic lab=vctrl}
C {sky130_fd_pr/corner.sym} -960 550 0 0 {name=CORNER only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
C {FF_cell.sym} -180 130 3 0 {name=X1}
C {FF_cell.sym} 30 130 3 0 {name=X2}
C {FF_cell.sym} 190 130 1 1 {name=X3}
C {FF_cell.sym} 480 130 3 0 {name=X4}
C {core_cell.sym} -370 -20 0 0 {name=X5}
C {core_cell.sym} -150 -20 0 0 {name=X6}
C {core_cell.sym} 60 -20 0 0 {name=X7}
C {core_cell.sym} 310 -20 0 0 {name=X8}
C {devices/lab_pin.sym} 370 40 2 0 {name=l19 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 280 120 2 0 {name=l20 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 100 150 2 0 {name=l21 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet3_01v8.sym} -20 320 0 1 {name=M3
L=0.15
W=5
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
C {devices/gnd.sym} -40 710 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} -130 460 0 0 {name=l31 sig_type=std_logic lab=vctrl
}
C {sky130_fd_pr/nfet3_01v8.sym} -20 600 0 1 {name=M7
L=0.15
W=5
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
C {devices/vdd.sym} -40 270 0 0 {name=l36 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} -60 460 0 0 {name=M4
L=0.15
W=50
body=GND
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
