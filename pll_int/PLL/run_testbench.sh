#!/bin/bash -f

export curr_date=`date`
export run_folder=`date +'run_%Y_%m_%d_%H_%M'`
echo "## Action time: $curr_date"

SCRIPT=$(realpath "$0")
COMMAND_PATH=$(dirname "$SCRIPT")

TESTBENCH="$COMMAND_PATH/testbench/"
CIRCUIT_TESTBENCH="$COMMAND_PATH/testbench/cir_tb.spice"
CONVERT_RAW_TESTBENCH="$COMMAND_PATH/testbench/scripts/analysis/convert_raw.py"
RESULT_IMAGES_TESTBENCH="$COMMAND_PATH/results/"

mkdir -p $COMMAND_PATH/$run_folder

if [ -f $CIRCUIT_TESTBENCH ]
then
    echo "==== CIRCUIT TESTBENCH ===="
    cd $TESTBENCH
    ngspice -b cir_tb.spice -r $COMMAND_PATH/$run_folder/pll.raw
    python3 $CONVERT_RAW_TESTBENCH $COMMAND_PATH/$run_folder
    echo $COMMAND_PATH/$run_folder
    echo $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/vctrl.png $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/aferlock.png $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/beforelock.png $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/vco_freq.png $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/VCO_out_after_inv.png $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/VCO_out_before_inv.png $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/all_measurements.csv $RESULT_IMAGES_TESTBENCH
    
else
    echo "==== CIRCUIT TESTBENCH doesn't exist, please recheck ===="
fi
