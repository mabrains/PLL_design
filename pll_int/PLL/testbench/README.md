# Integer PLL Simulations  
Two types of simulations are performed on the integrated integer PLL, schematic simulations and post layout simulations. In both simulations, a full analysis and measurement using raw files with the ngspice and python scripts.

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
### To perform schematic simulations:
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
        - Binary raw file of the run.
        - All the intended parameters versus time in png as PNG  images.
        - All the important measurements in a CSV file.
        - A copy of the important results is saved in the results folder.
  
###  To perform post layout simulations:
   * open the terminal at any working space and type the following command in the terminal 
  ```bash
  chmod a+x run_pex_testbench.sh
  ```
  Note that this command is performed only once and no need to do it again at all.
   * Execute the following command in the terminal 
  ```bash
  ./run_pex_testbench.sh
  ```
   * A temporary run folder is created containg the following files:
        - Binary raw file of the run.
        - All the intended parameters versus time in png as PNG  images.
        - All the important measurements in a CSV file.
        - A copy of the important results is saved in the results folder.

