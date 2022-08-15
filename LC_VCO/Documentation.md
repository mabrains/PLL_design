Initial Design
=================

- In both designs:
    - A simple inductor model is used which is composed of an ideal inductor in parallel with a resistor which represents the losses of the inductor.
    - Varactor isn't implemented yet, so a capacitor is used.
    - The values of the inductor and the capacitor are adjusted to get a resonance frequency at 2.45 GHz.
    - The size of the NMOS cross coupled pair is adjusted to generate a negative resistance which negates the positive resistance of the inductor.

_________________________________________________________________________
_________________________________________________________________________

- Implemented NMOS based LC VCO operating at 2.45 GHz
    - Schematic:
    ![NMOS LC VCO Schematic](NMOS_LC_VCO_Schematic.png "NMOS LC VCO Schematic")
    - Output: 
    ![NMOS LC VCO Output](NMOS_LC_VCO_Diff_Output.png "NMOS LC VCO Differential Output")

_________________________________________________________________________
_________________________________________________________________________

- Implemented CMOS based LC VCO operating at 2.45 GHz
    - Schematic:
    ![CMOS LC VCO Schematic](CMOS_LC_VCO_Schematic.png "CMOS LC VCO Schematic")
    - Output:
    ![CMOS LC VCO Output](CMOS_LC_VCO_Diff_Output.png "CMOS LC VCO Differential Output")
