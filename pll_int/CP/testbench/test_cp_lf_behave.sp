* Test bench for charge pump

.include ../behav/cp_behave.ckt
.include ../../LPF/behav/lf_behave.ckt

.PARAM main_freq = 10.0Meg
.PARAM cycle = {1.0/main_freq}
.PARAM init_delay_up = {5 * cycle}
.PARAM init_delay_dn = {5.6 * cycle}
.PARAM tpw = {cycle / 5}
.PARAM trise = {cycle / 50}
.PARAM tfall = {cycle / 50}

Xcp up dn out vdd gnd charge_pump_behav

C1 out gnd 10p ic=0

VDD vdd gnd 1.8V

Vup up gnd DC 0 PULSE ( 0 1.8 init_delay_up trise tfall tpw cycle 0 )
Vdn dn gnd DC 0 PULSE ( 0 1.8 init_delay_dn trise tfall tpw cycle 0 )

.control
set wr_singlescale
set wr_vecnames
option numdgt = 3

tran 0.001u 5u uic
wrdata charge_pump_behav.csv v(up) v(dn) v(out) v(Xcp.up_mid) v(Xcp.dn_mid)
.endc