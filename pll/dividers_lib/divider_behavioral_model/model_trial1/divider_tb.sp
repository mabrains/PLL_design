*calling the divider subcircuit
.include divider_model.ckt


*input frequency tunning
.PARAM frequency_in = 2.55e9
.PARAM cycle = {1/frequency_in}
.PARAM tpw = {cycle / 2}
.PARAM trf = {cycle / 50}


*P's power supllies
VPO P0 0 DC 1.8
VP1 P1 0 DC 0
VP2 P2 0 DC 0
VP3 P3 0 DC 0
VP4 P4 0 DC 0
VP5 P5 0 DC 0
VP6 P6 0 DC 0
VP7 P7 0 DC 0

Vsupply VDD 0 DC 1.8

*building the testbench
Vin in 0 DC 0 PULSE (1.8 0 0 trf trf tpw cycle)

Xdiv in P0 P1 P2 P3 P4 P5 P6 P7 out VDD divider

*Xcellt1 in float P0 fin2 modo2 2_1cell
*Xcellt2 fin2 modo2 P1 out VDD 2_1cell

*transient analysis
.control
tran 1p 0.5u

plot out

*printing input frequency
meas tran tdiff_in TRIG v(in) VAL=0.9 RISE=3 TARG v(in) VAL=0.9 RISE=4
let frequency_in = 1/tdiff_in
print frequency_in


*printing input frequency to 2nd stage
*meas tran tdiff_in2 TRIG v(fin2) VAL=0.9 RISE=3 TARG v(fin2) VAL=0.9 RISE=4
*let frequency_in2 = 1/tdiff_in2
*print frequency_in2


*printing ouput frequency
meas tran tdiff_out TRIG v(out) VAL=0.9 RISE=3 TARG v(out) VAL=0.9 RISE=4
let frequency_out = 1/tdiff_out
print frequency_out

*N_measured
let N = frequency_in/frequency_out
print N

.endc