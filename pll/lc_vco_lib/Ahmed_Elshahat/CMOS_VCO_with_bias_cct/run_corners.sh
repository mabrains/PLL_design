#!/bin/bash
# Read a string with spaces using for loop

cornerArr=("tttt" "ssss" "sssf" "ssfs" "ssff" "sfss" "sfsf" "sffs" "sfff" "fsss" "fssf" "fsfs" "fsff" "ffss" "ffsf" "fffs" "ffff")
#cornerArr=("tttt")

i=0
len=${#cornerArr[@]}
while [ $i -lt $len ];
do
    corner=${cornerArr[$i]}
    vddFlag=${corner:0:1}
    tempFlag=${corner:1:1}
    devicesFlag=${corner:2:2}

    if [ "$vddFlag" = "s" ] 
    then
    vddValue=1.62
    elif [ "$vddFlag" = "f" ] 
    then
    vddValue=1.98
    else
    vddValue=1.8
    fi
    
    if [ "$tempFlag" = "s" ] 
    then
    tempValue=125
    elif [ "$tempFlag" = "f" ] 
    then
    tempValue=-45
    else
    tempValue=27
    fi
    
    echo ${vddValue} ${tempValue} ${devicesFlag}
    newLine1=".temp ${tempValue}"
    newLine2=".options tnom=${tempValue}"
    newLine3=".param V_supply = ${vddValue}"
    newLine4=".include \/foundry\/pdks\/skywaters\/share\/pdk\/sky130A\/libs.tech\/ngspice\/corners\/${devicesFlag}.spice"
    newLine5=".include \/foundry\/pdks\/skywaters\/share\/pdk\/sky130A\/libs.tech\/ngspice\/corners\/${devicesFlag}\/specialized_cells.spice"
    newLine6="    wrdata csv_files\/fosc_vs_vctrl_${corner}.csv f_osc[vctrl_counter]"
    newLine7="    wrdata csv_files\/max_swing_${corner}.csv tran.vdiff_max"
    newLine8="    wrdata csv_files\/time_swing_${corner}.csv tran.vdiff"

    lineNo1=82
    lineNo2=83
    lineNo3=84
    lineNo4=85
    lineNo5=86
    lineNo6=307
    lineNo7=308
    lineNo8=309


    sed -i "${lineNo1}s/.*/$newLine1/" spice_files/CMOS_VCO_tb1.spice
    sed -i "${lineNo2}s/.*/$newLine2/" spice_files/CMOS_VCO_tb1.spice
    sed -i "${lineNo3}s/.*/$newLine3/" spice_files/CMOS_VCO_tb1.spice
    sed -i "${lineNo4}s/.*/$newLine4/" spice_files/CMOS_VCO_tb1.spice
    sed -i "${lineNo5}s/.*/$newLine5/" spice_files/CMOS_VCO_tb1.spice
    sed -i "${lineNo6}s/.*/$newLine6/" spice_files/CMOS_VCO_tb1.spice
    sed -i "${lineNo7}s/.*/$newLine7/" spice_files/CMOS_VCO_tb1.spice
    sed -i "${lineNo8}s/.*/$newLine8/" spice_files/CMOS_VCO_tb1.spice

    ngspice spice_files/CMOS_VCO_tb1.spice
    
    let i++
done
