v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -160 140 -160 {
lab=fin}
N 110 -130 140 -130 {
lab=float}
N 170 -230 990 -230 {
lab=vdd}
N 990 -230 990 -200 {
lab=vdd}
N 860 -230 860 -200 {
lab=vdd}
N 730 -230 730 -200 {
lab=vdd}
N 600 -230 600 -200 {
lab=vdd}
N 470 -230 470 -200 {
lab=vdd}
N 340 -230 340 -200 {
lab=vdd}
N 210 -230 210 -200 {
lab=vdd}
N 1050 -160 1100 -160 {
lab=fout}
N 190 -80 190 -60 {
lab=p0}
N 220 -80 220 -30 {
lab=gnd}
N 320 -80 320 -40 {
lab=p1}
N 450 -80 450 -40 {
lab=p2}
N 580 -80 580 -40 {
lab=p3}
N 710 -80 710 -40 {
lab=p4}
N 840 -80 840 -40 {
lab=p5}
N 970 -80 970 -40 {
lab=p6}
C {divider_2by3stages/cell.sym} 160 -100 0 0 {name=x1}
C {divider_2by3stages/cell.sym} 290 -100 0 0 {name=x2}
C {divider_2by3stages/cell.sym} 420 -100 0 0 {name=x3}
C {divider_2by3stages/cell.sym} 550 -100 0 0 {name=x4}
C {divider_2by3stages/cell.sym} 680 -100 0 0 {name=x5}
C {divider_2by3stages/cell.sym} 810 -100 0 0 {name=x6}
C {divider_2by3stages/cell.sym} 940 -100 0 0 {name=x7}
C {devices/ipin.sym} 170 -230 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 220 -30 2 1 {name=p3 lab=gnd}
C {devices/opin.sym} 1100 -160 0 0 {name=p4 lab=fout}
C {devices/ipin.sym} 190 -60 0 0 {name=p5 lab=p0}
C {devices/ipin.sym} 710 -40 0 0 {name=p9 lab=p4}
C {devices/ipin.sym} 840 -40 0 0 {name=p10 lab=p5}
C {devices/ipin.sym} 970 -40 0 0 {name=p11 lab=p6}
C {devices/ipin.sym} 580 -40 0 0 {name=p1 lab=p3}
C {devices/ipin.sym} 450 -40 0 0 {name=p6 lab=p2}
C {devices/ipin.sym} 320 -40 0 0 {name=p7 lab=p1}
C {devices/ipin.sym} 90 -160 0 0 {name=p2 lab=fin}
C {devices/ipin.sym} 110 -130 0 0 {name=p13 lab=float}
C {devices/lab_pin.sym} 1050 -130 2 0 {name=l9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 350 -80 3 0 {name=l4 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 480 -80 3 0 {name=l4 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 610 -80 3 0 {name=l4 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 740 -80 3 0 {name=l4 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 870 -80 3 0 {name=l4 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1000 -80 3 0 {name=l4 sig_type=std_logic lab=gnd}
