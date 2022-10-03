v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -120 60 -120 90 {
lab=#net1}
N -300 90 -120 90 {
lab=#net1}
N -300 60 -300 90 {
lab=#net1}
N -120 -50 -120 -0 {
lab=OUT}
N -300 -50 -120 -50 {
lab=OUT}
N -300 -50 -300 -0 {
lab=OUT}
N -210 -80 -210 -50 {
lab=OUT}
N -210 -180 -210 -140 {
lab=#net2}
N -210 -260 -210 -240 {
lab=VDD}
N -380 30 -340 30 {
lab=A}
N -190 30 -160 30 {
lab=B}
N -210 -70 -20 -70 {
lab=OUT}
N -300 -110 -250 -110 {
lab=B}
N -310 -210 -250 -210 {
lab=A}
C {sky130_fd_pr/nfet3_01v8.sym} -320 30 0 0 {name=M9
L=0.2
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -140 30 0 0 {name=M1
L=0.2
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -230 -210 0 0 {name=M13
L=0.2
W=4
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -230 -110 0 0 {name=M14
L=0.2
W=4
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -310 -210 0 0 {name=l1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -300 -110 0 0 {name=l2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -20 -70 3 0 {name=l3 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} -380 30 0 0 {name=l4 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -190 30 0 0 {name=l5 sig_type=std_logic lab=B}
C {devices/ipin.sym} -550 -250 0 0 {name=p1 lab=A
}
C {devices/ipin.sym} -550 -200 0 0 {name=p2 lab=B
}
C {devices/iopin.sym} -600 -150 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} -600 -90 0 0 {name=p4 lab=GND}
C {devices/opin.sym} -600 -40 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} -210 -260 1 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -220 90 3 0 {name=l7 sig_type=std_logic lab=GND}
