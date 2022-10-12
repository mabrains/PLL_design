# Bluetooth PLL Design on Skywaters 130nm technology

[![License](https://img.shields.io/github/license/mabrains/PLL_design)](LICENSE) 

*Warning*

   The current design is still under progress. This is an **experimental release**.
- ![#f03c15](https://via.placeholder.com/15/f03c15/f03c15.png) `In-Design`
- ![#1589F0](https://via.placeholder.com/15/1589F0/1589F0.png) `In-Layout`
- ![#c5f015](https://via.placeholder.com/15/c5f015/c5f015.png) `Finished`


----------------------
# Table of Contents

- [Introduction](#introduction)
- [System Model](#system-model)
- [Circuit Design](#circuit-design)
- [Circuit Simulation](#circuit-simulation)
- [Full Design](#full-design)
- [Circuit Layout](#circuit-layout)
- [Layout Simulation](#layout-simulation)
- [Tapeout using Caravel SoC](#tapeout-using-caravel-soc)

# Introduction

A fully integrated Sigma-Delta Fractional-N PLL for Wifi/Bluetooth applications is implemented using Open-Source PDKs by Google-Skywater 130nm. The entire design was built using Open-Source EDA tools such as Octave, python, xschem, ngspice and Klayout.


# ![#f03c15](https://via.placeholder.com/15/f03c15/f03c15.png) System Model

Fractional-N PLL architecture uses a Fractional Clock Divider with DSM block as the frequency divider in a PLL system. In order to make the frequency of the VCO output signal equivalent to the frequency of a PFD reference signal, the frequency divider divides the frequency by a fractional value using the delta sigma modulation technique.


!["pll model"](images/Latex/System.png)


**Advantages:**
* $𝑓_{𝑟𝑒𝑓}$ in range of tens $MHZ →Loop BW ≈𝑓𝑒𝑤\  𝑀𝐻𝑧$
* Average between $M$ and $M + 1$
* Channel spacing and $𝑓_{𝑟𝑒𝑓}$ “decoupled” high $𝑓_{𝑟𝑒𝑓}$ and a wide loop bandwidth to suppress the VCO phase noise
* Less “amplification” of the reference phase noise.\

**Disadvantages:**
* Spurs
     Solved by : Randomization for modulus control

## Protocols
Compatible with WIFI / Bluetooth wireless communication protocols\
$13$ WiFi channels  $2412→2472\ (5MHz Spacing)$\
$79$ Bluetooth channels $2402→2480\ (1MHz Spacing)$\
We need a resolution of 1 MHz, can’t be acquired by Integer N PLL since it needs $𝑓_{𝑟𝑒𝑓}\ 𝐶ℎ𝑎𝑛𝑛𝑒𝑙\ 𝑠𝑝𝑎𝑐𝑖𝑛𝑔$

Modern Fractional N PLL :\
Dual modulus prescaler control\
But how it works ? \
For prescaler divide by $N$ for __A(VCO)__ output pulses and $N+1$ for **B**
$$\frac{(𝐴+𝐵)}{[\frac{𝐴}{𝑁}+\frac{B}{[𝑁+1}]}$$



## Desmos Visualization of the channel specturm


* [Channel spectrum visual modeling](https://www.desmos.com/calculator/dbc4pmegdf)
* ![image](https://user-images.githubusercontent.com/91559822/189160643-9cb5ff97-bb6e-4fd0-9dc6-7dab594b7c76.png)



## System Design
### Crystal Oscillator
A Crystal Oscillator with 10MHz is used as a refrence input in our PLL design to cover the full range of Wifi/Bluetooth frequencies.
* $𝑓_{𝑟𝑒𝑓}=40 𝑀𝐻𝑧$ hard practical division ratio $75:25$
* $𝑓_{𝑟𝑒𝑓}=10 𝑀𝐻𝑧$ Easier practical division ratio $9:1$
* Phase noise $@\  1MHz$ offset	$<-140\  dBc/Hz$

#### Phase noise model


![1](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/Crystal.png)


### PFD/CP

* $I𝐶𝑃=100𝜇𝐴$
* Compliance Range	$0.5V-1.5V$
* Phase noise $@\  1MHz$ offset	$<-223\  dBc/Hz$

#### Phase noise model

![](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/PFD.png)


### Loop Filter

#### Phase noise model


### VCO

* Tuning range $[2.35G,2.55G]$.
* $𝐾𝑣𝑐𝑜\  ≈\  200MHz$
* Phase noise $@\  1MHz$ offset	$<-115\  dBc/Hz$

#### Phase noise model

![](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/VCO.png)


Fractional N PLL with LC Osc (2.35GHz till 2.55GHz)\


### Divider 

Divider --> divide by $240.2 -248$ with step $0.1$ to get $1MHz$ resolution
For prescaler divide by $N$
	                                   


* $𝑓_{𝑅𝑒𝑓}=10\ 𝑀𝐻𝑧$
* Resoultion $1\ MHz$
* $DIV\  RATIO\  N=240-248$
* Step $0.1$
* Modulus control A B ratios	$𝐴=9\  ,\  𝐵=1$
$$\frac{(9+1)}{[\frac{9}{240}+\frac{1}{[240+1}]} \approx 240.09962 \approx 240.01$$ 

Phase Noise $@\  1\  MHz$ offset	$<-140$ dBc/Hz
#### Phase noise model

![](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/Int.png)

### Sigma Delta Modulator

* Need higher order sigma delta modulators for sharper noise shaping
* $3^{rd}$ Order sigma modulator



#### Phase noise model

![](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/Sigma%20Delta.png)


## Total Phase Noise 

![](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/TOTAL.png)


## System specifications 

| Spec | Value |
| --- | --- |
| `Center frequencies` | 2.402-2.480 GHz|
| `Phase noise @ 1MHz offset (From Standard)` |<-74 dBc/Hz |
| `Phase noise @ 2MHz offset (From Standard) ` |<-106 dBc/Hz|
| `Phase noise @ 3MHz offset (From Standard)` | <-116 dBc/Hz |
| `Synthesizer lock time (From Standard)  ` | (<68𝜇)|
| `Loop Bandwidth` | 150 KHz|
| `Phase margin ` | 55°|
| ` Expected Lock time   ` | 4/(𝐿𝑜𝑜𝑝 𝐵𝑊)≈26 𝜇𝑠|
| `Loop Filter Parameters` | Cz ≈268𝑝𝐹 ,Rz ≈12.5 𝐾Ohms , CP ≈29.5𝑝𝐹|

You can find the full specs for each block [here](pll/system/design_specs/Specs.md).

### System modeling is done using three differnt ways: 
  - [Verilog-A model](pll/system/verilog-A_model/README.md)
  - [Octave model](pll/system/octave_model/System_Modeling.md)
  - [python model](pll/system/python_model/README.md)

For PLL python modling, you could use google colab added [here](./pll/system/python_model/Jupyter_files/README.md) to have an interactive interface that you can use.


# ![#f03c15](https://via.placeholder.com/15/f03c15/f03c15.png) Circuit Design

During this stage, we designed the PLL using [xschem](https://github.com/StefanSchippers/xschem) tool. Each block is designed to achieve system design specifications. 

## Schematic 

### ![#f03c15](https://via.placeholder.com/15/f03c15/f03c15.png) Crystal Oscillator
----------------------
- Crystal Schematic
![Cry_Sch](images/schematics/Crystal.png)

### ![#1589F0](https://via.placeholder.com/15/1589F0/1589F0.png) Band Gap Refrence (BGR) 
----------------------------------

* Proposed BGR circuit (Banba) :

![BGR](images/Diagrams/BGR/Banba%20BGR.jpg)

* Core Circuit :

![Core](images/Diagrams/BGR/Core%20.jpg)

* OTA :

![OTA](images/Diagrams/BGR/OTA.jpg)

* Start-Up Circuit :

![](images/Diagrams/BGR/Start-up%20Circuit.jpg)


### ![#1589F0](https://via.placeholder.com/15/1589F0/1589F0.png) Phase/Frequency Detector (PFD) 
----------------------------------

* PFD Conv 

![PFD_Sym](images/Diagrams/PFD/Conv%20PFD.jpg)

* PFD Implemented

![PFD](images/Diagrams/PFD/Implemented%20PFD.jpg)

* UP flip-flop 

![PFD](images/Diagrams/PFD/up%20ff.jpg)

* DOWN flip-flop

![PFD](images/Diagrams/PFD/dwn%20ff.jpg)

* NOR-Gate

![PFD](images/Diagrams/PFD/Nor%20gate.jpg)

### Charge Pump (CP)
--------------------

* Charge Pump block diagram

![CP](images/Diagrams/Charge%20pump/Charge%20pump.jpg)

* Charge pump circuit 

![CP](images/Diagrams/Charge%20pump/Full%20Charge%20pump.jpg)

* OTA

![CP](images/Diagrams/Charge%20pump/CP%20OTA.jpg)

### ![#f03c15](https://via.placeholder.com/15/f03c15/f03c15.png) Loop Filter
---------------
* Third order loop filter 

![LF](images/Diagrams/Loop%20filter/third%20order.jpg)

### ![#1589F0](https://via.placeholder.com/15/1589F0/1589F0.png) Voltage Controlled Oscillator 
---------------------------------
* LC VCO

![LCVCO](images/Diagrams/LC%20VCO/LC%20VCO.jpg)

### ![#1589F0](https://via.placeholder.com/15/1589F0/1589F0.png) Fractional Divider
----------------------
#### Full Divider design

![Divider](images/Diagrams/Divider/Divider.jpg)

#### Divider Cell 

![Divider Cell](images/Diagrams/Divider/1_2%20DIV%20Symbol.jpg)

![Div Cell](images/Diagrams/Divider/1_2%20Div%20Cell.jpg)

#### D-Flipflop design

![Divider DFF](images/Diagrams/Divider/Static%20FF.jpg)

#### NAND gate design

![Divider nand](images/Diagrams/Divider/3%20NAND.jpg)

#### Inverter design

![Divider inv](images/Diagrams/Divider/Inverter.jpg)

#### AND gate design

![Divider and](images/Diagrams/Divider/And.jpg)


### Delta Sigma Modulator
-------------------------


• The implemented Sigma-Delta Modulator is a MASH (Multi Stage Noise Shaping) architecture of 3rd order.

• The implemented Sigma-Delta Modulator has the following inputs and outputs:

    - Inputs:   → Input channel bits (7 bits): Used to select a certain channel.
                → Clock (1 bit): Used for the registers in the design.
                → Reset (1 bit): Used to reset the registers in the design.
    -----------------------------------------------------------------------------
    - Output:   → Output passed to the divider (5 bits).

![DSM Block](images/Diagrams/DSM/DSM%20BLOCK.jpg)

• The internal structure of the DSM is as follows:
    - DSM Core: Where the main function of the DSM is occurred and the random sequence with a functional average is generated.
    - Control Unit: Responsible for mapping the input number of channel to the required input for the DSM to generate the required fraction, also it gets the integer part       of this input channel and adds it to the fraction part to construct the required fractional division. For example if the input channel requires us to divide by 243.7,       then the control unit will give the DSM core the input which gives an average output of 0.7 and also this control unit will output a constant value of 13 which if           passed to the divider will divide by a division ratio of 243 and then these 2 values the 2nd output of the control unit and the output of the DSM core will be added and     then passed to the divider as an input to get the desired 243.7 division ratio
    
![DSM Internal Structure](images/Diagrams/DSM/DSM%20BLOCK%20CORE.jpg)


_____
<br/><br/>
#### Digital Implementation of the DSM Core

• The typical implementation of a MASH architecture is composed of a number of accumulators, adders, and regiesters arranged as illustrated:

![DSM Diagram](images/Diagrams/DSM/3MASH%20order%20DSM.jpg)

____
<br/><br/>

##### DSM Core Blocks
The designed Delta-Sgima Modulator (DSM) is implemented using Verilog HDL and is composed into 3 modules as follows:
###### 1. Accumulator
• The accumulator in this design has 3 inputs (In_Data, CLK, Reset) and 2 outputs (Out_Data, Cout) as shown:

![DSM Accumulator](images/Diagrams/DSM/Acumlator.jpg)

• The size of the accumulators is of 24 bits to increase the resolution to obtain a precise fraction.

###### 2. Special Adder
• This adder adds 2 numbers then subtracts a third number from them, it has 3 inputs and 1 output:

![DSM Special Adder](images/Diagrams/DSM/Special%20adder.jpg)

# Circuit Simulation

### Crystal Oscillator
----------------------
![Cry_sim](images/Simulations/Cry_sim.png)

### Phase/Frequency Detector (PFD) 
----------------------------------

### Charge Pump (CP)
--------------------

### Loop Filter (LPF)
---------------------

### Voltage Controlled Oscillator (VCO)
---------------------------------------

### Fractional Divider
----------------------

### Delta Sigma Modulator
-------------------------

# Full Design

![]()


# Circuit Layout


# Layout Simulation


# Tapeout using Caravel SoC



Refer to [README](docs/source/index.rst) for this sample project documentation. 
