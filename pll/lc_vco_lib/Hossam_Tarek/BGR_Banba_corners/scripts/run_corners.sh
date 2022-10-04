#!/bin/bash
# Read a string with spaces using for loop

cornerArr=("ssss" "sssf" "ssfs" "ssff" "sstt" "sfss" "sfsf" "sffs" "sfff" "sftt" "stss" "stsf" "stfs" "stff" "sttt" "fsss" "fssf" "fsfs" "fsff" "fstt" "ffss" "ffsf" "fffs" "ffff" "fftt" "ftss" "ftsf" "ftfs" "ftff" "fttt" "tsss" "tssf" "tsfs" "tsff" "tstt" "tfss" "tfsf" "tffs" "tfff" "tftt" "ttss" "ttsf" "ttfs" "ttff" "tttt")
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
    newLine6="    wrdata csv_files\/Iref_tran_${corner}.csv i(v1) "


    lineNo1=37
    lineNo2=38
    lineNo3=39
    lineNo4=40
    lineNo5=41
    lineNo6=20


    sed -i "${lineNo1}s/.*/$newLine1/" spice_files/BGR_tb.spice
    sed -i "${lineNo2}s/.*/$newLine2/" spice_files/BGR_tb.spice
    sed -i "${lineNo3}s/.*/$newLine3/" spice_files/BGR_tb.spice
    sed -i "${lineNo4}s/.*/$newLine4/" spice_files/BGR_tb.spice
    sed -i "${lineNo5}s/.*/$newLine5/" spice_files/BGR_tb.spice
    sed -i "${lineNo6}s/.*/$newLine6/" spice_files/BGR_tb.spice
 

    ngspice spice_files/BGR_tb.spice
    
    let i++
done
