# PLL System Design

## System Parameters:
* Kvco = 200MHz/V
* Ichp = 100uA
* Fref = 10 MHz
* Fout = 2.402 GHz
* Loop Bandwidth = 150 KHz
* Phase margin = 55

## Open loop response:

![Open loop response](images/OL_Tf.png)

## Closed loop response:

![Closed loop response](images/CL_Tf.png)

## Phase noise profile of each block:

### Crystal Oscillator Noise Model
![Crystal Oscillator Noise Model](images/Crystal_PN_Model.png)

### PFD/CHP Noise Model
![PFD/CHP Noise Model](images/PFDCHP_PN_Model.png)

### VCO Noise Model
![VCO Noise Model](images/VCO_PN_Model.png)

### Divider Noise Model
![Divider Noise Model](images/PFDCHP_PN_Model.png)

As in the following figure, each noise source sees a different transfer function depending on the position in the loop to the output.
![Linearized_Model](images/Linearized_Model.png)

## Total Output Phase noise
![Total_out_PN](images/Total_out_PN.png)

| Phase Noise | Value |
| --- | --- |
| `@ 1MHz offset` |-99.8 dBc/Hz |
| `@ 2MHz offset` |-111.4 dBc/Hz|
| `@ 3MHz offset` |-119.5dBc/Hz |
