v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -190 -20 -190 10 {
lab=GND}
N -290 -50 -230 -50 {
lab=#net1}
N -290 -130 -290 -110 {
lab=#net2}
N -290 -130 -190 -130 {
lab=#net2}
N -190 -130 -190 -80 {
lab=#net2}
N -190 -80 -190 -50 {
lab=#net2}
N -90 -130 -90 -80 {
lab=#net2}
N -190 -130 -90 -130 {
lab=#net2}
N -90 -20 -90 10 {
lab=GND}
C {devices/vsource.sym} -90 -50 0 0 {name=VDS value=0.6}
C {devices/vsource.sym} -290 -80 0 0 {name=VGS value=0}
C {devices/gnd.sym} -90 10 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} 0 -110 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -210 -50 0 0 {name=M6
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} -190 10 0 0 {name=l3 lab=GND}
