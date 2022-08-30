v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 510 -520 570 -520 {
lab=voutp}
N 570 -570 570 -520 {
lab=voutp}
N 570 -600 690 -600 {
lab=voutp}
N 690 -570 690 -550 {
lab=voutp}
N 600 -520 650 -520 {
lab=voutn}
N 600 -550 600 -520 {
lab=voutn}
N 570 -600 570 -570 {
lab=voutp}
N 690 -600 690 -570 {
lab=voutp}
N 600 -580 600 -550 {
lab=voutn}
N 470 -580 600 -580 {
lab=voutn}
N 470 -580 470 -550 {
lab=voutn}
N 690 -920 770 -920 {
lab=voutp}
N 370 -920 470 -920 {
lab=voutn}
N 470 -520 470 -490 {
lab=#net1}
N 690 -520 690 -490 {
lab=#net1}
N 470 -920 470 -580 {
lab=voutn}
N 690 -920 690 -600 {
lab=voutp}
N 610 -680 690 -680 {
lab=voutp}
N 470 -680 550 -680 {
lab=voutn}
N 470 -860 550 -860 {
lab=voutn}
N 610 -860 690 -860 {
lab=voutp}
N 610 -760 690 -760 {
lab=voutp}
N 470 -760 550 -760 {
lab=voutn}
N 470 -490 470 -440 {
lab=#net1}
N 690 -490 690 -430 {
lab=#net1}
N 470 -420 590 -420 {
lab=#net1}
N 470 -440 470 -420 {
lab=#net1}
N 590 -420 690 -420 {
lab=#net1}
N 690 -430 690 -420 {
lab=#net1}
N 590 -360 590 -340 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 670 -520 0 0 {name=M2
L=0.15
W=30
nf=1 mult=1

spiceprefix=X
model=nfet_01v8}
C {sky130_fd_pr/nfet_01v8.sym} 490 -520 0 1 {name=M3
L=0.15
W=30
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 590 -340 0 0 {name=l3 lab=GND}
C {devices/ind.sym} 580 -860 1 0 {name=L1
m=1
value=4n
footprint=1206
device=inductor}
C {sky130_fd_pr/corner.sym} 830 -780 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 830 -850 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 0.004u
.save all"}
C {devices/isource.sym} 590 -390 0 0 {name=I0 value=30m}
C {devices/capa.sym} 580 -680 1 0 {name=C13
m=100
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 580 -760 1 0 {name=R1
value=200
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 770 -920 2 0 {name=l4 sig_type=std_logic lab=voutp}
C {devices/lab_pin.sym} 370 -920 0 0 {name=l5 sig_type=std_logic lab=voutn}
C {devices/code.sym} 990 -780 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
