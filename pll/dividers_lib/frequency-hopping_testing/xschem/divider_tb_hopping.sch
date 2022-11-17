v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -670 400 -670 {
lab=fin}
N 150 -610 150 -570 {
lab=GND}
N 380 -630 400 -630 {
lab=opennet}
N 380 -630 380 -610 {
lab=opennet}
N 700 -650 830 -650 {
lab=fout}
C {devices/lab_pin.sym} 830 -650 2 0 {name=l1 sig_type=std_logic lab=fout}
C {devices/code_shown.sym} 920 -840 0 0 {name=Transient analysis only_toplevel=false value=".op
.param W=2
.param f_input= 2.404G
.control
tran 0.01n 0.8u
plot fout 
.endc
.measure tran tdiff1 TRIG v(fout) VAL=0.9 RISE=3 TARG v(fout) VAL=0.9 RISE=4
.measure tran f_out1 param = \{1/tdiff1\} 
.measure tran N1 param = \{f_input/f_out1\}
.measure tran tdiff2 TRIG v(fout) VAL=0.9 RISE=4 TARG v(fout) VAL=0.9 RISE=5
.measure tran f_out2 param = \{1/tdiff2\} 
.measure tran N2 param = \{f_input/f_out2\}
.measure tran tdiff3 TRIG v(fout) VAL=0.9 RISE=5 TARG v(fout) VAL=0.9 RISE=6
.measure tran f_out3 param = \{1/tdiff3\} 
.measure tran N3 param = \{f_input/f_out3\}
.measure tran tdiff4 TRIG v(fout) VAL=0.9 RISE=6 TARG v(fout) VAL=0.9 RISE=7
.measure tran f_out4 param = \{1/tdiff4\} 
.measure tran N4 param = \{f_input/f_out4\}
* N is calculated over 4 cycles
.measure tran tdiff TRIG v(fout) VAL=0.9 RISE=3 TARG v(fout) VAL=0.9 RISE=7
.measure tran f_out param = \{4/tdiff\} 
.measure tran N_total param = \{f_input/f_out\}
.print N1 N2 N3 N4 N_total
.print f_out
.temp 27
.options tnom= 27"}
C {devices/vsource.sym} 850 -330 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} 850 -360 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 850 -300 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 560 -730 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 150 -570 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 620 -330 0 0 {name=VDD5 value=0}
C {devices/vsource.sym} 690 -330 0 0 {name=VDD6 value=0}
C {devices/vsource.sym} 760 -330 0 0 {name=VDD8 value=0}
C {devices/gnd.sym} 760 -300 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 690 -300 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 620 -300 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 290 -670 1 0 {name=l14 sig_type=std_logic lab=fin}
C {devices/lab_pin.sym} 620 -360 1 0 {name=l20 sig_type=std_logic lab=p5}
C {devices/lab_pin.sym} 690 -360 1 0 {name=l21 sig_type=std_logic lab=p6}
C {devices/lab_pin.sym} 760 -360 1 0 {name=l22 sig_type=std_logic lab=p7}
C {devices/gnd.sym} 470 -570 0 0 {name=l23 lab=GND}
C {divider.sym} 550 -710 0 0 {name=x1}
C {devices/lab_pin.sym} 520 -570 3 0 {name=l24 sig_type=std_logic lab=p0}
C {devices/lab_pin.sym} 540 -570 3 0 {name=l25 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 560 -570 3 0 {name=l26 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 580 -570 3 0 {name=l27 sig_type=std_logic lab=p3}
C {devices/lab_pin.sym} 600 -570 3 0 {name=l28 sig_type=std_logic lab=p4}
C {devices/lab_pin.sym} 620 -570 3 0 {name=l29 sig_type=std_logic lab=p5}
C {devices/lab_pin.sym} 640 -570 3 0 {name=l30 sig_type=std_logic lab=p6}
C {devices/lab_pin.sym} 660 -570 3 0 {name=l31 sig_type=std_logic lab=p7}
C {devices/vsource.sym} 150 -640 0 0 {name=V1 value="SIN (0.9 0.9 \{f_input\} 0 0 0)"}
C {devices/lab_pin.sym} 380 -630 0 0 {name=l32 sig_type=std_logic lab=opennet}
C {devices/capa.sym} 830 -620 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 830 -590 0 0 {name=l33 lab=GND}
C {devices/isource.sym} 380 -580 0 0 {name=I0 value=0}
C {devices/gnd.sym} 380 -550 0 0 {name=l34 lab=GND}
C {devices/code.sym} 360 -870 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 200 -360 0 0 {name=VDD1 value="PULSE(1.8 0 0 10p 10p 200n 400n)"}
C {devices/vsource.sym} 350 -200 0 0 {name=VDD2 value="PULSE(0 1.8 0 10p 10p 200n 400n)"}
C {devices/vsource.sym} 130 -440 0 0 {name=VDD3 value="PULSE(1.8 0 0 10p 10p 100n 400n)"}
C {devices/vsource.sym} 280 -280 0 0 {name=VDD4 value="PULSE(1.8 0 0 10p 10p 200n 400n)"}
C {devices/vsource.sym} 80 -520 0 0 {name=VDD7 value="PULSE(1.8 0 0 10p 10p 300n 400n)"}
C {devices/gnd.sym} 280 -250 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 200 -330 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 130 -410 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 80 -490 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 80 -550 1 0 {name=l15 sig_type=std_logic lab=p0}
C {devices/lab_pin.sym} 130 -470 1 0 {name=l16 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 200 -390 1 0 {name=l17 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 280 -310 1 0 {name=l18 sig_type=std_logic lab=p3}
C {devices/lab_pin.sym} 350 -230 1 0 {name=l19 sig_type=std_logic lab=p4}
C {devices/gnd.sym} 350 -170 0 0 {name=l1 lab=GND}
