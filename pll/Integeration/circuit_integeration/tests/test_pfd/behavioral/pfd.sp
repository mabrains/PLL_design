* Test bench for PFD
*.INCLUDE DFF/DFF.ckt

.INCLUDE pfd_behav.ckt

.csparam simtime=25u

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

.PARAM tpw = {cycle / 2}
.PARAM trise = {cycle / 50}
.PARAM tfall = {cycle / 50}


{{line}}

VDD vdd gnd 1.8V

Vref REF gnd DC 0 PULSE ( 0 1.8 {{delayup}} trise tfall tpw cycle 0 )
Vfb  FB gnd DC 0 PULSE ( 0 1.8 {{delaydwn}} trise tfall tpw cycle 0 )

* frequency phase detector

XPFD REF FB UP DWN FBS REFS PFD
*XPFD FB REF UP DWN FBS REFS PFD

.control
set wr_singlescale
set wr_vecnames
option numdgt = 3
tran 0.1n $&simtime 
wrdata pfd_behave.csv v(FBS) v(REFS) v(UP) v(DWN)
*rusage
plot v(FBS) v(REFS) v(UP) v(DWN) xlimit 4u 4.04u
.endc
