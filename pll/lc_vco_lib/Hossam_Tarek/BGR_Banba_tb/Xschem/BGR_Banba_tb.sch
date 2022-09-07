v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 620 250 620 400 {
lab=#net1}
N 620 400 620 430 {
lab=#net1}
N 380 120 380 130 {
lab=VDD}
N 380 370 380 390 {
lab=0}
N 500 250 620 250 {
lab=#net1}
C {devices/vsource.sym} 160 360 0 0 {name=Vsup value=1.8}
C {devices/lab_pin.sym} 160 330 0 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 390 0 0 {name=l5 sig_type=std_logic lab=0}
C {devices/code_shown.sym} 675 -15 0 0 {name=NGSPICE1
only_toplevel=true
value=" 
************************************************
*Source initialization
************************************************
*Vsup Vdd 0 DC 0 AC 0
************************************************
*Temp variation
************************************************
.control
alter Vsup DC = 1.8
dc temp -40 125 1
show
plot i(v1)
meas DC Vref_27 FIND Vref AT=27
meas DC Vref_neg40 FIND Vref AT=-40
meas DC Vref_120 FIND Vref AT=120 
.endc
************************************************
*Supply variation
************************************************
.control
dc Vsup 0 3 0.5
plot i(v1)
meas DC Vref_nom FIND Vref AT=1.8
meas DC Vref_Sup_pos10per FIND Vref AT=1.62
meas DC Vref_Sup_neg10per FIND Vref AT=1.98
.endc
************************************************
*PSRR analysis
************************************************
.control
alter Vsup DC = 1.8
alter Vsup AC = 1  
ac dec 10 1 100MEG
plot i(v1)
plot idb(v1)
meas ac PSR_1k FIND vdb(Vref) AT=1k
meas ac PSR_1M FIND vdb(vref) AT=1Meg 
.endc
************************************************
*Transient analysis
************************************************
.control
alter @Vsup[pwl] = [ 0 0 100u 0 200u 3 500u 3 ]
tran 100u 500u
plot i(v1)

.endc
************************************************
.end
" }
C {devices/lab_pin.sym} 380 390 0 0 {name=l1 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 380 120 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 620 460 0 0 {name=V1 value=0.9}
C {devices/lab_pin.sym} 620 490 0 0 {name=l6 sig_type=std_logic lab=0}
C {My_BGRs/BGR.sym} 510 -50 0 0 {}
C {sky130_fd_pr/corner.sym} 520 30 0 0 {name=CORNER only_toplevel=false corner=tt}
