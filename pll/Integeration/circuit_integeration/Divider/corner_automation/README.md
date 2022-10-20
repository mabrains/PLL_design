# Fractional-N divider corners run automation

The library contains python script, spice file. The script is used to automate the corner analysis of the divider over the range from N=220 to N=255 reporting the behavior across 45 PVT variations.


PVT variations regarded in the simulation are:
- Process: SS, SF, FS, FF, tt
- Temp: -40, 27, 125
- Supply: 1.62, 1.8, 1.98

Corners are estimated to have about: 36(from variuos division ratios)* 45(PVT variations)= 1620 combination

The results from the simulation run are generated in the csv file attached to the lib, and they are filtered and analyzed in 
[Spread sheet](https://docs.google.com/spreadsheets/d/1kbMtVmUrruTHEZP0y8bEmfMWoGskHPC8XDWAPgiR3gQ/edit#gid=0)



