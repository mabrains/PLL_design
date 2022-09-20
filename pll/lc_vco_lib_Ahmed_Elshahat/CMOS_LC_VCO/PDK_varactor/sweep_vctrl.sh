#!/bin/bash
#arr=(0.15 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2 2.2 2.4 2.6 2.8 3 3.2 3.4 3.6 3.8 4 4.2 4.6 4.8)
mkdir -p  csv_files
rm -rf csv_files/*.csv

arr=($(seq 0 0.05 1.8))
i=0
len=${#arr[@]}
while [ $i -lt $len ];
do
    echo ${arr[$i]}

    newLine1="VTuner vctrl gnd dc=${arr[$i]}"
    newLine2="wrdata csv_files\/ac_mag_$i.csv ac1.vabs "

    lineNo1=11
    lineNo2=31

    sed -i "${lineNo1}s/.*/$newLine1/" spice_files/Osc_tb.spice
    sed -i "${lineNo2}s/.*/$newLine2/" spice_files/Osc_tb.spice

    ngspice spice_files/Osc_tb.spice
    let i++
done


python3 scripts/plot_fosc.py csv_files/ac_mag_ ${len}