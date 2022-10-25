v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -260 60 -220 {
lab=GND}
N 290 -280 290 -260 {
lab=opennet}
N 620 -310 740 -310 {
lab=fout}
N 740 -310 740 -300 {
lab=fout}
N 60 -320 320 -320 {
lab=fin}
N 290 -300 290 -280 {
lab=opennet}
N 290 -300 320 -300 {
lab=opennet}
C {devices/lab_pin.sym} 740 -300 2 0 {name=l1 sig_type=std_logic lab=fout}
C {devices/code.sym} 900 -470 0 0 {name=tt_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 50 -590 0 0 {name=Transient analysis only_toplevel=false value=".option savecurrents
.op
.control
tran 0.01n 0.5u
plot fout
.endc
.measure tran tdiff TRIG v(fout) VAL=0.9 RISE=2 TARG v(fout) VAL=0.9 RISE=3
.measure tran frequency param = \{1/tdiff\}"}
C {devices/vsource.sym} 930 -270 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} 930 -300 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 930 -240 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 470 -380 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 60 -220 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 610 -90 0 1 {name=VDD1 value=0}
C {devices/vsource.sym} 470 -90 0 1 {name=VDD2 value=1.8}
C {devices/vsource.sym} 680 -90 0 1 {name=VDD3 value=0}
C {devices/vsource.sym} 540 -90 0 1 {name=VDD4 value=0}
C {devices/vsource.sym} 400 -90 0 1 {name=VDD5 value=1.8}
C {devices/vsource.sym} 330 -90 0 1 {name=VDD6 value=1.8}
C {devices/vsource.sym} 750 -90 0 1 {name=VDD7 value=0}
C {devices/gnd.sym} 330 -60 0 1 {name=l7 lab=GND}
C {devices/gnd.sym} 400 -60 0 1 {name=l8 lab=GND}
C {devices/gnd.sym} 470 -60 0 1 {name=l9 lab=GND}
C {devices/gnd.sym} 540 -60 0 1 {name=l10 lab=GND}
C {devices/gnd.sym} 610 -60 0 1 {name=l11 lab=GND}
C {devices/gnd.sym} 680 -60 0 1 {name=l12 lab=GND}
C {devices/gnd.sym} 750 -60 0 1 {name=l13 lab=GND}
C {devices/lab_pin.sym} 200 -320 1 0 {name=l14 sig_type=std_logic lab=fin}
C {devices/lab_pin.sym} 750 -120 3 1 {name=l15 sig_type=std_logic lab=p0}
C {devices/lab_pin.sym} 680 -120 3 1 {name=l16 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 610 -120 3 1 {name=l17 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 540 -120 3 1 {name=l18 sig_type=std_logic lab=p3}
C {devices/lab_pin.sym} 470 -120 3 1 {name=l19 sig_type=std_logic lab=p4}
C {devices/lab_pin.sym} 400 -120 3 1 {name=l20 sig_type=std_logic lab=p5}
C {devices/lab_pin.sym} 330 -120 3 1 {name=l21 sig_type=std_logic lab=p6}
C {devices/gnd.sym} 390 -230 0 1 {name=l23 lab=GND}
C {devices/lab_pin.sym} 530 -230 1 1 {name=l24 sig_type=std_logic lab=p0}
C {devices/lab_pin.sym} 510 -230 1 1 {name=l25 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 490 -230 1 1 {name=l26 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 470 -230 1 1 {name=l27 sig_type=std_logic lab=p3}
C {devices/lab_pin.sym} 450 -230 1 1 {name=l28 sig_type=std_logic lab=p4}
C {devices/lab_pin.sym} 430 -230 1 1 {name=l29 sig_type=std_logic lab=p5}
C {devices/lab_pin.sym} 410 -230 1 1 {name=l30 sig_type=std_logic lab=p6}
C {devices/vsource.sym} 60 -290 0 0 {name=V1 value="SIN (0.9 0.9 2.4G 0 0 0)"}
C {devices/lab_pin.sym} 290 -280 0 0 {name=l32 sig_type=std_logic lab=opennet}
C {devices/capa.sym} 740 -270 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 740 -240 0 0 {name=l33 lab=GND}
C {devices/isource.sym} 290 -230 0 0 {name=I0 value=0}
C {devices/gnd.sym} 290 -200 0 0 {name=l34 lab=GND}
C {divider_2by3stages/divider.sym} 470 -250 0 0 {name=x1}
