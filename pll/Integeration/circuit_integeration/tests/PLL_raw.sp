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

 .lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt
* .lib /foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice "tt"
* .Include /foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/corners/tt.spice
*.lib /home/atork/open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice "tt"

.temp 27
.options tnom=27

.PARAM main_freq = 10.0Meg
.PARAM cycle = {1.0/main_freq}

.PARAM tpw = {cycle / 2}
.PARAM trise = {cycle / 50}
.PARAM tfall = {cycle / 50}


* Xring Vin REF VDD GND ring

Vpulse REF GND DC 0 PULSE ( 0 1.8 0 trise tfall tpw cycle 0 )

Xconventional_pfd  REF VDD GND FB UP DN conventional_pfd


Xcp  UP VOP DN VDD GND CP_with_buffer 

Vtest VOP ilf DC 0

Xloop_filter_3rd_order ilf vctrl GND loop_filter_3rd_order 

xvco vp vn vctrl ibias VDD GND vco
* xinv_vco1 vdd vp vp2 gnd
* xinv_vco2 vdd vn vn2 gnd
xind1 vp vn ind_model
** xbgr ibias GND VDD BGR_Banba
Isource VDD ibias 90u          $ original
xdiv VDD FB GND p2 p7 p1 p6 p5 p4 p3 p0 vp opennet1 divider
xdivdumyy VDD fdummy GND p2 p7 p1 p6 p5 p4 p3 p0 vn opennet divider


.ic v(vctrl)=0
.op
.tran 1p 30u uic
.save v(vctrl) v(UP) v(DN) v(REF) v(FB) v(vp) i(Vtest)


.measure tran VCTRL_C FIND v(vctrl) AT=25u
.measure tran tdiffin TRIG v(REF) VAL=0.9 RISE=66666 TARG v(REF) VAL=0.9 RISE=66667
.measure tran f_input param = {1/tdiffin}


.measure tran tdiffout TRIG v(vp) VAL=0.9 RISE=66666 TARG v(vp) VAL=0.9 RISE=66667
.measure tran f_out param = {1/tdiffout}

.measure tran n param = {f_input/f_out}

.print f_out
.print f_input
.print n


.GLOBAL GND
.GLOBAL VDD
.end
