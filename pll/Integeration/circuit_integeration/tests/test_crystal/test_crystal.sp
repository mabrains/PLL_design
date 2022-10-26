**XCTL Test bench
.include ../subckts/ring_cir.ckt


VDD VDD GND DC 1.8

.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.temp 27
.options tnom=27

.PARAM main_freq = 10.0Meg
.PARAM cycle = {1.0/main_freq}

.PARAM tpw = {cycle / 2}
.PARAM trise = {cycle / 50}
.PARAM tfall = {cycle / 50}


Xring Vin REF VDD GND ring

Vpulse REF_i GND DC 0 PULSE ( 0 1.8 0 trise tfall tpw cycle 0 )





.op
.tran 20p 7u uic
.save v(REF) v(REF_i)

.plot REF REF_i
.measure tran tdiffin TRIG v(REF) VAL=0.9 RISE=60 TARG v(REF) VAL=0.9 RISE=61
.measure tran f_input param = {1/tdiffin}

.print f_input

.measure tran tdiffin1 TRIG v(REF_i) VAL=0.9 RISE=60 TARG v(REF_i) VAL=0.9 RISE=61
.measure tran f_input1 param = {1/tdiffin}

.print f_input1

.GLOBAL GND
.GLOBAL VDD
.end
