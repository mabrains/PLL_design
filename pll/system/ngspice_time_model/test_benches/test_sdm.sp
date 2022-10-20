*SDM
.global d_d0 d_d1

.csparam simtime=200n

*digital zero

vzero A_0 0 dc 0

abridgev3 [A_0] [d_d0] adc_vbuf
.model adc_vbuf adc_bridge(in_low = 0.9 in_high = 0.9)

*digital one

ainv1 d_d0 d_d1 invd1

.model invd1 d_inverter(rise_delay = 1e-10 fall_delay = 1e-10)


.PARAM trise = {1e-15}
.PARAM tfall = {1e-15}

VDD vdd gnd 1.8V

VCLK CLK gnd PULSE ( 0 1.8 35n trise tfall 5n 10n 0 )

* Analog to Digital nodes Models
.model adc_buff adc_bridge(in_low = 0.9 in_high = 0.9)

* Digital CLK
aclk [CLK] [CLK_D] adc_buff

.include sdm_behav.ckt

XSDM d_d1 d_d0 d_d0 d_d0 d_d0 d_d0 d_d0 d_d0 CLK_D DIV0 DIV1 DIV2 DIV3 DIV4 SDM

.control
tran 0.1n $&simtime
run
plot DIV0 
plot DIV1 
plot DIV2 
plot DIV3 
plot DIV4
.endc


