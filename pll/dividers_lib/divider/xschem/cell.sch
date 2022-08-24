v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 760 -730 820 -730 {
lab=FI}
N 740 -710 820 -710 {
lab=P}
N 760 -690 820 -690 {
lab=MODO}
N 860 -790 860 -770 {
lab=vdd}
N 860 -650 860 -630 {
lab=gnd}
N 1390 -710 1420 -710 {
lab=FI}
N 1540 -710 1570 -710 {
lab=FIB}
N 1080 -800 1140 -800 {
lab=#net1}
N 940 -690 1140 -690 {
lab=#net2}
N 1140 -760 1140 -710 {
lab=#net2}
N 920 -800 970 -800 {
lab=FO}
N 1290 -780 1320 -780 {
lab=FO}
N 1140 -710 1140 -690 {
lab=#net2}
N 940 -710 940 -690 {
lab=#net2}
N 1310 -780 1310 -610 {
lab=FO}
N 1310 -580 1330 -580 {
lab=MODI}
N 1130 -590 1220 -590 {
lab=#net3}
N 980 -590 1020 -590 {
lab=MODO}
C {and.sym} 1350 -470 0 1 {name=x2}
C {nand.sym} 1100 -580 0 0 {name=x3}
C {nand_3in.sym} 820 -570 0 0 {name=x4}
C {inv.sym} 1400 -590 0 0 {name=x5}
C {devices/iopin.sym} 770 -730 2 0 {name=p1 lab=FI}
C {devices/iopin.sym} 740 -710 2 0 {name=p2 lab=P}
C {devices/iopin.sym} 770 -690 2 0 {name=p3 lab=MODO}
C {devices/ipin.sym} 860 -790 0 0 {name=p4 lab=vdd}
C {devices/ipin.sym} 860 -630 0 0 {name=p5 lab=gnd}
C {devices/lab_pin.sym} 1390 -710 0 0 {name=l1 sig_type=std_logic lab=FI}
C {devices/lab_pin.sym} 1570 -710 2 0 {name=l2 sig_type=std_logic lab=FIB}
C {devices/lab_pin.sym} 970 -820 0 0 {name=l3 sig_type=std_logic lab=FI}
C {devices/lab_pin.sym} 970 -780 0 0 {name=l4 sig_type=std_logic lab=FIB}
C {devices/opin.sym} 1320 -780 0 0 {name=p6 lab=FO}
C {devices/lab_pin.sym} 920 -800 0 0 {name=l5 sig_type=std_logic lab=FO}
C {devices/lab_pin.sym} 1030 -850 1 0 {name=l6 sig_type=std_logic lab=vdd}
C {DFF.sym} 1050 -730 0 0 {name=x1}
C {DFF.sym} 1050 -520 0 1 {name=x6}
C {devices/lab_pin.sym} 1030 -750 3 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1190 -860 1 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1190 -700 3 0 {name=l9 sig_type=std_logic lab=gnd}
C {devices/iopin.sym} 1330 -580 0 0 {name=p7 lab=MODI}
C {devices/lab_pin.sym} 1270 -650 1 0 {name=l10 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1270 -530 3 0 {name=l11 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1070 -640 1 0 {name=l12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1070 -540 3 0 {name=l13 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1130 -610 2 0 {name=l14 sig_type=std_logic lab=FI}
C {devices/lab_pin.sym} 1130 -570 2 0 {name=l15 sig_type=std_logic lab=FIB}
C {devices/lab_pin.sym} 980 -590 0 0 {name=l16 sig_type=std_logic lab=MODO}
C {devices/lab_pin.sym} 1460 -760 1 0 {name=l17 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1460 -660 3 0 {name=l18 sig_type=std_logic lab=gnd}
