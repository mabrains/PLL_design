v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -220 950 -220 {
lab=vdd}
N 950 -220 950 -190 {
lab=vdd}
N 830 -220 830 -190 {
lab=vdd}
N 710 -220 710 -190 {
lab=vdd}
N 590 -220 590 -190 {
lab=vdd}
N 470 -220 470 -190 {
lab=vdd}
N 350 -220 350 -190 {
lab=vdd}
N 230 -220 230 -190 {
lab=vdd}
N 110 -220 110 -190 {
lab=vdd}
N 30 -150 50 -150 {
lab=fin}
N 90 -90 90 -70 {
lab=gnd}
N 1010 -150 1030 -150 {
lab=fout}
N 130 -90 130 -40 {
lab=p0}
N 130 -40 130 -30 {
lab=p0}
N 250 -90 250 -30 {
lab=p1}
N 370 -90 370 -30 {
lab=p2}
N 490 -90 490 -30 {
lab=p3}
N 610 -90 610 -30 {
lab=p4}
N 730 -90 730 -30 {
lab=p5}
N 850 -90 850 -30 {
lab=p6}
N 970 -90 970 -30 {
lab=p7}
N 1010 -130 1050 -130 {
lab=vdd}
N -0 -130 50 -130 {
lab=MODO}
C {cell.sym} 50 -10 0 0 {name=x1}
C {cell.sym} 170 -10 0 0 {name=x2}
C {cell.sym} 290 -10 0 0 {name=x3}
C {cell.sym} 410 -10 0 0 {name=x4}
C {cell.sym} 530 -10 0 0 {name=x5}
C {cell.sym} 650 -10 0 0 {name=x6}
C {cell.sym} 770 -10 0 0 {name=x7}
C {cell.sym} 890 -10 0 0 {name=x8}
C {devices/ipin.sym} 80 -220 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 30 -150 0 0 {name=p2 lab=fin}
C {devices/ipin.sym} 90 -70 0 0 {name=p3 lab=gnd}
C {devices/opin.sym} 1030 -150 0 0 {name=p4 lab=fout}
C {devices/lab_pin.sym} 210 -90 3 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 330 -90 3 0 {name=l2 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 450 -90 3 0 {name=l3 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 570 -90 3 0 {name=l4 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 690 -90 3 0 {name=l5 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 810 -90 3 0 {name=l6 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 930 -90 3 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/ipin.sym} 130 -30 0 0 {name=p5 lab=p0}
C {devices/ipin.sym} 250 -30 0 0 {name=p6 lab=p1}
C {devices/ipin.sym} 370 -30 0 0 {name=p7 lab=p2}
C {devices/ipin.sym} 490 -30 0 0 {name=p8 lab=p3}
C {devices/ipin.sym} 610 -30 0 0 {name=p9 lab=p4}
C {devices/ipin.sym} 730 -30 0 0 {name=p10 lab=p5}
C {devices/ipin.sym} 850 -30 0 0 {name=p11 lab=p6}
C {devices/ipin.sym} 970 -30 0 0 {name=p12 lab=p7}
C {devices/lab_pin.sym} 1050 -130 3 0 {name=l9 sig_type=std_logic lab=vdd}
C {devices/ipin.sym} 0 -130 0 0 {name=p13 lab=float}
