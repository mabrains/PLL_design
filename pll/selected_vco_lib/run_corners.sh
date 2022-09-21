#!/bin/bash
# Read a string with spaces using for loop

cornerArr=("tttt")
#cornerArr=("tttt")
#cornerArr=("tttt" "ssss" "sssf" "ssfs" "ssff" "sfss" "sfsf" "sffs" "sfff" "fsss" "fssf" "fsfs" "fsff" "ffss" "ffsf" "fffs" "ffff")
#cornerArr=("ssss" "sssf" "ssfs" "ssff" "sstt" "sfss" "sfsf" "sffs" "sfff" "sftt" "stss" "stsf" "stfs" "stff" "sttt" "fsss" "fssf" "fsfs" "fsff" "fstt" "ffss" "ffsf" "fffs" "ffff" "fftt" "ftss" "ftsf" "ftfs" "ftff" "fttt" "tsss" "tssf" "tsfs" "tsff" "tstt" "tfss" "tfsf" "tffs" "tfff" "tftt" "ttss" "ttsf" "ttfs" "ttff" "tttt")




i=0
len=${#cornerArr[@]}
mkdir -p csv_files
while [ $i -lt $len ];#
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
    newLine4=".include \/open_design_environment\/foundry\/pdks\/skywaters\/sky130A\/libs.tech\/ngspice\/corners\/${devicesFlag}.spice"
    newLine5=".include \/open_design_environment\/foundry\/pdks\/skywaters\/sky130A\/libs.tech\/ngspice\/corners\/${devicesFlag}\/specialized_cells.spice"
    newLine6="    wrdata csv_files\/fosc_vs_vctrl_${corner}.csv f_osc[vctrl_counter]"
    newLine7="    wrdata csv_files\/max_swing_${corner}.csv tran.vdiff_max"
    newLine8="    wrdata csv_files\/time_swing_${corner}.csv tran.vdiff"

    lineNo1=65
    lineNo2=66
    lineNo3=76
    lineNo4=68
    lineNo5=69
    lineNo6=93
    lineNo7=94
    lineNo8=95


    sed -i "${lineNo1}s/.*/$newLine1/" spice_files/vco_corners_test.spice
    sed -i "${lineNo2}s/.*/$newLine2/" spice_files/vco_corners_test.spice
    sed -i "${lineNo3}s/.*/$newLine3/" spice_files/vco_corners_test.spice
    sed -i "${lineNo4}s/.*/$newLine4/" spice_files/vco_corners_test.spice
    sed -i "${lineNo5}s/.*/$newLine5/" spice_files/vco_corners_test.spice
    sed -i "${lineNo6}s/.*/$newLine6/" spice_files/vco_corners_test.spice
    sed -i "${lineNo7}s/.*/$newLine7/" spice_files/vco_corners_test.spice
    sed -i "${lineNo8}s/.*/$newLine8/" spice_files/vco_corners_test.spice

    ngspice spice_files/vco_corners_test.spice
    
    let i++
done
