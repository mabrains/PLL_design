#!/bin/bash
filename="/home/monem/.xschem/simulations/divider_tb.spice"
#put default values of spice file in the last of the arrays 
#example: the case of process=( ff ss tt ) temp=( -40 125 27 ) means the values in spice file are tt and 27
process=( "ff" "ss" "tt" )
temp=( -40 125 27 )

for ((i = 0 ; i < ${#process[@]} ; i++)); do
	sed -i "s/sky130.lib.spice ${process[$(($i-1))]}/sky130.lib.spice ${process[$i]}/" $filename
	for ((j = 0 ; j < ${#temp[@]} ; j++)); do
		echo "Start ${process[$i]} ${temp[$j]}"
		sed -i "s/.temp ${temp[$(($j-1))]}/.temp ${temp[$j]}/" $filename
		sed -i "s/.options tnom=${temp[$(($j-1))]}/.options tnom=${temp[$j]}/" $filename
		ngspice -b -o divider_${process[$i]}_${temp[$j]}.log $filename
		echo "Finished ${process[$i]} ${temp[$j]}"
	done
done
