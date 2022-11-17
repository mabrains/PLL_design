** PLL Test bench
.INCLUDE ../circuit/pll_cir.ckt
VDD VDD GND DC 1.8

 .lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.temp 27
.options tnom=27


Xpll_cir REF FB UP DWN Vtest vctrl vp VDD GND pll_cir


.op
.tran 1n 1u uic
.save v(vctrl) v(UP) v(DN) v(REF) v(FB) v(vp) i(Vtest)


* .measure tran VCTRL_C FIND v(vctrl) AT=25u
* .measure tran tdiffin TRIG v(REF) VAL=0.9 RISE=66666 TARG v(REF) VAL=0.9 RISE=66667
* .measure tran f_input param = {1/tdiffin}


* .measure tran tdiffout TRIG v(vp) VAL=0.9 RISE=66666 TARG v(vp) VAL=0.9 RISE=66667
* .measure tran f_out param = {1/tdiffout}

* .measure tran n param = {f_input/f_out}

* .print f_out
* .print f_input
* .print n


.GLOBAL GND
.GLOBAL VDD
.end
