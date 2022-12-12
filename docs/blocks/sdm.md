## Delta Sigma Modulator
-------------------------

### Circuit design 
----------------------

• The implemented Sigma-Delta Modulator is a MASH (Multi Stage Noise Shaping) architecture of 3rd order.

• The implemented Sigma-Delta Modulator has the following inputs and outputs:

    - Inputs:   → Input channel bits (7 bits): Used to select a certain channel.
                → Clock (1 bit): Used for the registers in the design.
                → Reset (1 bit): Used to reset the registers in the design.
    -----------------------------------------------------------------------------
    - Output:   → Output passed to the divider (5 bits).

![DSM Block](../../images/Diagrams/DSM/DSM%20BLOCK.jpg)

• The internal structure of the DSM is as follows:

    - DSM Core: Where the main function of the DSM is occurred and the random sequence with a functional average is generated.
    - Control Unit: Responsible for mapping the input number of channel to the required input for the DSM to generate the required fraction, also it gets the integer part       of this input channel and adds it to the fraction part to construct the required fractional division. For example if the input channel requires us to divide by 243.7,       then the control unit will give the DSM core the input which gives an average output of 0.7 and also this control unit will output a constant value of 13 which if           passed to the divider will divide by a division ratio of 243 and then these 2 values the 2nd output of the control unit and the output of the DSM core will be added and     then passed to the divider as an input to get the desired 243.7 division ratio
    
![DSM Internal Structure](../../images/Diagrams/DSM/DSM%20BLOCK%20CORE.jpg)


_____
<br/><br/>

#### Digital Implementation of the DSM Core

• The typical implementation of a MASH architecture is composed of a number of accumulators, adders, and regiesters arranged as illustrated:

![DSM Diagram](../../images/Diagrams/DSM/3MASH%20order%20DSM.jpg)

____
<br/><br/>

#### DSM Core Blocks
The designed Delta-Sgima Modulator (DSM) is implemented using Verilog HDL and is composed into 3 modules as follows:
##### 1. Accumulator
• The accumulator in this design has 3 inputs (In_Data, CLK, Reset) and 2 outputs (Out_Data, Cout) as shown:

![DSM Accumulator](../../images/Diagrams/DSM/Acumlator.jpg)

• The size of the accumulators is of 24 bits to increase the resolution to obtain a precise fraction.

##### 2. Special Adder
• This adder adds 2 numbers then subtracts a third number from them, it has 3 inputs and 1 output:

![DSM Special Adder](../../images/Diagrams/DSM/Special%20adder.jpg)

### Simulation results 
----------------------

### Layout design 
----------------------

### Post-Layout simulation
----------------------


