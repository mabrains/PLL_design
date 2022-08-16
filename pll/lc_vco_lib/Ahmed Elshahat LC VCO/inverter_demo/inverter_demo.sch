v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -20 80 20 {
lab=vout}
N 40 -50 40 50 {
lab=vin}
N 80 -0 130 -0 {
lab=vout}
N 20 0 40 -0 {
lab=vin}
N 80 -80 80 -50 {
lab=VDD}
N 80 50 80 80 {
lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 60 -50 0 0 {name=M11
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 60 50 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 80 -80 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 80 80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -160 50 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} -160 80 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -160 20 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} -160 -70 0 0 {name=Vsource value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"


}
C {devices/gnd.sym} -160 -40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -160 -100 0 0 {name=l6 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 20 0 0 0 {name=l7 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 130 0 2 0 {name=l8 sig_type=std_logic lab=vout
}
C {devices/noconn.sym} 130 0 3 0 {name=l9}
C {devices/noconn.sym} 20 0 3 0 {name=l10}
C {devices/code_shown.sym} 260 50 0 0 {name=SPICE only_toplevel=false value=".tran 0.01ns 0.1us
.save all"}
C {sky130_fd_pr/corner.sym} 250 -100 0 0 {name=CORNER only_toplevel=false corner=tt}
