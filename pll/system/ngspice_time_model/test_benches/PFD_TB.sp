* Test bench for DFF

*.INCLUDE DFF/DFF.ckt



.INCLUDE PFD.ckt



.csparam simtime=25u



.global d_d0 d_d1



.PARAM main_freq = 10.0Meg

.PARAM cycle = {1.0/main_freq}

.PARAM init_delay_up = {5 * cycle}

.PARAM init_delay_dn = {5 * cycle}

.PARAM tpw = {cycle / 5}

.PARAM trise = {cycle / 50}

.PARAM tfall = {cycle / 50}





VDD vdd gnd 1.8V

Vref REF gnd DC 0 PULSE ( 0 1.8 init_delay_up trise tfall tpw cycle 0 )

Vfb  FB gnd DC 0 PULSE ( 0 1.8 init_delay_dn trise tfall tpw cycle 0 )



* Analog to Digital nodes Models

.model adc_buff adc_bridge(in_low = 0.9 in_high = 0.9)



* Digital REF

aref [REF] [REF_D] adc_buff



* Digital FB

afb [FB] [FB_D] adc_buff



*digital zero

vzero A_0 0 dc 0



abridgev3 [A_0] [d_d0] adc_vbuf

.model adc_vbuf adc_bridge(in_low = 0.9 in_high = 0.9)



*digital one

ainv1 d_d0 d_d1 invd1

.model invd1 d_inverter(rise_delay = 1e-10 fall_delay = 1e-10)



* frequency phase detector



XPFD REF_D  FB_D UP_D UP_BAR_D DWN_D DWN_BAR_D PFD

*X_PFD FB_D REF_D UP_D UP_BAR_D DWN_D DWN_BAR_D PFD



* Digital to analog for plotting



abridge-w1 [FB_D REF_D UP_D DWN_D] [S_FB S_REF UP_SIG DWN_SIG] dac1 ; change to d_u or d_Un

.model dac1 dac_bridge(out_low = 0 out_high = 1.8 out_undef = 0.9

+ input_load = 5.0e-12 t_rise = 1e-10

+ t_fall = 1e-10)





.control

set wr_singlescale

set wr_vecnames

option numdgt = 3

tran 0.1n $&simtime 

wrdata PFD_behave.csv v(S_FB) v(S_REF) v(UP_SIG) v(DWN_SIG)

*rusage

plot v(S_FB) v(S_REF) v(UP_SIG) v(DWN_SIG) xlimit 4u 4.04u

.endc
