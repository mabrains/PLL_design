*********************************inverter********************************
.model inv d_inverter(rise_delay =1e-15 fall_delay =1e-15 input_load = 1e-15)

*********************************ADC********************************
.model ADC adc_bridge(in_low = 0.9 in_high = 0.9)

*********************************DAC********************************
.model DAC dac_bridge(out_low = 0 out_high = 1.8 out_undef = 0.9
+	                  input_load =0 t_rise = 1e-15
+	                  t_fall = 1e-15)


*********************************FF********************************
.model FF d_dff(clk_delay = 1e-15
+                set_delay = 1e-15
+                reset_delay = 1e-15 
+                rise_delay = 1e-15 fall_delay = 1e-15)


*********************************DFF********************************
.subckt DFF D CLK OUT
  *converting inputs from analog to digital
  a_a2d [D CLK] [D_d CLK_d] ADC

  a_inverter1 CLK_d CLK_d_bar inv
  a_ff D_d CLK_d_bar set reset OUT2_d OUT2_d_bar FF

  *converting outputs from digital to Analog
  a_d2a [OUT2_d_bar] [OUT] DAC

.ends DFF



*Data frequency tunning
.PARAM frequency_data = 1.5e9
.PARAM cycle = {1/frequency_data}
.PARAM tpw = {cycle / 2}
.PARAM trf = {cycle / 50}

*clk frequency tunning
.PARAM frequency_clk = 2.5e9
.PARAM cycle2 = {1/frequency_clk}
.PARAM tpw2 = {cycle2 / 2}
.PARAM trf2 = {cycle2 / 50}
.PARAM delay2 = {cycle2 / 4}

*building the testbench
Vin Data 0 DC 0 PULSE (1.8 0 0 trf trf tpw cycle)
Vin2 clock 0 DC 0 PULSE (1.8 0 delay2 trf2 trf2 tpw2 cycle2)

Xdff Data clock out DFF

*transient analysis
.control
tran 0.1p 6n

plot out
plot clock
plot Data

.endc