v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 720 -990 780 -990 {
lab=voutp}
N 780 -990 780 -920 {
lab=voutp}
N 780 -920 900 -920 {
lab=voutp}
N 900 -960 900 -920 {
lab=voutp}
N 800 -990 860 -990 {
lab=voutn}
N 800 -990 800 -940 {
lab=voutn}
N 680 -940 800 -940 {
lab=voutn}
N 680 -960 680 -940 {
lab=voutn}
N 680 -1070 680 -1020 {
lab=#net1}
N 680 -1070 900 -1070 {
lab=#net1}
N 900 -1070 900 -1020 {
lab=#net1}
N 680 -940 680 -850 {
lab=voutn}
N 900 -920 900 -850 {
lab=voutp}
N 720 -450 780 -450 {
lab=voutp}
N 780 -500 780 -450 {
lab=voutp}
N 780 -530 900 -530 {
lab=voutp}
N 900 -500 900 -480 {
lab=voutp}
N 810 -450 860 -450 {
lab=voutn}
N 810 -480 810 -450 {
lab=voutn}
N 780 -530 780 -500 {
lab=voutp}
N 900 -530 900 -500 {
lab=voutp}
N 810 -510 810 -480 {
lab=voutn}
N 680 -510 810 -510 {
lab=voutn}
N 680 -510 680 -480 {
lab=voutn}
N 680 -1010 680 -990 {
lab=#net1}
N 680 -1020 680 -1010 {
lab=#net1}
N 900 -1020 900 -990 {
lab=#net1}
N 680 -420 680 -390 {
lab=GND}
N 900 -420 900 -390 {
lab=GND}
N 780 -1110 780 -1070 {
lab=#net1}
N 780 -1200 780 -1170 {
lab=GND}
N 900 -850 980 -850 {
lab=voutp}
N 580 -850 680 -850 {
lab=voutn}
N 680 -450 680 -420 {
lab=GND}
N 900 -450 900 -420 {
lab=GND}
N 680 -850 680 -510 {
lab=voutn}
N 900 -850 900 -530 {
lab=voutp}
N 820 -610 900 -610 {
lab=voutp}
N 680 -610 760 -610 {
lab=voutn}
N 680 -790 760 -790 {
lab=voutn}
N 820 -790 900 -790 {
lab=voutp}
N 820 -690 900 -690 {
lab=voutp}
N 680 -690 760 -690 {
lab=voutn}
C {sky130_fd_pr/pfet_01v8.sym} 880 -990 0 0 {name=M11
L=0.15
W=60
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 700 -990 0 1 {name=M1
L=0.15
W=60
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 880 -450 0 0 {name=M2
L=0.15
W=30  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 700 -450 0 1 {name=M3
L=0.15
W=30  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 680 -390 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 900 -390 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 780 -1200 2 0 {name=l3 lab=GND}
C {devices/ind.sym} 790 -790 1 0 {name=L1
m=1
value=4n
footprint=1206
device=inductor}
C {sky130_fd_pr/corner.sym} 1080 -1030 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 1040 -780 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 0.03u
.save all"}
C {devices/isource.sym} 780 -1140 0 0 {name=I0 value=7.5m}
C {devices/capa.sym} 790 -610 1 0 {name=C13
m=100
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 790 -690 1 0 {name=R1
value=200
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 980 -850 2 0 {name=l4 sig_type=std_logic lab=voutp}
C {devices/lab_pin.sym} 580 -850 0 0 {name=l5 sig_type=std_logic lab=voutn}
