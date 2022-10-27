#!/bin/bash

cd testbench
echo "CIRCIT TESTBENCH"
ngspice -b cir_tb.spice
echo "PEX TESTBENCH"
ngspice -b pex_tb.spice

cd scripts/corners
echo "CORNERS RUNNING"
python3 run_corners.py
echo "plotting measurements"
python3 plot_measurements.py
