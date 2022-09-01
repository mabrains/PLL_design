v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3650 -270 3650 -200 {
lab=Vo}
N 3600 -270 3650 -270 {
lab=Vo}
N 3540 -330 3540 -300 {
lab=VDD}
N 3190 -140 3190 -90 {
lab=DN}
N 3190 -340 3190 -290 {
lab=UP}
N 3040 -260 3040 -230 {
lab=VDD}
N 3040 -170 3040 -150 {
lab=GND}
N 3810 -20 3810 -10 {
lab=VDD}
C {../../CP/xschem/CP.sym} 3460 -280 0 0 {name=X1}
C {devices/lab_pin.sym} 3490 -240 0 0 {name=l8 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} 3490 -290 0 0 {name=l7 sig_type=std_logic lab=UPb}
C {devices/lab_pin.sym} 3650 -270 2 0 {name=l10 sig_type=std_logic lab=Vo
}
C {devices/gnd.sym} 3650 -140 0 0 {name=l20 lab=GND}
C {devices/vsource.sym} 3650 -170 0 0 {name=V1 value=0.9}
C {devices/vdd.sym} 3540 -330 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 3540 -230 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 3190 -60 0 0 {name=V4 value="pulse(0 1.8 5ns 10p 10p 12.5ns 25ns)"}
C {devices/vsource.sym} 3190 -260 0 0 {name=V5 
value="pulse(0 1.8 0 10p 10p  12.5ns 25ns)"}
C {devices/gnd.sym} 3190 -230 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 3190 -340 1 0 {name=l23 sig_type=std_logic lab=UP
​
}
C {devices/gnd.sym} 3190 -30 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 3190 -140 0 0 {name=l4 sig_type=std_logic lab=DN}
C {devices/vsource.sym} 3040 -200 0 0 {name=Vdd
value=1.8}
C {devices/gnd.sym} 3040 -150 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} 3040 -260 0 0 {name=l27 lab=VDD}
C {sky130_fd_pr/corner.sym} 3745 -365 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 3770 -150 0 0 {name=spice1 only_toplevel=false value=".tran 0.1ns 400ns
.save all"}
C {devices/lab_pin.sym} 3770 20 0 0 {name=l6 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} 3880 20 2 0 {name=l9 sig_type=std_logic lab=UPb}
C {devices/vdd.sym} 3810 -20 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 3810 50 0 0 {name=l11 lab=GND}
C {../../CP/xschem/inverter.sym} 760 470 0 0 {name=X4}
C {devices/code.sym} 3920 -370 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
