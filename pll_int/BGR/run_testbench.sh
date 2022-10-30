#!/bin/bash -f

export curr_date=`date`
echo "## Action time: $curr_date"

SCRIPT=$(realpath "$0")
COMMAND_PATH=$(dirname "$SCRIPT")

TESTBENCH="$COMMAND_PATH/testbench/"
CIRCUIT_TESTBENCH="$COMMAND_PATH/testbench/cir_tb.spice"
PEX_TESTBENCH="$COMMAND_PATH/testbench/pex_tb.spice"
CORNERS_TESTBENCH="$COMMAND_PATH/testbench/scripts/corners/run_corners.py"
PLOTS="$COMMAND_PATH/testbench/scripts/corners/plot_measurements.py"

if [ -f $CIRCUIT_TESTBENCH ]
then
    echo "==== CIRCUIT TESTBENCH ===="
    cd $TESTBENCH && ngspice -b cir_tb.spice
else
    echo "==== CIRCUIT TESTBENCH doesn't exist, please recheck ===="
fi

if [ -f $PEX_TESTBENCH ]
then
    echo "==== PEX TESTBENCH ===="
    cd $TESTBENCH && ngspice -b pex_tb.spice
else
    echo "==== PEX TESTBENCH doesn't exist, please recheck ===="
fi

if [ -f $CORNERS_TESTBENCH ]
then
    echo "==== CORNERS TESTBENCH ===="
    ngspice -b $CORNERS_TESTBENCH
else
    echo "==== CORNERS TESTBENCH doesn't exist, please recheck ===="
fi

if [ -f $CORNERS_TESTBENCH ]
then
    echo "==== PLOTS ===="
    ngspice -b $PLOTS
else
    echo "==== MEASUREMENT PLOTS doesn't exist, please recheck ===="
fi