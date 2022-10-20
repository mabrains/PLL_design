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
N 2070 -1000 2110 -1000 {
lab=FB}
N 2060 -1050 2110 -1050 {
lab=REF}
N 2140 -990 2140 -950 {
lab=GND}
N 2210 -1040 2280 -1040 {
lab=UP}
N 2210 -1010 2280 -1010 {
lab=DN}
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
.save all"}
C {/home/ahmedelbadry/PLL_design/pll/pfd_cp_lf_lib/coventional_pfd/xschem/conventional_pfd.sym} 2090 -1010 0 0 {}
C {devices/gnd.sym} 2140 -950 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 2060 -1050 0 0 {name=l2 sig_type=std_logic lab=REF
}
C {devices/lab_pin.sym} 2070 -1000 3 0 {name=l4 sig_type=std_logic lab=FB
}
C {devices/vdd.sym} 2140 -1060 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 2280 -1040 2 0 {name=l6 sig_type=std_logic lab=UP
}
C {devices/lab_pin.sym} 2280 -1010 2 0 {name=l7 sig_type=std_logic lab=DN
}
C {devices/lab_pin.sym} 2190 -1060 1 0 {name=l8 sig_type=std_logic lab=UPB
}
C {devices/lab_pin.sym} 2180 -990 3 0 {name=l9 sig_type=std_logic lab=DNB
}
