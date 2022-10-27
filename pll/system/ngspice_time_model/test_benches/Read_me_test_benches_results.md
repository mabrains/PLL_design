## Test benchs results

- ![#f03c15](https://via.placeholder.com/15/f03c15/f03c15.png) `Issue`
- ![#1589F0](https://via.placeholder.com/15/1589F0/1589F0.png) `In-progress`
- ![#c5f015](https://via.placeholder.com/15/c5f015/c5f015.png) `Finished`


----------------------
# Table of Contents

- [PFD](#PFD)
- [CP](#CP)
- [LF](#LF)
- [VCO](#VCO)
- [DIVIDER](#DIVIDER)
- [SDM](#SDM)

# ![#c5f015](https://via.placeholder.com/15/c5f015/c5f015.png) PFD
To test the PFD i need to cover the 3 cases of the PFD:
* The phase of the input reference signal is leading the feedback signal $UP$
![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/PFD/ref_fb.png)
* The phase of the feedback is leading the input signal $DOWN$
![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/PFD/fb_ref.png)
* The Two Phase are exactly the same $LOCKED$
![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/PFD/locked.png)

## 
# ![#f03c15](https://via.placeholder.com/15/f03c15/f03c15.png) CP
# ![#c5f015](https://via.placeholder.com/15/c5f015/c5f015.png) LF
# ![#1589F0](https://via.placeholder.com/15/1589F0/1589F0.png) VCO
# ![#c5f015](https://via.placeholder.com/15/c5f015/c5f015.png) DIVIDER 
To test the divider i inserted two signals of $2.4GHz\ and\ 2.5GHz$ to cover the whole frequency input range to the divider
and it should divide [240 - 250] depending on the control signals $P_{0} -> P_{7}$
and by running the tb transient simulation of time = $400ns$ which equals $4$ cycles of the $10MHz$ we expected to see 4 cycles as clearly shown 
* For division ratio of 240 we should have control signals 
$$P_{0}\ P_{1}\ P_{2}\ P_{3}\ P_{4}\ P_{5}\ P_{6}\ P_{7}\ $$
$$\ 0\ \ \ 0\ \ \ 0\ \ \ 0\ \ \ 1\ \ \ 0\ \ \ 0\ \ \ 0\ \ $$

![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/DIVIDER/2.4.png)

* For division ratio of 250 we should have control signals 
$$P_{0}\ P_{1}\ P_{2}\ P_{3}\ P_{4}\ P_{5}\ P_{6}\ P_{7}\ $$
$$\ 1\ \ \ 1\ \ \ 0\ \ \ 0\ \ \ 1\ \ \ 0\ \ \ 0\ \ \ 0\ \ $$


![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/DIVIDER/2.5.png)

# ![#c5f015](https://via.placeholder.com/15/c5f015/c5f015.png) SDM
To test the sdm we ran transient with input 7 digital signals to SDM were the LSB is equal to 1 and we obtain the following HEXADECIMAL results:

![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/DSM/div0.png)

![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/DSM/div1.png)

![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/DSM/div2.png)

![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/DSM/div3.png)

![](https://github.com/mabrains/PLL_design/blob/Mmoatazz-patch-1/pll/system/ngspice_time_model/test_benches/images/DSM/div4.png)

Upon further inspection of the waveforms and add them together at their respective time we got the following pattern:
$$00\ 01\ 1e\ 02\ 1e\ 02 $$ 
and by compare it to the verilog output:
![](https://github.com/mabrains/PLL_design/raw/Mmoatazz-patch-1/pll/DSM_lib/images/DSM_Full_Results.png)
we obtain the exact same pattern indicating that the SDM is working 
