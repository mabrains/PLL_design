* Test bench for PFD
.INCLUDE pfd_behav.ckt

*global signals
.global d_d0 d_d1

*digital zero
vzero A_0 0 dc 0
abridgev3 [A_0] [d_d0] adc_vbuf
.model adc_vbuf adc_bridge(in_low = 0.9 in_high = 0.9)

*digital one
ainv1 d_d0 d_d1 invd1
.model invd1 d_inverter(rise_delay = 1e-10 fall_delay = 1e-10)

VDD vdd gnd 1.8V

*Simulation time variable
.csparam simtime=25u

.PARAM main_freq = 10.0Meg
.PARAM cycle = {1.0/main_freq}
.PARAM init_delay_up = {5.7 * cycle}
.PARAM init_delay_dn = {5 * cycle}
.PARAM tpw = {cycle / 5}
.PARAM trise = {cycle / 50}
.PARAM tfall = {cycle / 50}

*Input Signals 
Vref REF gnd DC 0 PULSE ( 0 1.8 init_delay_up trise tfall tpw cycle 0 )

Vfb  FB gnd DC 0 PULSE ( 0 1.8 init_delay_dn trise tfall tpw cycle 0 )

* PFD
XPFD REF FB UP DWN FBS REFS PFD

.control
set wr_singlescale
set wr_vecnames
option numdgt = 3
tran 0.1n $&simtime 
wrdata pfd_behave.csv v(FBS) v(REFS) v(UP) v(DWN)
.endc

