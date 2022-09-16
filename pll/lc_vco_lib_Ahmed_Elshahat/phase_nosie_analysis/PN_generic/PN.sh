#!/bin/bash
file_name=$1
out_expression=$2
tran_step=$3
tran_stop=$4

cd csv_files
rm *.csv
cd ../spice_files
rm tb1.spice tb2.spice
cd ../pkl_files
rm *.pkl
cd ..
python3 scripts/run1.py ${file_name} ${out_expression} ${tran_step} ${tran_stop}
ngspice spice_files/tb1.spice
python3 scripts/run2.py ${out_expression} ${tran_step} ${tran_stop}
ngspice spice_files/tb2.spice
python3 scripts/phaseNoise_calc.py

