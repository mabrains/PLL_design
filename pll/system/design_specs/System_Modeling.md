# PLL System Design
### System Parameters:
* Kvco = 200MHz/V
* Ichp = 100uA
* Fref = 10 MHz
* Fout = 2.402 GHz
* Loop Bandwidth = 150 KHz
* Phase margin = 55

### Open loop response:
![](https://github.com/mabrains/PLL_design/blob/System_Design/systemdesign/phase_noise_images/OL_Tf.png)

### Closed loop response:
![](https://github.com/mabrains/PLL_design/blob/System_Design/systemdesign/phase_noise_images/CL_Tf.png)

## Phase noise profile of each block:

### Crystal Oscillator Noise Model
![](https://github.com/mabrains/PLL_design/blob/System_Design/systemdesign/phase_noise_images/Crystal_PN_Model.png)

### PFD/CHP Noise Model
![](https://github.com/mabrains/PLL_design/blob/System_Design/systemdesign/phase_noise_images/PFDCHP_PN_Model.png)

### VCO Noise Model
![](https://github.com/mabrains/PLL_design/blob/System_Design/systemdesign/phase_noise_images/VCO_PN_Model.png)

### Divider Noise Model
![](https://github.com/mabrains/PLL_design/blob/System_Design/systemdesign/phase_noise_images/PFDCHP_PN_Model.png)

As we can see in the following figure, each noise source sees a different transfer function depending on the position in the loop to the output.
![](https://github.com/mabrains/PLL_design/blob/System_Design/systemdesign/phase_noise_images/Linearized_Model.png)

### Total Output Phase noise
![](https://github.com/mabrains/PLL_design/blob/System_Design/systemdesign/phase_noise_images/Total_out_PN.png)

| Phase Noise | Value |
| --- | --- |
| `@ 1MHz offset` |-99.8 dBc/Hz |
| `@ 2MHz offset` |-111.4 dBc/Hz|
| `@ 3MHz offset` |-119.5dBc/Hz |
