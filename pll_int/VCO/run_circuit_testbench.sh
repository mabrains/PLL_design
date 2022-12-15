#!/bin/bash -f

export curr_date=`date`
export run_folder=`date +'run_%Y_%m_%d_%H_%M'`
echo "## Action time: $curr_date"

SCRIPT=$(realpath "$0")
COMMAND_PATH=$(dirname "$SCRIPT")

TESTBENCH="$COMMAND_PATH/testbench/"
CIRCUIT_TESTBENCH="$COMMAND_PATH/testbench/cir_tb.spice"
CIRCUIT_TESTBENCH_NAME="cir_tb.spice"
SET_ENVIRON_VAR_TESTBENCH="$COMMAND_PATH/testbench/scripts/analysis/set_environ_var.py"
RESULT_IMAGES_TESTBENCH="$COMMAND_PATH/results/circuit_tb_results"

mkdir -p $COMMAND_PATH/$run_folder
mkdir -p $COMMAND_PATH/$run_folder/spice_files

if [ -f $CIRCUIT_TESTBENCH ]
then
    echo "==== CIRCUIT TESTBENCH ===="
    cd $TESTBENCH
    python3 $SET_ENVIRON_VAR_TESTBENCH $TESTBENCH $CIRCUIT_TESTBENCH_NAME $COMMAND_PATH/$run_folder
    ngspice $COMMAND_PATH/$run_folder/spice_files/tb.spice
    echo $COMMAND_PATH/$run_folder
    cp -r $COMMAND_PATH/$run_folder/spice_files $RESULT_IMAGES_TESTBENCH
    
else
    echo "==== CIRCUIT TESTBENCH doesn't exist, please recheck ===="
fi