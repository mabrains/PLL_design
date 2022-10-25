* Test bench for DIV

*global signals
.global d_d0 d_d1

*digital zero
vzero A_0 0 dc 0

abridgev3 [A_0 vdd] [d_d0 vddd] adc_vbuf

.model adc_vbuf adc_bridge(in_low = 0.9 in_high = 0.9)

*digital one
ainv1 d_d0 d_d1 invd1
.model invd1 d_inverter(rise_delay = 1e-15 fall_delay = 1e-15)

.INCLUDE div_behav.ckt
.INCLUDE div_ckt_2.ckt

.PARAM main_freq = 2.4e9
.PARAM cycle = {1.0/main_freq}
.PARAM tpw = {cycle / 2}


VDD vdd gnd 1.8V


Vref in gnd PULSE (0 1.8 0 0 0 tpw cycle 0)

v23 P1 0 DC 0 PULSE(0 1.8 0 0 0 50u 100u)
v2x3 P0 0 DC 0 PULSE(1.8 0 0 0 0 50u 100u)
vx3 MODIa 0 DC 0 PULSE(0 1.8 0 0 0 50u 100u)

*REAL DIV
*Xdivider 1.8 gnd modo 1.8 in Fout P0 P1 P3 P4 P5 P6 P7 divider
*Xdivider 1.8 gnd modo vdd in Fout d_d0 d_d0 d_d0 d_d0 d_d1 d_d0 d_d0 d_d0 divider

* X0 VDD gnd modo m1 in FOUT1 P0 1_2div

* X1 VDD gnd m1 m2 FOUT1 FOUT2 P0 1_2div

* X2 VDD gnd m2 m3 FOUT2 FOUT3 P0 1_2div

* X3 VDD gnd m3 m4 FOUT3 FOUT4 P0 1_2div

* X4 VDD gnd m4 m5 FOUT4 FOUT5 P0 1_2div

* X5 VDD gnd m5 m6 FOUT5 FOUT6 P0 1_2div

* X6 VDD gnd m6 m7 FOUT6 FOUT7 P0 1_2div

* X7 VDD gnd m7 MODIa FOUT7 FOUT P0 1_2div


X0 Fin Fout1 P0 gnd m1 MODO 2to1_Cell

X1 Fout1 Fout2 P0 gnd m2 m1 2to1_Cell

X2 Fout2 Fout3 P0 gnd m3 m2 2to1_Cell

X3 Fout3 Fout4 P0 gnd m4 m3 2to1_Cell

X4 Fout4 Fout5 P0 gnd m5 m4 2to1_Cell

X5 Fout5 Fout6 P0 gnd m6 m5 2to1_Cell

X6 Fout6 Fout7 P0 gnd m7 m6 2to1_Cell

X7 Fout7 Fout P0 gnd MODIa m7 2to1_Cell



*Xdivider VDD gnd modo d_d1 in Fout d_d0 d_d1 d_d1 d_d0 d_d0 d_d0 d_d0 d_d0 divider
*X240DIV_lib in Fout 240DIV_lib
*Xdivider VDD gnd d_d0 vddd Fin FOUT d_d0 d_d0 d_d0 d_d0 d_d1 d_d0 d_d0 d_d0 divider

.control
tran 100p 400n
plot p1 P0 MODIa
plot Fout modo

meas tran tdiff_in TRIG v(in) VAL=0.9 RISE=1 TARG v(in) VAL=0.9 RISE=2
let frequency_in = 1/tdiff_in
print frequency_in

meas tran tdiff1 TRIG v(FOUT1) VAL=0.9 RISE=1 TARG v(FOUT1) VAL=0.9 RISE=2
let frequency1 = 1/tdiff1
print frequency1

meas tran tdiff2 TRIG v(FOUT2) VAL=0.9 RISE=1 TARG v(FOUT2) VAL=0.9 RISE=2
let frequency2 = 1/tdiff2
print frequency2

meas tran tdiff3 TRIG v(FOUT3) VAL=0.9 RISE=1 TARG v(FOUT3) VAL=0.9 RISE=2
let frequency3 = 1/tdiff3
print frequency3

meas tran tdiff4 TRIG v(FOUT4) VAL=0.9 RISE=1 TARG v(FOUT4) VAL=0.9 RISE=2
let frequency4 = 1/tdiff4
print frequency4

meas tran tdiff5 TRIG v(FOUT5) VAL=0.9 RISE=1 TARG v(FOUT5) VAL=0.9 RISE=2
let frequency5 = 1/tdiff5
print frequency5

meas tran tdiff6 TRIG v(FOUT6) VAL=0.9 RISE=1 TARG v(FOUT6) VAL=0.9 RISE=2
let frequency6 = 1/tdiff6
print frequency6

meas tran tdiff7 TRIG v(FOUT7) VAL=0.9 RISE=1 TARG v(FOUT7) VAL=0.9 RISE=2
let frequency7 = 1/tdiff7
print frequency7

meas tran tdiff_out TRIG v(Fout) VAL=0.9 RISE=1 TARG v(Fout) VAL=0.9 RISE=2
let frequency_out = 1/tdiff_out
print frequency_out
.endc

