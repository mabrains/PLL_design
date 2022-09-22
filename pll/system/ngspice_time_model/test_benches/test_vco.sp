* Test of VCO: frequency versus control voltage

.csparam simtime=5u

vdd vdd 0 dc 1.8
vco ctrl 0 dc 0.7

.include vco_behav.ckt

XVCO Ctrl out VCO

.control
tran 0.1n $simtime
plot v(out)
.endc



