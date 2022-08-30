#!/bin/bash
ngspice spice_files/transient_no_noise.spice
python3 scripts/noise_param_calc.py 
ngspice spice_files/transient_with_noise.spice
python3 scripts/phaseNoise_calc.py
