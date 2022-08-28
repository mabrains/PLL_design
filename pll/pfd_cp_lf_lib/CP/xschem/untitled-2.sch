v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -350 -200 -350 -190 {
lab=VBP}
N 120 0 150 0 {
lab=VO}
N 90 50 90 80 {
lab=VBP}
N 90 -80 90 -60 {
lab=VBN}
N 60 50 60 90 {
lab=GND}
N 60 50 70 50 {
lab=GND}
N 150 0 180 0 {
lab=VO}
N 180 0 180 50 {
lab=VO}
C {OTA.sym} -30 -10 0 0 {name=X1}
C {devices/vsource.sym} -110 40 0 0 {name=Vdd
value=1.8}
C {devices/gnd.sym} -110 70 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} -110 10 0 0 {name=l27 lab=VDD}
C {devices/vdd.sym} 60 -60 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 60 90 1 0 {name=l2 lab=GND}
C {devices/vsource.sym} -220 40 0 0 {name=VOP value="0.9 ac 0.5"}
C {devices/gnd.sym} -220 70 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -220 10 1 0 {name=l38 sig_type=std_logic lab=VOP}
C {devices/vsource.sym} -310 50 0 0 {name=VOP1 value="0.9 ac -0.5"}
C {devices/gnd.sym} -310 80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -310 20 1 0 {name=l5 sig_type=std_logic lab=VON}
C {devices/lab_pin.sym} 20 -10 0 0 {name=l6 sig_type=std_logic lab=VOP}
C {devices/lab_pin.sym} 20 20 0 0 {name=l7 sig_type=std_logic lab=VON}
C {devices/lab_pin.sym} -350 -200 1 0 {name=l40 sig_type=std_logic lab=VBP}
C {devices/vsource.sym} -350 -160 0 0 {name=V4 value="0.9"
}
C {devices/gnd.sym} -350 -130 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} -90 -160 0 0 {name=V5 value="0.9"
}
C {devices/gnd.sym} -90 -130 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} -90 -190 1 0 {name=l43 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 90 80 3 0 {name=l9 sig_type=std_logic lab=VBP}
C {sky130_fd_pr/corner.sym} 235 -185 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 240 -20 0 0 {name=spice only_toplevel=false value=".ac dec 20 1 1e12
.save all"}
C {devices/lab_pin.sym} 90 -80 1 0 {name=l11 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 180 50 3 0 {name=l8 sig_type=std_logic lab=VO}
