v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -240 -100 -240 -70 {
lab=VDD}
N -240 -10 -240 10 {
lab=GND}
N 90 10 90 60 {
lab=REF}
N 90 -190 90 -140 {
lab=FB}
N 420 -10 470 -10 {
lab=VO}
N 470 -10 470 10 {
lab=VO}
C {devices/vsource.sym} -240 -40 0 0 {name=Vdd
value=1.8}
C {devices/gnd.sym} -240 10 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} -240 -100 0 0 {name=l27 lab=VDD}
C {devices/lab_pin.sym} 90 10 1 0 {name=l21 sig_type=std_logic lab=REF
}
C {devices/gnd.sym} 90 -80 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 90 -190 1 0 {name=l23 sig_type=std_logic lab=FB
}
C {devices/gnd.sym} 90 120 0 0 {name=l3 lab=GND}
C {../../PFD_CP_LPF/xschem/PFD_CP_LPF.sym} 13890 6200 0 0 {name=XFD_CP_loop_filter
}
C {devices/gnd.sym} 350 40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 290 -40 0 0 {name=l2 sig_type=std_logic lab=REF
}
C {devices/lab_pin.sym} 290 20 0 0 {name=l4 sig_type=std_logic lab=FB
}
C {devices/vdd.sym} 350 -60 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/corner.sym} 585 -125 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 610 90 0 0 {name=spice1 only_toplevel=false value=".tran 0.1ns 400ns
.save all"}
C {devices/lab_pin.sym} 470 10 3 0 {name=l6 sig_type=std_logic lab=VO}
C {devices/vsource.sym} 90 90 0 0 {name=V1 value="pulse(0 1.8 20ns 10p 10p 50ns 100ns)"}
C {devices/vsource.sym} 90 -110 0 0 {name=V2 value="pulse(0 1.8 0 10p 10p 50ns 100ns)"}
