v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4120 -515 4135 -515 {
lab=vin}
N 4245 -515 4275 -515 {
lab=vout}
N 3890 -535 3890 -515 {
lab=vin}
C {first_work.sym} 1125 -65 0 0 {name=X1}
C {devices/vdd.sym} 4175 -545 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 4175 -485 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 3890 -485 0 0 {name=Vin
value="pulse(0 1.2 1ns 1ns 1ns 4ns 10ns)"
}
C {devices/vsource.sym} 3810 -490 0 0 {name=Vdd
value=1.2}
C {devices/gnd.sym} 3890 -455 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 3810 -460 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 4120 -515 0 0 {name=l5 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 4275 -515 2 0 {name=l6 sig_type=std_logic lab=vout
}
C {devices/lab_pin.sym} 3890 -535 0 0 {name=l7 sig_type=std_logic lab=vin
}
C {devices/vdd.sym} 3810 -520 0 0 {name=l8 lab=VDD}
C {sky130_fd_pr/corner.sym} 4415 -525 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 4430 -350 0 0 {name=spice only_toplevel=false value=".tran 0.01n 50n
.save all"}
