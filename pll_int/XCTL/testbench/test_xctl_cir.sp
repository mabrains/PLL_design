** Test bench for ring

.include ../circuit/xctl_cir.ckt

VDD VDD GND DC 1.8

.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.temp 27
.options tnom=27

Xxctl_cir Vin REF VDD GND xctl_cir

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
