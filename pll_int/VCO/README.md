# Integer PLL Simulations  
FOur simulations are performed on the VCO block. The possible simulations are the thefollowing. Firstly,schematic simulations at a single corner and single value of the control voltage. Secondly, schematic simulation for all possible corners and control voltage values. Thirdly, post layout simulation at single corner and single control voltage. Fourthly, post layout simulations for all possible for all possible corners and control voltage values.

## Prerequisites
You need to have installed the following tools:
- Ng-spice 37+
- Python 3.9+
- Sky130 PDK installed from volare: [Link](https://github.com/efabless/volare/releases/tag/sky130-fa87f8f4bbcc7255b6f0c0fb506960f531ae2392)

You need to specifiy the `PDK` and `PDK_ROOT` environment variables as follows:
```bash
export PDK=sky130A;
export PDK_ROOT=<pdk_installation_path>
```

## Running Simulations
You could reproduce our runs using the following instructions:
### To perform schematic simulations at single corner and control voltage:
   * open the terminal at any working space and type the following command in the terminal:
  ```bash
  chmod a+x run_circuit_testbench.sh
  ```
  Note that this command is performed only once and no need to do it again at all.
   * Execute the following command in the terminal: 
  ```bash
  ./run_circuit_testbench.sh
  ```
   * A temporary run folder is created containg the following files:
        - The generated spice netlist file and log file
        - All the intended parameters versus time in png as PNG  images.
        - All the important measurements in a CSV file.
        - A copy of the important results is saved in the results folder.
  
###  To perform post layout simulations at single corner and control voltage:
   * open the terminal at any working space and type the following command in the terminal 
  ```bash
  chmod a+x run_pex_tb.sh
  ```
  Note that this command is performed only once and no need to do it again at all.
   * Execute the following command in the terminal 
  ```bash
  ./run_pex_tbsh
  ```
   * A temporary run folder is created containg the following files:
        - The generated spice netlist file and log file.
        - All the intended parameters versus time in png as PNG  images.
        - All the important measurements in a CSV file.
        - A copy of the important results is saved in the results folder.

### To perform schematic simulations for all corners and control voltages:
   * open the terminal at any working space and type the following command in the terminal:
  ```bash
  chmod a+x run_circuit_corners.sh
  ```
  Note that this command is performed only once and no need to do it again at all.
   * Execute the following command in the terminal: 
  ```bash
  ./run_circuit_corners.sh
  ```
   * A temporary run folder is created containg the following files:
        - The generated spice netlists file and log files
        - All the intended parameters versus time in png as PNG  images.
        - All the important measurements in a CSV file.
        - A copy of the important results is saved in the results folder.
  
###  To perform post layout simulations for all corners and control voltages:
   * open the terminal at any working space and type the following command in the terminal 
  ```bash
  chmod a+x run_pex_corners.sh
  ```
  Note that this command is performed only once and no need to do it again at all.
   * Execute the following command in the terminal 
  ```bash
  ./run_pex_corners
  ```
   * A temporary run folder is created containg the following files:
        - The generated spice netlist file and log file.
        - All the intended parameters versus time in png as PNG  images.
        - All the important measurements in a CSV file.
        - A copy of the important results is saved in the results folder.


