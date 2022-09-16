###############################################################################
# Created by write_sdc
# Wed Sep 14 15:30:43 2022
###############################################################################
current_design DSM
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 25.0000 
set_clock_uncertainty 0.2500 clk
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Clk}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[0]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[1]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[2]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[3]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[4]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[5]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {In_Data[6]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[0]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[1]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[2]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[3]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Out_Data[4]}]
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
set_max_fanout 8.0000 [current_design]
