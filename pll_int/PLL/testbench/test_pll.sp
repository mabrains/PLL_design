* Test bench for PLL
.INCLUDE ../behav/pll_behave.ckt

.csparam simtime=200u

.global d_d0 d_d1 VDD

*digital zero
vzero A_0 0 dc 0

abridgev3 [A_0 vdd] [d_d0 vddd] adc_vbuf
.model adc_vbuf adc_bridge(in_low = 0.9 in_high = 0.9)

*digital one
ainv1 d_d0 d_d1 invd1
.model invd1 d_inverter(rise_delay = 1e-10 fall_delay = 1e-10)


VDD VDD gnd 1.8V

Xpll_behave REF FB UP DWN iout vctrl vco_out VDD GND pll_behave

.control
nodeset v(vctrl)=0
set wr_singlescale
set wr_vecnames
option numdgt = 3
set xtrtol=2
tran 0.1n $&simtime 
meas tran tdiff TRIG v(FB) VAL=0.9 RISE=20 TARG v(FB) VAL=0.9 RISE=21
wrdata pll.csv v(vctrl) 

plot v(vctrl)


.endc
