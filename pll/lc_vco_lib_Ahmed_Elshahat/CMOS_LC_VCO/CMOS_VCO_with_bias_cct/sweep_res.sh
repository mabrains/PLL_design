#!/bin/bash
arr=(100 150 200 250 300 350 400 450 500 550 600 650 700 750 800 850 900 950 1000 1050 1100 1150 1200 1250 1300 1350 1400 1450 1500 1550 1600 1650 1700 1750 1800 1850 1900 1950 2000)
i=0
len=${#arr[@]}
while [ $i -lt $len ];
do
    echo ${arr[$i]}
    lineNo=48
    resValue=${arr[$i]}
    newLine="R3 vp vn ${resValue} m=1"
    sed -i "${lineNo}s/.*/$newLine/" spice_files/CMOS_VCO_tb1.spice
    ngspice spice_files/CMOS_VCO_tb1.spice
    let i++
done

