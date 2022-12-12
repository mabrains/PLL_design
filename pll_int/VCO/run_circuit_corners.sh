#!/bin/bash -f

export curr_date=`date`
export run_folder=`date +'run_%Y_%m_%d_%H_%M'`
echo "## Action time: $curr_date"

SCRIPT=$(realpath "$0")
COMMAND_PATH=$(dirname "$SCRIPT")

TESTBENCH="$COMMAND_PATH/testbench/"
CIRCUIT_TESTBENCH="$COMMAND_PATH/testbench/cir_tb_corner_temp.spice"
CIRCUIT_TESTBENCH_NAME="cir_tb_corner_temp.spice"
SET_ENVIRON_VAR_TESTBENCH="$COMMAND_PATH/testbench/scripts/analysis/set_environ_var.py"
RUN_CIRCUIT_CORNERS="$COMMAND_PATH/testbench/scripts/corners/run_corners.py"
RUN_PLOTTING_MEAS="$COMMAND_PATH/testbench/scripts/corners/plot_measurements.py"
RESULT_IMAGES_TESTBENCH="$COMMAND_PATH/results/circuit_results"

mkdir -p $COMMAND_PATH/$run_folder
mkdir -p $COMMAND_PATH/$run_folder/images
mkdir -p $COMMAND_PATH/$run_folder/csv_files
mkdir -p $COMMAND_PATH/$run_folder/raw_files
mkdir -p $COMMAND_PATH/$run_folder/spice_files

if [ -f $CIRCUIT_TESTBENCH ]
then
    echo "==== CIRCUIT TESTBENCH ===="
    cd $TESTBENCH
    cp -r $CIRCUIT_TESTBENCH $COMMAND_PATH/$run_folder/spice_files
    mv $COMMAND_PATH/$run_folder/spice_files/$CIRCUIT_TESTBENCH_NAME $COMMAND_PATH/$run_folder/spice_files/template_tb.spice
    python3 $RUN_CIRCUIT_CORNERS $COMMAND_PATH/$run_folder
    python3 $RUN_PLOTTING_MEAS $COMMAND_PATH/$run_folder
    echo $COMMAND_PATH/$run_folder
    cp -r $COMMAND_PATH/$run_folder/images    $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/csv_files $RESULT_IMAGES_TESTBENCH
    cp -r $COMMAND_PATH/$run_folder/spice_files $RESULT_IMAGES_TESTBENCH
    
else
    echo "==== CIRCUIT TESTBENCH doesn't exist, please recheck ===="
fi