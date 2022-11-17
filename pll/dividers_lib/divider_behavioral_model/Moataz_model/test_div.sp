* Test bench for DIV
.INCLUDE div_behav.ckt
*############################################################################
*global signals
*.global d_d0 d_d1

* Digital INPUT

*digital zero
*Vzero A_0 0 dc 0

*abridgev3 [A_0] [d_d0] adc_buff

.model adc_buff adc_bridge(in_low = 0.9 in_high = 0.9)

*digital one
*ainv1321 d_d0 d_d1 invd1


.model invd1 d_inverter(rise_delay = 1e-15 fall_delay = 1e-15)
*############################################################################

.PARAM main_freq = 2.55e9
.PARAM cycle = {1.0/main_freq}
.PARAM tpw = {cycle / 2}
.PARAM trf = {cycle / 100}



VDD VDD 0 DC 1.8V


Vin in 0 DC 0 PULSE (0 1.8 0 trf trf tpw cycle)

*v23 P1 0 DC 0 PULSE(0 1.8 0 0 0 50u 100u)

*v2x3 P0 0 DC 0 PULSE(1.8 0 0 0 0 50u 100u)

v23 P1 0 DC 1.8

v2x3 P0 0 DC 0

*vx3 MODIa 0 DC 0 PULSE(0 1.8 0 0 0 50u 100u)
vx3 MODIa 0 DC 1.8

*############################################################################
*  VDD gnd MODOa MODIa FIn FOUT Pa 1_2div
X0 VDD 0 modo m1 in FOUT1 P1 1_2div

X1 VDD 0 m1 m2 FOUT1 FOUT2 P0 1_2div

X2 VDD 0 m2 m3 FOUT2 FOUT3 P0 1_2div

X3 VDD 0 m3 m4 FOUT3 FOUT4 P0 1_2div

X4 VDD 0 m4 m5 FOUT4 FOUT5 P0 1_2div

X5 VDD 0 m5 m6 FOUT5 FOUT6 P0 1_2div

X6 VDD 0 m6 m7 FOUT6 FOUT7 P0 1_2div

X7 VDD 0 m7 MODIa FOUT7 FOUT P0 1_2div

*############################################################################


.control
tran 2p 0.7u

*plot p0 p1 
*plot MODIa

plot FOUT
meas tran tdiff_in TRIG v(in) VAL=0.9 RISE=3 TARG v(in) VAL=0.9 RISE=4
let frequency_in = 1/tdiff_in
print frequency_in

* meas tran tdiff1 TRIG v(FOUT1) VAL=0.9 RISE=1 TARG v(FOUT1) VAL=0.9 RISE=2
* let frequency1 = 1/tdiff1
* print frequency1

* meas tran tdiff2 TRIG v(FOUT2) VAL=0.9 RISE=1 TARG v(FOUT2) VAL=0.9 RISE=2
* let frequency2 = 1/tdiff2
* print frequency2

* meas tran tdiff3 TRIG v(FOUT3) VAL=0.9 RISE=1 TARG v(FOUT3) VAL=0.9 RISE=2
* let frequency3 = 1/tdiff3
* print frequency3

* meas tran tdiff4 TRIG v(FOUT4) VAL=0.9 RISE=1 TARG v(FOUT4) VAL=0.9 RISE=2
* let frequency4 = 1/tdiff4
* print frequency4

* meas tran tdiff5 TRIG v(FOUT5) VAL=0.9 RISE=1 TARG v(FOUT5) VAL=0.9 RISE=2
* let frequency5 = 1/tdiff5
* print frequency5

* meas tran tdiff6 TRIG v(FOUT6) VAL=0.9 RISE=1 TARG v(FOUT6) VAL=0.9 RISE=2
* let frequency6 = 1/tdiff6
* print frequency6

* meas tran tdiff7 TRIG v(FOUT7) VAL=0.9 RISE=1 TARG v(FOUT7) VAL=0.9 RISE=2
* let frequency7 = 1/tdiff7
* print frequency7

meas tran tdiff_out TRIG v(FOUT) VAL=0.9 RISE=3 TARG v(FOUT) VAL=0.9 RISE=4
let frequency_out = 1/tdiff_out
print frequency_out

let N = frequency_in/frequency_out
print N
.endc

