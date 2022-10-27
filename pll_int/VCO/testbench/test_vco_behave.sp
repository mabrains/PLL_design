* Test of VCO: frequency versus control voltage

.csparam simtime=5u


vdd vdd 0 dc 1.8
vco ctrl 0 dc {{ vctrl }}

.include ../behav/vco_behave.ckt

XVCO ctrl out vdd 0 vco_behav

.control
tran 0.01n 10n

let meas_rise_at = 5
let next_rise_at = meas_rise_at + 1

let vout_max = vecmax(v(out))
let vout_min = vecmin(v(out))
let vout_cm = ((vout_max - vout_min) / 2.0) + vout_min

meas tran tperiod TRIG v(out) VAL=vout_cm RISE=meas_rise_at TARG v(out) VAL=vout_cm RISE=next_rise_at
let freq = 1/(tperiod)

print vout_max
print vout_min
print vout_cm
print freq

.endc



