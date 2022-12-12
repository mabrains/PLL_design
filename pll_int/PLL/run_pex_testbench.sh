#!/bin/bash -f

export curr_date=`date`
export run_folder=`date +'run_%Y_%m_%d_%H_%M'`
echo "## Action time: $curr_date"

SCRIPT=$(realpath "$0")
COMMAND_PATH=$(dirname "$SCRIPT")

TESTBENCH="$COMMAND_PATH/testbench/"
PEX_TESTBENCH="$COMMAND_PATH/testbench/pex_tb.spice"
PEX_TESTBENCH_NAME="pex_tb.spice"
CONVERT_RAW_TESTBENCH="$COMMAND_PATH/testbench/scripts/analysis/convert_raw.py"
SET_ENVIRON_VAR_TESTBENCH="$COMMAND_PATH/testbench/scripts/analysis/set_environ_var.py"
RESULT_IMAGES_TESTBENCH="$COMMAND_PATH/results/pex_results"

mkdir -p $COMMAND_PATH/$run_folder
mkdir -p $COMMAND_PATH/$run_folder/images
mkdir -p $COMMAND_PATH/$run_folder/csv_files
mkdir -p $COMMAND_PATH/$run_folder/raw_files
mkdir -p $COMMAND_PATH/$run_folder/spice_files

if [ -f $PEX_TESTBENCH ]
then
    echo "==== PEX TESTBENCH ===="
    cd $TESTBENCH
    python3 $SET_ENVIRON_VAR_TESTBENCH $TESTBENCH $PEX_TESTBENCH_NAME $COMMAND_PATH/$run_folder
    ngspice -b $COMMAND_PATH/$run_folder/spice_files/tb.spice -r $COMMAND_PATH/$run_folder/raw_files/pll_int.raw
    python3 $CONVERT_RAW_TESTBENCH $COMMAND_PATH/$run_folder
    echo $COMMAND_PATH/$run_folder
    cp -r $COMMAND_PATH/$run_folder/images    $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/csv_files $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/spice_files $RESULT_IMAGES_TESTBENCH
    
else
    echo "==== PEX TESTBENCH doesn't exist, please recheck ===="
fi