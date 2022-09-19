* Test bench for charge pump

.INCLUDE ../models/charge_pump_behav.ckt
.INCLUDE ../models/loop_filter.ckt

.PARAM main_freq = 10.0Meg
.PARAM cycle = 1.0/main_freq
.PARAM init_delay_up = 5 * cycle
.PARAM init_delay_dn = 5.6 * cycle
.PARAM tpw = cycle / 5
.PARAM trise = cycle / 50
.PARAM tfall = cycle / 50
.PARAM sim_step = cycle / 100
.PARAM sim_stop = 20 * cycle

Xcp up dn out vdd gnd charge_pump_behav
Xlp out ctrl gnd loop_filter_3rd_order_ideal

VDD vdd gnd 1.8V

Vup up gnd PULSE ( 0 1.8 init_delay_up trise tfall tpw cycle 0 )
Vup dn gnd PULSE ( 0 1.8 init_delay_dn trise tfall tpw cycle 0 )

.tran sim_step sim_stop
.plot tran v(up) v(dn) v(out) v(ctrl)


