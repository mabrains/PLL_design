** Test bench for ring

.include ../behav/xctl_behave.ckt

VDD VDD GND DC 1.8

.temp 27
.options tnom=27

xctl_behave REF VDD GND xctl_behave 

.control

    op 
    save all
        
    print all

    tran 5n 1m
    plot REF
    meas tran tperiod TRIG REF VAL=1.5 RISE=750 TARG REF VAL=1.5 RISE=755
    let freq = 5/(tperiod*1000000)
    print freq
    
.endc

.GLOBAL GND
.GLOBAL VDD
.end
