* Test bench for PFD + CP

.INCLUDE charge_pump_behave.ckt
.INCLUDE pfd_behav.ckt

.csparam simtime=5u

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
{{line}}

VDD vdd gnd 1.8V

Vref REF gnd DC 0 PULSE ( 0 1.8 {{delayup}} trise tfall tpw cycle 0 )
Vfb  FB gnd DC 0 PULSE ( 0 1.8 {{delaydwn}} trise tfall tpw cycle 0 )

* frequency phase detector

XPFD REF FB UP DWN FBS REFS PFD
*XPFD FB REF UP DWN FBS REFS PFD

Xcp up dn out vdd gnd charge_pump_behav

C1 out gnd 10p ic=0


.control
set wr_singlescale
set wr_vecnames
option numdgt = 3
tran 0.1n $&simtime 
*rusage
wrdata pfd_cp_behav.csv v(FBS) v(REFS) v(UP) v(DWN) v(out) v(Xcp.up_mid) v(Xcp.dn_mid)
.endc
