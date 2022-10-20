v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -480 250 -480 {
lab=D}
N 300 -430 300 -360 {
lab=clk}
N 300 -560 300 -530 {
lab=clkb}
N 330 -580 330 -530 {
lab=vdd}
N 330 -430 330 -420 {
lab=gnd}
N 470 -560 470 -530 {
lab=vdd}
N 470 -430 470 -410 {
lab=gnd}
N 330 -330 360 -330 {
lab=clk}
N 410 -280 480 -280 {
lab=#net1}
N 560 -230 560 -210 {
lab=gnd}
N 600 -280 640 -280 {
lab=int}
N 640 -480 640 -280 {
lab=int}
N 550 -480 640 -480 {
lab=int}
N 560 -350 560 -330 {
lab=vdd}
N 460 -360 470 -360 {
lab=gnd}
N 470 -410 470 -360 {
lab=gnd}
N 460 -330 490 -330 {
lab=clkb}
N 800 -430 800 -360 {
lab=clkb}
N 800 -560 800 -530 {
lab=clk}
N 830 -580 830 -530 {
lab=vdd}
N 970 -560 970 -530 {
lab=vdd}
N 970 -430 970 -410 {
lab=gnd}
N 910 -280 980 -280 {
lab=Q}
N 1060 -230 1060 -210 {
lab=gnd}
N 1100 -280 1140 -280 {
lab=QB}
N 1140 -480 1140 -280 {
lab=QB}
N 1050 -480 1140 -480 {
lab=QB}
N 1060 -350 1060 -330 {
lab=vdd}
N 960 -360 970 -360 {
lab=gnd}
N 970 -410 970 -360 {
lab=gnd}
N 960 -330 990 -330 {
lab=clk}
N 300 -330 330 -330 {
lab=clk}
N 300 -360 300 -330 {
lab=clk}
N 340 -360 360 -360 {
lab=vdd}
N 800 -360 800 -330 {
lab=clkb}
N 800 -330 840 -330 {
lab=clkb}
N 840 -330 860 -330 {
lab=clkb}
N 260 -370 300 -370 {
lab=clk}
N 390 -480 430 -480 {
lab=#net2}
N 410 -480 410 -420 {
lab=#net2}
N 890 -480 930 -480 {
lab=#net3}
N 910 -480 910 -420 {
lab=#net3}
N 640 -480 750 -480 {
lab=int}
C {inv.sym} 410 -360 0 0 {name=x3}
C {devices/ipin.sym} 220 -480 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 260 -370 0 0 {name=p2 lab=clk}
C {TG.sym} 210 -330 0 0 {name=x1}
C {TG.sym} 560 -240 3 0 {name=x2}
C {devices/ipin.sym} 300 -560 0 0 {name=p3 lab=clkb}
C {devices/ipin.sym} 330 -580 0 0 {name=p4 lab=vdd}
C {devices/ipin.sym} 330 -420 3 0 {name=p6 lab=gnd}
C {inv.sym} 620 -160 0 1 {name=x4}
C {inv.sym} 910 -360 0 0 {name=x5}
C {TG.sym} 710 -330 0 0 {name=x6}
C {TG.sym} 1060 -240 3 0 {name=x7}
C {inv.sym} 1120 -160 0 1 {name=x8}
C {devices/lab_pin.sym} 340 -360 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 490 -330 2 0 {name=l2 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 560 -350 1 0 {name=l3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 560 -210 1 1 {name=l4 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 470 -560 1 0 {name=l5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 830 -580 1 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 830 -430 1 1 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1060 -210 1 1 {name=l8 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 970 -400 0 1 {name=l9 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 970 -560 1 0 {name=l10 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 800 -340 0 0 {name=l11 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 1060 -350 1 0 {name=l12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 800 -560 0 0 {name=l13 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 990 -330 2 0 {name=l14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 860 -360 0 0 {name=l15 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 470 -390 0 1 {name=l16 sig_type=std_logic lab=gnd}
C {devices/opin.sym} 1140 -410 2 1 {name=p5 lab=QB}
C {devices/opin.sym} 940 -280 1 0 {name=p5 lab=Q}
