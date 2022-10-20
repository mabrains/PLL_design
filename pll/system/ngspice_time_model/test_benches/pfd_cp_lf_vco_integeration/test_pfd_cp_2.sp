* Test bench for PFD + CP

.INCLUDE charge_pump_behave.ckt
.INCLUDE pfd_behav.ckt
.INCLUDE loop_filter.ckt
.include vco_behav.ckt



.csparam simtime=50u

.global d_d0 d_d1

*digital zero
vzero A_0 0 dc 0

abridgev3 [A_0] [d_d0] adc_vbuf
.model adc_vbuf adc_bridge(in_low = 0.9 in_high = 0.9)

*digital one
ainv1 d_d0 d_d1 invd1
.model invd1 d_inverter(rise_delay = 1e-10 fall_delay = 1e-10)

.PARAM main_freq = 10.0Meg
.PARAM cycle = {1.0/main_freq}
.PARAM tpw = {cycle / 5}
.PARAM trise = {cycle / 50}
.PARAM tfall = {cycle / 50}


*test

VDD vdd gnd 1.8V

Vref REF gnd DC 0 PULSE ( 0 1.8 1.25e-06 trise tfall tpw cycle 0 )
Vfb  FB gnd DC 0 PULSE ( 0 1.8 1e-06 trise tfall tpw cycle 0 )


* frequency phase detector
XPFD REF FB UP DWN UP_bar DWN_bar vdd gnd PFD
*XPFD REF FB UP DWN UP_bar DWN_bar vdd gnd PFD
Xcp UP DWN out vdd gnd charge_pump_behav 

Xloop_filter_3rd_order_ideal out vctrl gnd loop_filter_3rd_order_ideal

XVCO vctrl divin vdd gnd vco_behav

.control
set wr_singlescale
set wr_vecnames
option numdgt = 3
set xtrtol=2
tran 0.1n $&simtime 
wrdata pfd_cp_lf_behav.csv v(FB) v(REF) v(UP) v(DWN) v(out) v(vctrl) v(divin)
.endc
