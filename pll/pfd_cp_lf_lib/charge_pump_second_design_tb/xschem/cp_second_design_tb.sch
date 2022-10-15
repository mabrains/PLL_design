v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3520 -690 3520 -620 {
lab=UB}
N 3510 -910 3510 -830 {
lab=DN}
N 3510 -830 3510 -820 {
lab=DN}
N 3860 -840 3860 -820 {
lab=VDD}
N 3790 -810 3810 -810 {
lab=DN}
N 3810 -760 3810 -730 {
lab=UB}
N 3910 -780 3960 -780 {
lab=VOP}
N 3960 -780 3960 -770 {
lab=VOP}
N 3860 -750 3860 -720 {
lab=GND}
C {devices/vsource.sym} 3650 -580 0 0 {name=Vdd
value=1.8}
C {devices/gnd.sym} 3650 -550 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} 3650 -610 0 0 {name=l27 lab=VDD}
C {devices/vsource.sym} 3520 -595 0 0 {name=Vin
value=1.8
}
C {devices/gnd.sym} 3520 -565 0 0 {name=l28 lab=GND}
C {devices/vsource.sym} 3510 -795 0 0 {name=Vin1
value=1.8
}
C {devices/gnd.sym} 3510 -765 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} 3520 -690 1 0 {name=l32 sig_type=std_logic lab=UB}
C {devices/lab_pin.sym} 3510 -910 1 0 {name=l29 sig_type=std_logic lab=DN}
C {sky130_fd_pr/corner.sym} 4135 -945 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 4170 -730 0 0 {name=spice only_toplevel=false value=".dc VOP 0 1.8 0.1
.save all"}
C {devices/lab_pin.sym} 3790 -810 0 0 {name=l29 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} 3810 -730 3 0 {name=l32 sig_type=std_logic lab=UB}
C {devices/gnd.sym} 3860 -720 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} 3860 -840 0 0 {name=l27 lab=VDD}
C {devices/lab_pin.sym} 3960 -780 2 0 {name=l29 sig_type=std_logic lab=VOP}
C {devices/vsource.sym} 3960 -740 0 0 {name=VOP value=0.9}
C {devices/gnd.sym} 3960 -710 0 0 {name=l36 lab=GND}
C {../../charge_pump_second_design/xschem/CP_with_buffer.sym} 3780 -810 0 0 {name=X1}
