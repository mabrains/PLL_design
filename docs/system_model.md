# System Model

Fractional-N PLL architecture uses a Fractional Clock Divider with DSM block as the frequency divider in a PLL system. In order to make the frequency of the VCO output signal equivalent to the frequency of a PFD reference signal, the frequency divider divides the frequency by a fractional value using the delta sigma modulation technique.


!["pll model"](../images/Latex/System.png)


**Advantages:**
* $π_{πππ}$ in range of tens $MHZ βLoop BW βπππ€\  ππ»π§$
* Average between $M$ and $M + 1$
* Channel spacing and $π_{πππ}$ βdecoupledβ high $π_{πππ}$ and a wide loop bandwidth to suppress the VCO phase noise
* Less βamplificationβ of the reference phase noise.\

**Disadvantages:**
* Spurs
     Solved by : Randomization for modulus control

## Protocols
Compatible with WIFI / Bluetooth wireless communication protocols\
$13$ WiFi channels  $2412β2472\ (5MHz Spacing)$\
$79$ Bluetooth channels $2402β2480\ (1MHz Spacing)$\
We need a resolution of 1 MHz, canβt be acquired by Integer N PLL since it needs $π_{πππ}\ πΆβπππππ\ π ππππππ$

Modern Fractional N PLL :\
Dual modulus prescaler control\
But how it works ? \
For prescaler divide by $N$ for __A(VCO)__ output pulses and $N+1$ for **B**
$$\frac{(π΄+π΅)}{[\frac{π΄}{π}+\frac{B}{[π+1}]}$$



## Desmos Visualization of the channel specturm


* [Channel spectrum visual modeling](https://www.desmos.com/calculator/dbc4pmegdf)

![image](https://user-images.githubusercontent.com/91559822/189160643-9cb5ff97-bb6e-4fd0-9dc6-7dab594b7c76.png)



## System Design
### Crystal Oscillator
A Crystal Oscillator with 10MHz is used as a refrence input in our PLL design to cover the full range of Wifi/Bluetooth frequencies.
* $π_{πππ}=40 ππ»π§$ hard practical division ratio $75:25$
* $π_{πππ}=10 ππ»π§$ Easier practical division ratio $9:1$
* Phase noise $@\  1MHz$ offset	$<-140\  dBc/Hz$

#### Phase noise model


![Crystal](../pll/system/python_model/2nd_sample_images/Crystal.png)


### PFD/CP

* $IπΆπ=100ππ΄$
* Compliance Range	$0.5V-1.5V$
* Phase noise $@\  1MHz$ offset	$<-223\  dBc/Hz$

#### Phase noise model

![PFD](../pll/system/python_model/2nd_sample_images/PFD.png)


### Loop Filter

#### Phase noise model


### VCO

* Tuning range $[2.35G,2.55G]$.
* $πΎπ£ππ\  β\  200MHz$
* Phase noise $@\  1MHz$ offset	$<-115\  dBc/Hz$

#### Phase noise model

![VCO](../pll/system/python_model/2nd_sample_images/VCO.png)


Fractional N PLL with LC Osc (2.35GHz till 2.55GHz)\


### Divider 

Divider --> divide by $240.2 -248$ with step $0.1$ to get $1MHz$ resolution
For prescaler divide by $N$
	                                   


* $π_{πππ}=10\ ππ»π§$
* Resoultion $1\ MHz$
* $DIV\  RATIO\  N=240-248$
* Step $0.1$
* Modulus control A B ratios	$π΄=9\  ,\  π΅=1$
$$\frac{(9+1)}{[\frac{9}{240}+\frac{1}{[240+1}]} \approx 240.09962 \approx 240.01$$ 

Phase Noise $@\  1\  MHz$ offset	$<-140$ dBc/Hz
#### Phase noise model

![Int](../pll/system/python_model/2nd_sample_images/Int.png)

### Sigma Delta Modulator

* Need higher order sigma delta modulators for sharper noise shaping
* $3^{rd}$ Order sigma modulator



#### Phase noise model

![Sigma](../pll/system/python_model/2nd_sample_images/Sigma%20Delta.png)


## Total Phase Noise 

![TOTAL](../pll/system/python_model/2nd_sample_images/TOTAL.png)


## System specifications 

| `Spec` | Value |
| --- | --- |
| `Center frequencies` | 2.402-2.480 GHz|
| `Phase noise @ 1MHz offset (From Standard)` |<-74 dBc/Hz |
| `Phase noise @ 2MHz offset (From Standard) ` |<-106 dBc/Hz|
| `Phase noise @ 3MHz offset (From Standard)` | <-116 dBc/Hz |
| `Synthesizer lock time (From Standard)  ` | (<68π)|
| `Loop Bandwidth` | 150 KHz|
| `Phase margin ` | 55Β°|
| ` Expected Lock time   ` | 4/(πΏπππ π΅π)β26 ππ |
| `Loop Filter Parameters` | Cz β268ππΉ ,Rz β12.5 πΎOhms , CP β29.5ππΉ|

You can find the full specs for each block [here](../pll/system/design_specs/Specs.md).

### System modeling is done using three differnt ways: 
  - [Verilog-A model](../pll/system/verilog-A_model/README.md)
  - [Octave model](../pll/system/octave_model/System_Modeling.md)
  - [python model](../pll/system/python_model/README.md)

For PLL python modling, you could use google colab added [here](../pll/system/python_model/Jupyter_files/README.md) to have an interactive interface that you can use.
