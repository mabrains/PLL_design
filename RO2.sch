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
N -260 -430 -260 -320 {
lab=out2}
N -650 -430 -650 -320 {
lab=out2_}
N -470 -520 -450 -520 {
lab=vctrl}
N -450 -550 -450 -520 {
lab=vctrl}
N -450 -210 -450 -190 {
lab=vctrl}
N -480 -190 -450 -190 {
lab=vctrl}
N -480 -200 -480 -190 {
lab=vctrl}
N -490 90 -450 90 {
lab=vctrl}
N -910 -220 -910 -170 {
lab=vctrl}
N -910 -110 -910 -80 {
lab=GND}
N -750 -660 -750 130 {
lab=out3_}
N -300 20 -300 130 {
lab=out3_}
N -750 130 -300 130 {
lab=out3_}
N -600 20 -600 110 {
lab=out3}
N -140 -660 -140 110 {
lab=out3}
N -600 110 -140 110 {
lab=out3}
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
.plot V(out1)
.save all"}
C {sky130_fd_pr/corner.sym} -1180 -400 0 0 {name=CORNER only_toplevel=false corner=tt
.lib/foundry/pdks/skywaters/share/pdk/sky130A/libst.tech/ngspice/sky130.lib.spice tt}
C {Delay_cell_2.sym} -450 0 0 1 {name=X1}
C {Delay_cell_2.sym} -450 -640 0 1 {name=X3}
C {Delay_cell_2.sym} -450 -300 0 0 {name=X2}
C {devices/vsource.sym} -910 -140 0 0 {name=V4 value=.5}
C {devices/gnd.sym} -910 -80 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -910 -220 0 0 {name=l19 sig_type=std_logic lab=vctrl}
C {devices/lab_pin.sym} -470 -520 0 0 {name=l5 sig_type=std_logic lab=vctrl}
C {devices/lab_pin.sym} -480 -200 0 0 {name=l10 sig_type=std_logic lab=vctrl}
C {devices/lab_pin.sym} -490 90 0 0 {name=l11 sig_type=std_logic lab=vctrl}
