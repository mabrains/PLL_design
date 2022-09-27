* Test bench for DIV

*global signals
.global d_d0 d_d1

*digital zero
vzero A_0 0 dc 0

abridgev3 [A_0] [d_d0] adc_vbuf

.model adc_vbuf adc_bridge(in_low = 0.9 in_high = 0.9)

*digital one
ainv1 d_d0 d_d1 invd1
.model invd1 d_inverter(rise_delay = 1e-15 fall_delay = 1e-15)

.INCLUDE div_behav.ckt


.PARAM main_freq = 2.4e9
.PARAM cycle = {1.0/main_freq}
.PARAM tpw = {cycle / 2}
.PARAM trise = {cycle / 50}


VDD vdd gnd 1.8V


Vref in gnd PULSE ( 0 1.8 0 0 0 tpw cycle 0 )


*REAL DIV
*Xdivider 1.8 gnd modo 1.8 in Fout P0 P1 P3 P4 P5 P6 P7 divider
*Xdivider 1.8 gnd modo 1.8 in Fout d_d0 d_d0 d_d0 d_d0 d_d1 d_d0 d_d0 d_d0 divider

X240DIV_lib in Fout 240DIV_lib


.tran 1p 400n 
.plot fout
.measure tran tdiff TRIG v(Fout) VAL=0.9 RISE=1 TARG v(Fout) VAL=0.9 RISE=2
.end

