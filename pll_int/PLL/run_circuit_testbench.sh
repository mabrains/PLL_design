#!/bin/bash -f

export curr_date=`date`
export run_folder=`date +'run_%Y_%m_%d_%H_%M'`
echo "## Action time: $curr_date"

SCRIPT=$(realpath "$0")
COMMAND_PATH=$(dirname "$SCRIPT")

TESTBENCH="$COMMAND_PATH/testbench/"
CIRCUIT_TESTBENCH="$COMMAND_PATH/testbench/cir_tb.spice"
CONVERT_RAW_TESTBENCH="$COMMAND_PATH/testbench/scripts/analysis/convert_raw.py"
RESULT_IMAGES_TESTBENCH="$COMMAND_PATH/results/schematic_results"

mkdir -p $COMMAND_PATH/$run_folder
mkdir -p $COMMAND_PATH/$run_folder/images
mkdir -p $COMMAND_PATH/$run_folder/csv_files
mkdir -p $COMMAND_PATH/$run_folder/raw_files

if [ -f $CIRCUIT_TESTBENCH ]
then
    echo "==== CIRCUIT TESTBENCH ===="
    cd $TESTBENCH
    ngspice -b cir_tb.spice -r $COMMAND_PATH/$run_folder/raw_files/pll_int.raw
    python3 $CONVERT_RAW_TESTBENCH $COMMAND_PATH/$run_folder
    echo $COMMAND_PATH/$run_folder
    cp -r $COMMAND_PATH/$run_folder/images    $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/csv_files $RESULT_IMAGES_TESTBENCH
    
else
    echo "==== CIRCUIT TESTBENCH doesn't exist, please recheck ===="
fi
