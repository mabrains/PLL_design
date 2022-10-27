###############################################################################
# Created by write_sdc
# Sun Oct  2 17:39:13 2022
###############################################################################
current_design DSM
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 100.0000 
set_clock_uncertainty 0.2500 clk
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Clk}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[0]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[10]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[11]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[12]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[13]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[14]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[15]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[16]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[17]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[18]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[19]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[1]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[20]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[21]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[22]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[23]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[2]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[3]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[4]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[5]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[6]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[7]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[8]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[9]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[0]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[1]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[2]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[3]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[4]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {Out_Data[4]}]
set_load -pin_load 0.0334 [get_ports {Out_Data[3]}]
set_load -pin_load 0.0334 [get_ports {Out_Data[2]}]
set_load -pin_load 0.0334 [get_ports {Out_Data[1]}]
set_load -pin_load 0.0334 [get_ports {Out_Data[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {Clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {In_Data[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
