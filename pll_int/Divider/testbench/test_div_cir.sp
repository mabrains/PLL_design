* div TB

.include ../circuit/div_cir.ckt

.param f_input =2.4G
.param p0_val = 0
.param p1_val=  0
.param p2_val=  0
.param p3_val=  0
.param p4_val=  1
.param p5_val=  0
.param p6_val=  0
.param p7_val=  0

VDD1 p2 GND {p2_val}
VDD2 p4 GND {p4_val}
VDD3 p1 GND {p1_val}
VDD4 p3 GND {p3_val}
VDD5 p5 GND {p5_val}
VDD6 p6 GND {p6_val}
VDD7 p0 GND {p0_val}
VDD8 p7 GND {p7_val}

.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.temp 27
.options tnom=27
VDD VDD GND DC 1.8

x1 VDD fout GND p2 p7 p1 p6 p5 p4 p3 p0 fin opennet divider
V1 fin GND SIN (0.9 0.9 {f_input} 0 0 0)
C1 fout GND 25f m=1
I0 opennet GND 0
**** begin user architecture code

** opencircuitdesign pdks install
.op
.control
tran 0.01n 0.5u
plot fout fin
meas tran tdiffin TRIG v(fin) VAL=0.9 RISE=3 TARG v(fin) VAL=0.9 RISE=4
meas tran tdiffout TRIG v(fout) VAL=0.9 RISE=3 TARG v(fout) VAL=0.9 RISE=4
let freqin = 1/tdiffin
let freqout = 1/tdiffout

let n = freqin/freqout
print freqin
print freqout
print n
quit
.endc
.GLOBAL VDD
.GLOBAL GND
.end
