v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -80 180 -80 {
lab=GND}
N 50 -80 80 -80 {
lab=GND}
N 50 -160 50 -140 {
lab=in}
N 240 -320 270 -320 {
lab=out}
N -80 -320 -60 -320 {
lab=#net1}
C {devices/code.sym} 420 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vdd.sym} -79 -319 3 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 180 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 50 -110 0 0 {name=vin value=1.8}
C {devices/vsource.sym} 350 -210 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} 350 -240 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 350 -180 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 290 -80 0 0 {name=dc_analysis only_toplevel=false value=".dc vin 1.8 0 0.01
.save all"}
C {devices/lab_pin.sym} 270 -320 2 0 {name=l3 sig_type=std_logic lab=out

}
C {devices/lab_pin.sym} -60 -300 0 0 {name=l4 sig_type=std_logic lab=in

}
C {devices/lab_pin.sym} -60 -280 3 0 {name=l7 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 50 -160 2 0 {name=l8 sig_type=std_logic lab=in

}
