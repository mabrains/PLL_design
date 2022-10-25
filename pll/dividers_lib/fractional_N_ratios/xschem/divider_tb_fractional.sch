v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -320 310 -320 {
lab=fin}
N 60 -260 60 -220 {
lab=GND}
N 290 -280 310 -280 {
lab=opennet}
N 290 -280 290 -260 {
lab=opennet}
N 610 -300 740 -300 {
lab=fout}
C {devices/lab_pin.sym} 740 -300 2 0 {name=l1 sig_type=std_logic lab=fout}
C {devices/code_shown.sym} 1050 -860 0 0 {name=Transient analysis only_toplevel=false value=".op
.param W=2
.param f_input= 2.404G
.control
tran 0.01n 1.3u
plot fout 
.endc
.measure tran tdiff1 TRIG v(fout) VAL=0.9 RISE=1 TARG v(fout) VAL=0.9 RISE=2
.measure tran f_out1 param = \{1/tdiff1\} 
.measure tran N1 param = \{f_input/f_out1\}
.measure tran tdiff2 TRIG v(fout) VAL=0.9 RISE=2 TARG v(fout) VAL=0.9 RISE=3
.measure tran f_out2 param = \{1/tdiff2\} 
.measure tran N2 param = \{f_input/f_out2\}
.measure tran tdiff3 TRIG v(fout) VAL=0.9 RISE=3 TARG v(fout) VAL=0.9 RISE=4
.measure tran f_out3 param = \{1/tdiff3\} 
.measure tran N3 param = \{f_input/f_out3\}
.measure tran tdiff4 TRIG v(fout) VAL=0.9 RISE=4 TARG v(fout) VAL=0.9 RISE=5
.measure tran f_out4 param = \{1/tdiff4\} 
.measure tran N4 param = \{f_input/f_out4\}
.measure tran tdiff5 TRIG v(fout) VAL=0.9 RISE=5 TARG v(fout) VAL=0.9 RISE=6
.measure tran f_out5 param = \{1/tdiff5\} 
.measure tran N5 param = \{f_input/f_out5\}
.measure tran tdiff6 TRIG v(fout) VAL=0.9 RISE=6 TARG v(fout) VAL=0.9 RISE=7
.measure tran f_out6 param = \{1/tdiff6\} 
.measure tran N6 param = \{f_input/f_out6\}
.measure tran tdiff7 TRIG v(fout) VAL=0.9 RISE=7 TARG v(fout) VAL=0.9 RISE=8
.measure tran f_out7 param = \{1/tdiff7\} 
.measure tran N7 param = \{f_input/f_out7\}
.measure tran tdiff8 TRIG v(fout) VAL=0.9 RISE=8 TARG v(fout) VAL=0.9 RISE=9
.measure tran f_out8 param = \{1/tdiff8\} 
.measure tran N8 param = \{f_input/f_out8\}
.measure tran tdiff9 TRIG v(fout) VAL=0.9 RISE=9 TARG v(fout) VAL=0.9 RISE=10
.measure tran f_out9 param = \{1/tdiff9\} 
.measure tran N9 param = \{f_input/f_out9\}
.measure tran tdiff10 TRIG v(fout) VAL=0.9 RISE=10 TARG v(fout) VAL=0.9 RISE=11
.measure tran f_out10 param = \{1/tdiff10\} 
.measure tran N10 param = \{f_input/f_out10\}
* N is calculated over 10 cycles
.measure tran tdiff TRIG v(fout) VAL=0.9 RISE=1 TARG v(fout) VAL=0.9 RISE=11
.measure tran f_out param = \{1/tdiff\} 
.measure tran N_fractional param = \{f_input/f_out\}
.print N1 N2 N3 N4 N5 N6 N7 N8 N9 N10
.print N_fractional 
.print f_out
.temp 27
.options tnom= 27"}
C {devices/vsource.sym} 790 -140 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} 790 -170 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 790 -110 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 470 -380 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 60 -220 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 330 -90 0 0 {name=VDD1 value="PULSE(0 1.8 0 10p 10p 600n 1000n)"}
C {devices/vsource.sym} 470 -90 0 0 {name=VDD2 value="PULSE(1.8 0 0 10p 10p 600n 1000n)"}
C {devices/vsource.sym} 260 -90 0 0 {name=VDD3 value="PULSE(0 1.8 0 10p 10p 600n 1000n)"}
C {devices/vsource.sym} 400 -90 0 0 {name=VDD4 value="PULSE(0 1.8 0 10p 10p 600n 1000n)"}
C {devices/vsource.sym} 540 -90 0 0 {name=VDD5 value=0}
C {devices/vsource.sym} 610 -90 0 0 {name=VDD6 value=0}
C {devices/vsource.sym} 190 -90 0 0 {name=VDD7 value="PULSE(0 1.8 0 10p 10p 600n 1000n)"}
C {devices/vsource.sym} 680 -90 0 0 {name=VDD8 value=0}
C {devices/gnd.sym} 680 -60 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 610 -60 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 540 -60 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 470 -60 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 400 -60 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 330 -60 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 260 -60 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 190 -60 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 200 -320 1 0 {name=l14 sig_type=std_logic lab=fin}
C {devices/lab_pin.sym} 190 -120 1 0 {name=l15 sig_type=std_logic lab=p0}
C {devices/lab_pin.sym} 260 -120 1 0 {name=l16 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 330 -120 1 0 {name=l17 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 400 -120 1 0 {name=l18 sig_type=std_logic lab=p3}
C {devices/lab_pin.sym} 470 -120 1 0 {name=l19 sig_type=std_logic lab=p4}
C {devices/lab_pin.sym} 540 -120 1 0 {name=l20 sig_type=std_logic lab=p5}
C {devices/lab_pin.sym} 610 -120 1 0 {name=l21 sig_type=std_logic lab=p6}
C {devices/lab_pin.sym} 680 -120 1 0 {name=l22 sig_type=std_logic lab=p7}
C {devices/gnd.sym} 380 -220 0 0 {name=l23 lab=GND}
C {divider.sym} 460 -360 0 0 {name=x1}
C {devices/lab_pin.sym} 430 -220 3 0 {name=l24 sig_type=std_logic lab=p0}
C {devices/lab_pin.sym} 450 -220 3 0 {name=l25 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 470 -220 3 0 {name=l26 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 490 -220 3 0 {name=l27 sig_type=std_logic lab=p3}
C {devices/lab_pin.sym} 510 -220 3 0 {name=l28 sig_type=std_logic lab=p4}
C {devices/lab_pin.sym} 530 -220 3 0 {name=l29 sig_type=std_logic lab=p5}
C {devices/lab_pin.sym} 550 -220 3 0 {name=l30 sig_type=std_logic lab=p6}
C {devices/lab_pin.sym} 570 -220 3 0 {name=l31 sig_type=std_logic lab=p7}
C {devices/vsource.sym} 60 -290 0 0 {name=V1 value="SIN (0.9 0.9 \{f_input\} 0 0 0)"}
C {devices/lab_pin.sym} 290 -280 0 0 {name=l32 sig_type=std_logic lab=opennet}
C {devices/capa.sym} 740 -270 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 740 -240 0 0 {name=l33 lab=GND}
C {devices/isource.sym} 290 -230 0 0 {name=I0 value=0}
C {devices/gnd.sym} 290 -200 0 0 {name=l34 lab=GND}
C {devices/code.sym} 340 -630 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
