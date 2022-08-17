v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 610 -300 650 -300 {
lab=fout}
N 60 -320 310 -320 {
lab=fin}
N 60 -260 60 -220 {
lab=GND}
N 290 -280 310 -280 {
lab=#net1}
C {devices/lab_pin.sym} 650 -300 2 0 {name=l1 sig_type=std_logic lab=fout}
C {devices/code.sym} 720 -340 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 720 -180 0 0 {name=Transient analysis only_toplevel=false value=" .tran 5n 150n
.save all"}
C {devices/vsource.sym} 60 -290 0 0 {name=vin value="PULSE( 0 1.8 0 10f 10f 200p 400p )"}
C {devices/vsource.sym} 670 -390 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} 670 -420 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 670 -360 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 470 -380 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 60 -220 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 330 -90 0 0 {name=VDD1 value=1.8}
C {devices/vsource.sym} 470 -90 0 0 {name=VDD2 value=1.8}
C {devices/vsource.sym} 260 -90 0 0 {name=VDD3 value=0}
C {devices/vsource.sym} 400 -90 0 0 {name=VDD4 value=1.8}
C {devices/vsource.sym} 540 -90 0 0 {name=VDD5 value=0}
C {devices/vsource.sym} 610 -90 0 0 {name=VDD6 value=0}
C {devices/vsource.sym} 190 -90 0 0 {name=VDD7 value=0}
C {devices/vsource.sym} 680 -90 0 0 {name=VDD8 value=1.8}
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
