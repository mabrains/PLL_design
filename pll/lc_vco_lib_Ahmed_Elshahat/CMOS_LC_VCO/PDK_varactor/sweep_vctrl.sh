#!/bin/bash
arr=(0.15 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2 2.2 2.4 2.6 2.8 3 3.2 3.4 3.6 3.8 4 4.2 4.6 4.8)
i=0
len=${#arr[@]}
while [ $i -lt $len ];
do
    echo ${arr[$i]}
    lineNo=3
    lengthValue=${arr[$i]}
    newLine=".param Length=${lengthValue}"
    sed -i "${lineNo}s/.*/$newLine/" spice_files/NMOS_char.spice
    ngspice spice_files/NMOS_char.spice
    let i++
done