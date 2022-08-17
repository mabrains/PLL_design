v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 150 -370 180 -370 {
lab=D}
N 320 -370 360 -370 {
lab=#net1}
N 230 -320 230 -250 {
lab=clk}
N 230 -450 230 -420 {
lab=clkb}
N 260 -470 260 -420 {
lab=vdd}
N 260 -320 260 -310 {
lab=gnd}
N 400 -450 400 -420 {
lab=vdd}
N 400 -320 400 -300 {
lab=gnd}
N 260 -220 290 -220 {
lab=clk}
N 340 -170 410 -170 {
lab=#net2}
N 490 -120 490 -100 {
lab=gnd}
N 530 -170 570 -170 {
lab=#net3}
N 570 -370 570 -170 {
lab=#net3}
N 480 -370 570 -370 {
lab=#net3}
N 490 -240 490 -220 {
lab=vdd}
N 390 -250 400 -250 {
lab=gnd}
N 400 -300 400 -250 {
lab=gnd}
N 390 -220 420 -220 {
lab=clkb}
N 650 -370 680 -370 {
lab=#net3}
N 820 -370 860 -370 {
lab=#net4}
N 730 -320 730 -250 {
lab=clkb}
N 730 -450 730 -420 {
lab=clk}
N 760 -470 760 -420 {
lab=vdd}
N 900 -450 900 -420 {
lab=vdd}
N 900 -320 900 -300 {
lab=gnd}
N 840 -170 910 -170 {
lab=#net5}
N 990 -120 990 -100 {
lab=gnd}
N 1030 -170 1070 -170 {
lab=out}
N 1070 -370 1070 -170 {
lab=out}
N 980 -370 1070 -370 {
lab=out}
N 990 -240 990 -220 {
lab=vdd}
N 890 -250 900 -250 {
lab=gnd}
N 900 -300 900 -250 {
lab=gnd}
N 890 -220 920 -220 {
lab=clk}
N 570 -370 650 -370 {
lab=#net3}
N 230 -220 260 -220 {
lab=clk}
N 230 -250 230 -220 {
lab=clk}
N 270 -250 290 -250 {
lab=vdd}
N 730 -250 730 -220 {
lab=clkb}
N 730 -220 770 -220 {
lab=clkb}
N 770 -220 790 -220 {
lab=clkb}
N 340 -370 340 -310 {
lab=#net1}
N 840 -370 840 -310 {
lab=#net4}
N 1070 -310 1080 -310 {
lab=out}
C {inv.sym} 340 -250 0 0 {name=x3}
C {devices/ipin.sym} 150 -370 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 230 -260 0 0 {name=p2 lab=clk}
C {TG.sym} 140 -220 0 0 {name=x1}
C {TG.sym} 490 -130 3 0 {name=x2}
C {devices/ipin.sym} 230 -450 0 0 {name=p3 lab=clkb}
C {devices/ipin.sym} 260 -470 0 0 {name=p4 lab=vdd}
C {devices/ipin.sym} 260 -310 3 0 {name=p6 lab=gnd}
C {inv.sym} 550 -50 0 1 {name=x4}
C {inv.sym} 840 -250 0 0 {name=x5}
C {TG.sym} 640 -220 0 0 {name=x6}
C {TG.sym} 990 -130 3 0 {name=x7}
C {inv.sym} 1050 -50 0 1 {name=x8}
C {devices/opin.sym} 1080 -310 0 0 {name=p5 lab=out}
C {devices/lab_pin.sym} 270 -250 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 420 -220 2 0 {name=l2 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 490 -240 1 0 {name=l3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 490 -100 1 1 {name=l4 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 400 -450 1 0 {name=l5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 760 -470 1 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 760 -320 1 1 {name=l7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 990 -100 1 1 {name=l8 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 900 -290 0 1 {name=l9 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 900 -450 1 0 {name=l10 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 730 -230 0 0 {name=l11 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 990 -240 1 0 {name=l12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 730 -450 0 0 {name=l13 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 920 -220 2 0 {name=l14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 790 -250 0 0 {name=l15 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 400 -280 0 1 {name=l16 sig_type=std_logic lab=gnd}
