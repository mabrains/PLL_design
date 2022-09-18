# **PHASE NOISE CALCULATION FOR ANALOG CIRCUITS**  
This tool is used to calculate the phase noise for only the analog circuits at which the transistors mostly operate at only two regions, saturation and off states.
# **STEPS:**
1. clone this tool.
2. Put your spice file in the **spice_files** folder
3. Go back to the woeking space at which the **PN.sh** file is existing.
4. open the terminal at this working space and type the following command in the terminal `chmod 777 PN.sh`. Note that this command is performed only once and no need to do it again at all.
5. to simulate your circiut, you have to open the terminal at the same working space of the **PN.sh** file and fo the following command  
`./PN.sh <your_spice_file_name>.spice <output_expression> <tran_step_time> <tran_stop_time>`  
The following is an example:  
`./PN.sh CMOS_VCO_cct.spice vp-vn 0.01n 100n`
