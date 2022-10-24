
** conventional pfd test bench

.include ../subckts/CONV_PFD.ckt

.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.temp 27.00
.options tnom=27.00
VDD VDD GND 1.80


Xconventional_pfd  REF VDD GND FB up dn conventional_pfd

V4 REF GND pulse(0 1.80 1.4ns 1n 1n 50ns 100ns)
V5 FB GND pulse(0 1.80 1ns 1n 1n 50ns 100ns)


.control
set wr_singlescale
set wr_vecnames
option numdgt = 3
save all 
print all

tran 0.01ns 400ns 

meas tran tup_check FIND v(up) AT=25n

plot v(UP) v(DN) v(FB) v(REF)

.endc

.GLOBAL GND
.GLOBAL VDD
.end