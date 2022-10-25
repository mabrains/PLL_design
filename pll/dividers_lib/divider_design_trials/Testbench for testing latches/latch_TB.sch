v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 110 -220 0 0 {name=V1 value="PULSE (1.8 0 0 10p 10p \{1.0/(2.0 * freq)\} \{1.0/freq\})"}
C {devices/vsource.sym} 690 -390 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} 690 -420 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 690 -360 0 0 {name=l6 lab=GND}
C {devices/code.sym} 470 -490 0 0 {name=tt_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 260 -470 0 0 {name=s1 only_toplevel=false value=".op
.param freq=3G
.control
tran 0.001n 4n
plot CLK 
plot D
plot Q QB
.endc"}
C {devices/gnd.sym} 110 -190 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 570 -160 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 570 -300 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 650 -240 2 0 {name=l1 sig_type=std_logic lab=Q}
C {devices/vsource.sym} 190 -310 0 0 {name=V3 value="PULSE (0 1.8 \{0.2/freq\} 10p 10p \{1.0/freq\} \{2.0/freq\})"}
C {devices/gnd.sym} 190 -280 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 190 -340 2 0 {name=l1 sig_type=std_logic lab=D}
C {devices/vsource.sym} 190 -150 0 0 {name=V4 value="PULSE (0 1.8 0 10p 10p \{1.0/(2.0 * freq)\} \{1.0/freq\})"}
C {devices/gnd.sym} 190 -120 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 190 -180 2 0 {name=l1 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 500 -230 2 1 {name=l1 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 500 -210 2 1 {name=l1 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 500 -250 0 0 {name=l1 sig_type=std_logic lab=CLKB}
C {devices/lab_pin.sym} 110 -250 0 1 {name=l1 sig_type=std_logic lab=CLKB}
C {CMOS_d_latch.sym} 650 -230 0 0 {name=x1}
C {devices/lab_pin.sym} 650 -210 2 0 {name=l1 sig_type=std_logic lab=QB}
