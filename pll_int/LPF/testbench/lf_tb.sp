* LF 
.INCLUDE ../../LPF/circuit/lf_cir.ckt





* This netlist demonstrates the following:
* global nodes (vdd, gnd)

* .measure statements for delay and an example ternary operator

* You can run the example circuit with this command:
*
* ngspice rc-meas-ac.sp


* global nodes
.global vdd gnd

* autostop -- stop simulation early if .measure statements done
*.option autostop

Vac ilf GND dc 0 ac 1

Xloop_filter_3rd_order ilf vctrl GND loop_filter_3rd_order 


.control
ac DEC 10 1k 10MEG
meas ac vvctrl_at FIND v(vctrl) AT=1MEG
meas ac vvctrl_atr FIND vr(vctrl) AT=1MEG
meas ac vvctrl_ati FIND vi(vctrl) AT=1MEG
meas ac vvctrl_atm FIND vm(vctrl) AT=1MEG
meas ac vvctrl_atp FIND vp(vctrl) AT=1MEG
meas ac vvctrl_atd FIND vdb(vctrl) AT=1MEG
meas ac vvctrl_max max v(vctrl) from=1k to=10MEG
meas ac freq_at when v(vctrl)=0.1
meas ac vvctrl_diff trig v(vctrl)  val=0.1   rise=1 targ v(vctrl) val=0.1   fall=1
meas ac fixed_diff trig AT = 10k targ v(vctrl) val=0.1   rise=1
meas ac vvctrl_avg  avg   v(vctrl)  from=10k to=1MEG
meas ac vvctrl_integ integ v(vctrl) from=20k to=500k
meas ac freq_at2 when v(vctrl)=0.1 fall=LAST
*meas ac bw_chk param='(vvctrl_diff < 100k) ? 1 : 0'
if (vvctrl_diff < 100k)
   let bw_chk = 1
else
   let bw_chk = 0
end  
echo bw_chk = "$&bw_chk" 
*meas ac bw_chk2 param='(vvctrl_diff > 500k) ? 1 : 0'
if (vvctrl_diff > 500k)
   let bw_chk2 = 1
else
   let bw_chk2 = 0
end 
echo bw_chk2 = "$&bw_chk2" 
meas ac vvctrl_rms rms v(vctrl) from=10 to=1G
*rusage all
plot v(vctrl)
plot ph(v(vctrl))
plot mag(v(vctrl))
plot db(v(vctrl))
.endc

.end