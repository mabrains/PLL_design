# Full description of crystal files
Please find all the details of each file in this folder structure below.

## corner
This folder has the following structure:
- scripts
  - all_measurements.csv: This CSV file contain the results of corner simulation.
  - run_ring_corners.py: a python script to automate corner simulations
- spice_files.
  - ring_cir.ckt:   The used crystal subcircuit in corner simulations. 
  - test_ring_char.spice: the testbench used to run the crystal subcircuit.
## xctl
This folder has the following structure:
- Klayout
  - Layout.png: a figure showing the layout of the crystal oscillator.
  - crystal.gds: The gds file of the crystal oscillator.
  - PEX
	  - test_ring_char.spice: the testbench used to run the crystal subcircuit.
	  - TOP.ext: The extracted file from magic.
	  - TOP_lvs.ext: The extracted file from magic that's used for LVS purposes.
	  - TOP_PEX.ext: The extracted file from magic that's used for PEX purposes.
	  - xschemrc: xschemrc system configuration file.
	  - .spiceinit: a file used to initialize ngspice simulator.
  - postlayout.png: a figure showing the results of the postlayout simulation.
  - TOP.cdl: This file looks exactly like subcircuit but with .cdl extension that's used for LVS purposes.
  - dbs: All output databases from LVS and DRC.
- xschem
  - simulation:
    - Crystal.spice : spice netlist generated from xschem.
    - .spiceinit : initialization setup for ng-spice.
  - Crystal.sch: xschem crystal oscillator schematic.
  - Crystal.ckt: Crystal model sub-circuit.
  - Off_chip_caps.ckt: Off-chip capacitors sub-circuit.
  - ring_cir.ckt: on-chip transistors for the crystal osc.
  - pre_layout.png: a figure showing the results of the postlayout simulation of the crystal oscillator.
  - xschemrc: xschemrc system configuration file.
	 
