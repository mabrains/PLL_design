v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1530 -1080 1530 -1050 {
lab=VDD}
N 1530 -990 1530 -970 {
lab=GND}
N 1860 -970 1860 -920 {
lab=REF}
N 1860 -1170 1860 -1120 {
lab=FB}
C {../../PFD/xschem/PFD.sym} 2060 -1060 0 0 {name=X1}
C {devices/gnd.sym} 2150 -1000 0 0 {name=l16 lab=GND}
C {devices/vdd.sym} 2150 -1070 0 0 {name=l17 lab=VDD}
C {devices/lab_pin.sym} 2200 -1050 2 0 {name=l18 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} 2200 -1020 2 0 {name=l19 sig_type=std_logic lab=DN}
C {devices/lab_pin.sym} 2100 -1010 0 0 {name=l24 sig_type=std_logic lab=FB
}
C {devices/lab_pin.sym} 2100 -1060 0 0 {name=l25 sig_type=std_logic lab=REF
}
C {devices/vsource.sym} 1530 -1020 0 0 {name=Vdd
value=1.8}
C {devices/gnd.sym} 1530 -970 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} 1530 -1080 0 0 {name=l27 lab=VDD}
C {devices/vsource.sym} 1860 -890 0 0 {name=V4 value="pulse(0 1.8 20ns 10p 10p 50ns 100ns)"}
C {devices/lab_pin.sym} 1860 -960 1 0 {name=l21 sig_type=std_logic lab=REF
}
C {devices/vsource.sym} 1860 -1090 0 0 {name=V5 
value="pulse(0 1.8 0 10p 10p  50ns 100ns)"}
C {devices/gnd.sym} 1860 -1060 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1860 -1170 1 0 {name=l23 sig_type=std_logic lab=FB
}
C {devices/gnd.sym} 1860 -860 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 2355 -1125 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 2380 -910 0 0 {name=spice1 only_toplevel=false value=".tran 0.1ns 400ns
.control
plot UP DN
.endc"}
