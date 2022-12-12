# **INTEGER PLL SIMULATIONS**  
Two types of simulations are performed on the integrated integer PLL, schematic simulations and post layout simulations. In both simulations, a full analysis and measurement using raw files with the ngspice and python scripts.
# **STEPS:**
1. clone the repo.
2. **To perform schematic simulations**:
   * open the terminal at any working space and type the following command in the terminal `chmod 777 run_circuit_testbench.sh`. Note that this command is performed only once and no need to do it again at all.
   * Execute the following command in the terminal `./run_circuit_testbench.sh`
   * A temporary run folder is created containg the following files:
        - Binary raw file of the run.
        - All the intended parameters versus time in png as PNG  images.
        - All the important measurements in a CSV file.
    * A copy of the important results is saved in the results folder.
  
3. **To perform post layout simulations**:
   * open the terminal at any working space and type the following command in the terminal `chmod 777 run_pex_testbench.sh`. Note that this command is performed only once and no need to do it again at all.
   * Execute the following command in the terminal `./run_pex_testbench.sh`
   * A temporary run folder is created containg the following files:
        - Binary raw file of the run.
        - All the intended parameters versus time in png as PNG  images.
        - All the important measurements in a CSV file.
    * A copy of the important results is saved in the results folder.

