v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -100 140 -80 {
lab=gnd}
N 90 -380 110 -380 {
lab=#net1}
N 90 -500 90 -380 {
lab=#net1}
N 90 -500 720 -500 {
lab=#net1}
N 380 -160 380 -120 {
lab=P}
N 720 -160 740 -160 {
lab=MODI}
N 720 -500 740 -500 {
lab=#net1}
N 300 -450 320 -450 {
lab=vdd}
N 870 -270 900 -270 {
lab=FI}
N 1020 -270 1050 -270 {
lab=FIB}
N 740 -500 740 -370 {
lab=#net1}
N 720 -190 730 -190 {
lab=#net2}
N 690 -380 690 -370 {
lab=#net3}
N 50 -350 50 -170 {
lab=#net4}
N 50 -350 110 -350 {
lab=#net4}
N 210 -170 290 -170 {
lab=#net5}
N 560 -170 630 -170 {
lab=#net6}
N 380 -190 400 -190 {
lab=MODO}
N 400 -260 400 -190 {
lab=MODO}
N 200 -360 260 -360 {
lab=#net7}
N 320 -450 330 -450 {
lab=vdd}
N 480 -380 570 -380 {
lab=#net8}
N 410 -380 480 -380 {
lab=#net8}
N 410 -380 410 -370 {
lab=#net8}
N 330 -450 330 -430 {
lab=vdd}
N 400 -190 400 -180 {
lab=MODO}
N 400 -180 410 -180 {
lab=MODO}
N 50 -170 50 -150 {
lab=#net4}
N 50 -150 60 -150 {
lab=#net4}
C {and.sym} 70 -240 0 0 {name=x5}
C {and.sym} 760 -50 0 1 {name=x6}
C {and.sym} 420 -50 0 1 {name=x7}
C {devices/ipin.sym} 300 -450 0 0 {name=p4 lab=vdd}
C {devices/ipin.sym} 140 -80 3 0 {name=p6 lab=gnd}
C {devices/opin.sym} 770 -370 0 0 {name=p6 lab=FO}
C {devices/iopin.sym} 380 -120 0 0 {name=p2 lab=P}
C {devices/iopin.sym} 400 -260 2 0 {name=p3 lab=MODO}
C {devices/iopin.sym} 740 -160 0 0 {name=p7 lab=MODI}
C {devices/lab_pin.sym} 640 -450 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 640 -310 0 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 140 -240 2 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 150 -300 2 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 490 -240 2 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 490 -100 2 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 680 -110 0 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 680 -230 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 340 -230 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 340 -110 0 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 330 -290 0 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 570 -400 0 0 {name=l2 sig_type=std_logic lab=FIB}
C {devices/lab_pin.sym} 210 -150 2 0 {name=l7 sig_type=std_logic lab=FI}
C {devices/noconn.sym} 60 -180 0 0 {name=l3}
C {devices/lab_pin.sym} 150 -420 2 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 210 -190 0 1 {name=l4 sig_type=std_logic lab=FIB}
C {inv.sym} 880 -150 0 0 {name=x3}
C {devices/lab_pin.sym} 1050 -270 2 0 {name=l4 sig_type=std_logic lab=FIB}
C {devices/lab_pin.sym} 940 -320 1 0 {name=l17 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 940 -220 3 0 {name=l18 sig_type=std_logic lab=gnd}
C {devices/iopin.sym} 870 -270 2 0 {name=p1 lab=FI}
C {devices/noconn.sym} 410 -150 0 0 {name=l2}
C {devices/lab_pin.sym} 260 -380 0 0 {name=l7 sig_type=std_logic lab=FI}
C {devices/lab_pin.sym} 260 -340 0 0 {name=l1 sig_type=std_logic lab=FIB}
C {devices/lab_pin.sym} 570 -360 0 0 {name=l7 sig_type=std_logic lab=FI}
C {devices/lab_pin.sym} 560 -190 2 0 {name=l7 sig_type=std_logic lab=FI}
C {devices/lab_pin.sym} 560 -150 0 1 {name=l4 sig_type=std_logic lab=FIB}
C {devices/noconn.sym} 410 -340 0 1 {name=l1}
C {CMOS_d_latch.sym} 720 -380 0 0 {name=x1}
C {CMOS_d_latch.sym} 410 -360 0 0 {name=x2}
C {CMOS_d_latch.sym} 410 -170 0 1 {name=x4}
C {CMOS_d_latch.sym} 60 -170 0 1 {name=x8}
