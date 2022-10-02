Sigma-Delta Modulator
=================

# Sigma-Delta Modulator Architecture

• The implemented Sigma-Delta Modulator is a MASH (Multi Stage Noise Shaping) architecture of 5th order as in MASH architectures the order of the modulator is determined by the number of the output bits.

• The implemented Sigma-Delta Modulator has the following inputs and outputs:

    - Inputs:   → Input channel bits (7 bits): Used to select a certain channel.
                → Clock (1 bit): Used for the registers in the design.
                → Reset (1 bit): Used to reset the registers in the design.
    -----------------------------------------------------------------------------
    - Output:   → Output passed to the divider (5 bits).

![DSM Block](./images/DSM_Block.png "DSM Block")


_____
<br/><br/>

# Digital Implementation

• The typical implementation of a MASH architecture is composed of a number of accumulators, adders, and regiesters arranged as illustrated:

![DSM Diagram](images/DSM_Diagram_Modified.png "DSM Diagram")

____
<br/><br/>

# DSM Blocks
The designed Delta-Sgima Modulator (DSM) is implemented using Verilog HDL and is composed into 3 modules as follows:
## 1. Accumulator
• The accumulator in this design has 3 inputs (In_Data, CLK, Reset) and 2 outputs (Out_Data, Cout) as shown: 

![DSM Accumulator](images/DSM_Accum.png "DSM Accumulator")

• The results of the RTL code:

![DSM Accumulator Results](images/DSM_Accum_Results.png "DSM Accumulator Results")
<br/><br/>

## 2. Special Adder
• This adder adds 2 numbers then subtracts a third number from them, it has 3 inputs and 1 output:

![DSM Special Adder](images/DSM_Special_Adder.png "DSM Special Adder")

• The results of the RTL code:

![DSM Special Adder Results](images/DSM_Special_Adder_Results.png "DSM Special Adder Results")
<br/><br/>

## 3. Full DSM
• The fully integrated DSM has the following results for an input stream of (0000001) which selects the 2nd channel:

![DSM Results](images/DSM_Full_Results.png "DSM Results")
