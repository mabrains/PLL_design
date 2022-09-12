v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 50 -10 50 20 {
lab=GND}
N 50 -50 170 -50 {
lab=#net1}
N 50 -50 50 -40 {
lab=#net1}
N -50 -10 10 -10 {
lab=#net2}
N 50 20 50 50 {
lab=GND}
N 170 10 170 50 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 30 -10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 170 -20 0 0 {name=VDS value=0.6}
C {devices/gnd.sym} 170 50 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -50 20 0 0 {name=VGS value=0}
C {devices/gnd.sym} -50 50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 50 50 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/corner.sym} 250 -50 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -150 -80 0 0 {name=M2
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
