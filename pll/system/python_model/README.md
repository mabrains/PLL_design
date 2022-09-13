4 Sept 2022
---
# _Status of the python Models_
![80%](https://progress-bar.dev/80/?title=completed) 
---
## Phase Noise Modeling
* Need to model the loop filter parameters calculator
* Need to revise Ref Crystal 

* Python models are compiled and are working probably 

Here are the samples
* The Cloosed loop response of the PLL
![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/CL.png)
* The Open loop response of the PLL
![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/OL.png)
* Crystal oscillator Phase Noise Profile
![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/Crystal.png)
* Phase/Frequency Detector Phase Noise Profile
![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/PFD.png)
* Divider Phase Noise Profile
![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/Int.png)
* Sigma Delta Noise Profile
![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/Sigma%20Delta.png)
* Voltage Controlled oscillator Phase Noise Profile
![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/VCO.png)
* Total Output Phase Noise Profile
![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/2nd_sample_images/TOTAL.png)

* Missing Loop Filter Phase Noise ( Need to Revise Crystal phase noise and divider )

## Time Domain Modeling 
### PFD 
* In the PFD time domain modeling i compare manually enter two siganls with phase difference of pi to test the UP signal case
* The code comapre each value of time array siganls with each other to detect rising edges and based on this edges it flags an up signal
* But the code has a flaw in the initial step of the code as it cannot detect the first edge ( as i forcly waits for the 2nd edge of the feedback signal to drive some algrothim on how the code should detect the signals 
   ![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/PFD_TIME_DOMAIN_MODEL/PFD%20OPERATION.png)
* When i try to solve the issue i ran into a logical error as i reverse the logic for the next edges 
  ![1st_sample](https://github.com/mabrains/PLL_design/blob/System/pll/system/python_model/PFD_TIME_DOMAIN_MODEL/trial%20pfd%201.png)
* Problem Should be Fixed soon


*_Moataz Mokhtar_*
 

