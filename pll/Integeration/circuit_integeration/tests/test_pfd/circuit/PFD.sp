** PFD Test bench

.include ../subckts/CONV_PFD.ckt



.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.temp 27
.options tnom=27

.PARAM main_freq = 10.0Meg
.PARAM cycle = {1.0/main_freq}

.PARAM tpw = {cycle / 2}
.PARAM trise = {cycle / 50}
.PARAM tfall = {cycle / 50}


VDD VDD GND 1.80
*Input Signals 
V4 REF GND DC 0 pulse(0 1.8 {{delayup}} 1n 1n 50ns 100ns)
V5 FB GND DC 0 pulse(0 1.8 {{delaydwn}} 1n 1n 50ns 100ns)


Xconventional_pfd  REF VDD GND FB UP DN conventional_pfd


.control
op
set wr_singlescale
set wr_vecnames
option numdgt = 3
save all 
print all

tran 0.01ns 400ns 

meas tran tup_check FIND v(up) AT=25n
meas tran tdiffin TRIG v(REF) VAL=0.9 RISE=4 TARG v(REF) VAL=0.9 RISE=5
let f_input = 1/tdiffin

print f_input

wrdata pfd_behave.csv v(FB) v(REF) v(UP) v(DN)
plot FB REF UP DN
.endc



.GLOBAL GND
.GLOBAL VDD
.end