#!/bin/bash
arr=(-40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120)
i=0
len=${#arr[@]}
while [ $i -lt $len ];
do
    echo ${arr[$i]}
    lineNo=8
    resValue=${arr[$i]}
    newLine=".options temp= ${resValue}"
    sed -i "${lineNo}s/.*/$newLine/" BGR_Banba_tb.spice
    ngspice BGR_Banba_tb.spice
    let i++
done