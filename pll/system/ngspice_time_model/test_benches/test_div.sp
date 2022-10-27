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

.PARAM main_freq = {{inputf}}
.PARAM cycle = {1.0/main_freq}
.PARAM tpw = {cycle / 2}
.PARAM trise = {cycle / 50}
.PARAM tfall = {cycle / 50}
.PARAM delay = {0.3*cycle}

VDD vdd gnd 1.8V

*Simulation time variable
.csparam simtime={{simtime}}
*test cases

Vref in gnd DC 0 PULSE ( 0 1.8 0 trise tfall tpw cycle 0 )

Xdivider 1.8 gnd modo 1.8 in Fout {{P0}} {{P1}} {{P2}} {{P3}} {{P4}} {{P5}} {{P6}} {{P7}} divider

.control
set wr_singlescale
set wr_vecnames
option numdgt = 3
tran 1p $&simtime 
wrdata div_behave.csv v(Fout) v(in)
.endc

.end
