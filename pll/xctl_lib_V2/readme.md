# Full description of crystal files
## corner
- Run _test
- scripts
  - all_measurements.csv: This CSV file contain the results of corner simulation.
  - run_ring_corners.py: a python script to automate corner simulations
- spice_files.
  - ring_cir.ckt:   The used crystal subcircuit in corner simulations. 
  - test_ring_char.spice: the testbench used to run the crystal subcircuit.
## xctl
- Klayout
  - Layout.png: a figure showing the layout of the crystal oscillator.
  - New_crystal.gds: The gds file of the crystal oscillator.
  - PEX
	  - New_crystal.gds: The gds file of the crystal oscillator.
	  - test_ring_char.spice: the testbench used to run the crystal subcircuit.
	  - TOP.ext: The extracted file from magic.
	  - TOP_lvs.ext: The extracted file from magic that's used for LVS purposes.
	  - TOP_PEX.ext: The extracted file from magic that's used for PEX purposes.
	  - xschemrc: xschemrc system configuration file.
	  - .spiceinit: a file used to initialize ngspice simulator.
  - postlayout.png: a figure showing the results of the postlayout simulation.
  -   TOP.cdl: This file looks exactly like subcircuit but with .cdl extension that's used for LVS purposes.
  - TOP_extracted.cir: The extracted file form magic.
  - TOP.lvsdb: LVS database file.
  - xschem
	  - Crystal.sch: xschem crystal oscillator schematic.
	  - Crystal.spice: spice file for crystal oscillator used for schematic simulations.
	  - pre_layout.png: a figure showing the results of the postlayout simulation of the crystal oscillator.
	  - xschemrc: xschemrc system configuration file.
	 
