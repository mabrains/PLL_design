** PLL Test bench
.include ../subckts/vco_cir.ckt
.include ../subckts/inductor_model_cct.ckt
.include ../subckts/biasing_cct.ckt
.include ../subckts/divider_cct.ckt

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

.temp 27
.options tnom=27

Vctrl Vctrl GND DC 0.9

xvco vp vn Vctrl ibias VDD GND vco
xind1 vp vn ind_model
xbgr ibias GND VDD BGR_Banba

xdivider VDD FB GND p2 p7 p1 p6 p5 p4 p3 p0 vp opennet divider


.control
op
tran 50p 2u
plot vp FB


measure tran tdiffin TRIG v(vp) VAL=0.9 RISE=6 TARG v(vp) VAL=0.9 RISE=7
let f_input =1/tdiffin

measure tran tdiffout TRIG v(FB) VAL=0.9 RISE=3 TARG v(FB) VAL=0.9 RISE=4
let f_output =1/tdiffout

measure tran n param = {f_input/f_out}

print f_out
print f_input
print n
rusage

.endc


.GLOBAL GND
.GLOBAL VDD
.end
