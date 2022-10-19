** PLL Test bench
.include subckts/ring_cir.ckt
.include subckts/CONV_PFD.ckt
.include subckts/cp_cct.ckt
.include subckts/loop_filter.ckt
.include subckts/vco_cir.ckt
.include subckts/inductor_model_cct.ckt
.include subckts/biasing_cct.ckt
.include subckts/divider_cct.ckt

.param p0_val = {0}
.param p1_val=  {0}
.param p2_val=  {0}
.param p3_val=  {0}
.param p4_val=  {1}
.param p5_val=  {0}
.param p6_val=  {0}
.param p7_val=  {0}

VP1 p2 GND {p2_val}
VP2 p4 GND {p4_val}
VP3 p1 GND {p1_val}
VP4 p3 GND {p3_val}
VP5 p5 GND {p5_val}
VP6 p6 GND {p6_val}
VP7 p0 GND {p0_val}
VP8 p7 GND {p7_val}

VDD VDD GND DC 1.8

* .lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.lib /foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice "tt"
* .Include /foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/corners/tt.spice

.temp 27
.options tnom=27



Xring Vin REF VDD GND ring

Xconventional_pfd  REF VDD GND FB UP DN conventional_pfd

Xcp  UP VOP DN VDD GND CP_with_buffer 

Xloop_filter_3rd_order VOP vctrl GND loop_filter_3rd_order 

xvco vp vn vctrl ibias VDD GND vco
xind1 vp vn ind_model
xbgr ibias GND VDD BGR_Banba



xdivider VDD FB GND p2 p7 p1 p6 p5 p4 p3 p0 vp opennet divider
* C1 fout GND 25f m=1
I0 opennet GND 0

.control
ic v(vctrl)=0
set wr_singlescale
set wr_vecnames
option numdgt = 3
op 
PROBE alli
save all
rusage
print all



meas tran VCTRL_C FIND v(vctrl) AT=25u

meas tran tdiffin TRIG v(REF) VAL=0.9 RISE=66666 TARG v(REF) VAL=0.9 RISE=66667
meas tran f_input param = {1/tdiffin}


meas tran tdiffout TRIG v(vp) VAL=0.9 RISE=66666 TARG v(vp) VAL=0.9 RISE=66667
meas tran f_out param = {1/tdiffout}

meas tran n param = {f_input/f_out}

print f_out
print f_input
print n

meas tran avg v(vctrl) from=20u to=30u

meas tran Locking_time TRIG AT=0 TARG v(vctrl) VAL=avg CROSS 1

print Locking_time

tran 2p 30u 
plot v(FB) v(REF) v(UP) v(DWN) 
* wrdata ../csv_files/{{ corner_string }}.csv
.endc

.GLOBAL GND
.GLOBAL VDD
.end