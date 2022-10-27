** charge pump and loop filte test bench

.include ../circuit/cp_cct.ckt
.include ../../LPF/circuit/loop_filter.ckt

.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.temp 27.00
.options tnom=27.00

VDD VDD GND 1.80
** Vout VOP GND 0.00
Xcp  UP cp_out DN VDD GND CP_with_buffer
Xloop_filter_3rd_order cp_out VOP gnd loop_filter_3rd_order
Vin_up UP GND 0
Vin_dn DN GND 0
.control
op
save all 
print all
** probe all
* print i(Vcurrent)*1000000
.endc

.GLOBAL GND
.GLOBAL VDD
.end