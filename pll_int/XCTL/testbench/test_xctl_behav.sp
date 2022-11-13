** Test bench for xctl

.include ../../behav/xctl_behave.ckt


VDD VDD GND DC 1.8

.temp 27
.options tnom=27

xctl_behave REF VDD GND xctl_behave 

.control

    set wr_singlescale
    set wr_vecnames
    option numdgt = 3
    tran 5n 1m
    wrdata {{run_folder}}/csv/xctl_behave.csv v(REF)
    *rusage
    meas tran tperiod TRIG REF VAL=0.9 RISE=750 TARG REF VAL=0.9 RISE=751
    let freq = 1/tperiod
    print freq
    
.endc

.GLOBAL GND
.GLOBAL VDD
.end
