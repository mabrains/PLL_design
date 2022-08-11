v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1000 -220 -1000 -170 {
lab=VDD}
N -1000 -110 -1000 -80 {
lab=GND}
N -700 80 -700 110 {
lab=GND}
N -230 80 -230 110 {
lab=GND}
N -650 -20 -600 -20 {
lab=out1_}
N -650 -280 -650 -20 {
lab=out1_}
N -650 -280 -600 -280 {
lab=out1_}
N -300 -20 -260 -20 {
lab=out1}
N -260 -280 -260 -20 {
lab=out1}
N -300 -280 -260 -280 {
lab=out1}
N -300 -320 -260 -320 {
lab=out2}
N -260 -620 -260 -430 {
lab=out2}
N -300 -620 -260 -620 {
lab=out2}
N -650 -320 -600 -320 {
lab=out2_}
N -650 -620 -650 -430 {
lab=out2_}
N -650 -620 -600 -620 {
lab=out2_}
N -300 -660 -170 -660 {
lab=out3}
N -170 -660 -170 -90 {
lab=out3}
N -300 20 -170 20 {
lab=out3}
N -730 20 -600 20 {
lab=out3_}
N -740 -660 -740 -90 {
lab=out3_}
N -730 -660 -600 -660 {
lab=out3_}
N -260 -70 -240 -70 {
lab=out1}
N -670 -60 -650 -60 {
lab=out1_}
N -670 -430 -650 -430 {
lab=out2_}
N -260 -430 -230 -430 {
lab=out2}
N -170 -660 -120 -660 {
lab=out3}
N -770 -660 -730 -660 {
lab=out3_}
N -740 20 -730 20 {
lab=out3_}
N -260 -430 -260 -320 {
lab=out2}
N -170 -90 -170 20 {
lab=out3}
N -740 -90 -740 20 {
lab=out3_}
N -650 -430 -650 -320 {
lab=out2_}
N -470 -520 -450 -520 {
lab=vc}
N -450 -550 -450 -520 {
lab=vc}
N -470 -400 -450 -400 {
lab=vf}
N -450 -400 -450 -390 {
lab=vf}
N -450 -210 -450 -190 {
lab=vc}
N -480 -190 -450 -190 {
lab=vc}
N -480 -200 -480 -190 {
lab=vc}
N -480 -110 -450 -110 {
lab=vf}
N -450 -110 -450 -90 {
lab=vf}
N -490 90 -450 90 {
lab=vc}
N -490 -750 -450 -750 {
lab=vf}
N -450 -750 -450 -730 {
lab=vf}
N -910 -220 -910 -170 {
lab=vc}
N -910 -110 -910 -80 {
lab=GND}
N -810 -220 -810 -170 {
lab=vf}
N -810 -110 -810 -80 {
lab=GND}
C {devices/vsource.sym} -1000 -140 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -1000 -220 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -1000 -80 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -240 -70 2 0 {name=l3 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} -670 -60 0 0 {name=l4 sig_type=std_logic lab=out1_}
C {devices/lab_pin.sym} -670 -430 0 0 {name=l6 sig_type=std_logic lab=out2_}
C {devices/lab_pin.sym} -230 -430 2 0 {name=l7 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} -120 -660 2 0 {name=l8 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} -770 -660 0 0 {name=l9 sig_type=std_logic lab=out3_}
C {devices/code.sym} -1190 -180 0 0 {name=s1 only_toplevel=false value="

.tran 1p 10n
.probe I(x1)
.save all"}
C {sky130_fd_pr/corner.sym} -1180 -400 0 0 {name=CORNER only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt}
C {Delay_cell_2.sym} -450 0 0 0 {name=X1}
C {Delay_cell_2.sym} -450 -640 0 0 {name=X3}
C {devices/vsource.sym} -700 50 0 0 {name=V2 value="pulse 0 1.8 0 10p 10p 200p 400p"}
C {devices/gnd.sym} -700 110 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} -230 50 0 0 {name=V3 value="pulse 1.8 0 0 10p 10p 200p 400p"}
C {devices/gnd.sym} -230 110 0 0 {name=l10 lab=GND}
C {Delay_cell_2.sym} -450 -300 0 0 {name=X2}
C {devices/lab_pin.sym} -470 -520 0 0 {name=l5 sig_type=std_logic lab=vc}
C {devices/lab_pin.sym} -470 -400 0 0 {name=l12 sig_type=std_logic lab=vf}
C {devices/lab_pin.sym} -490 -750 0 0 {name=l13 sig_type=std_logic lab=vf}
C {devices/lab_pin.sym} -480 -200 0 0 {name=l14 sig_type=std_logic lab=vc}
C {devices/lab_pin.sym} -480 -110 0 0 {name=l15 sig_type=std_logic lab=vf}
C {devices/lab_pin.sym} -490 90 0 0 {name=l16 sig_type=std_logic lab=vc}
C {devices/vsource.sym} -910 -140 0 0 {name=V4 value=0}
C {devices/gnd.sym} -910 -80 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} -810 -140 0 0 {name=V5 value=0}
C {devices/gnd.sym} -810 -80 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} -910 -220 0 0 {name=l19 sig_type=std_logic lab=vc}
C {devices/lab_pin.sym} -810 -220 0 0 {name=l20 sig_type=std_logic lab=vf}
