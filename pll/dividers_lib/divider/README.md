# Fractional-N divider corner analysis

Division ratio varies from 240 to 250 since the output frequency varies from 2.4 GHZ to 2.5 GHZ with reference crystal 10 MHZ.
Therefore, corner simulation results are captured at N=240.


In order to divide by 240, Tout must equal 240*Tin. If we apply the next sequence: P7 P6 P5 P4 P3 P2 P1 P0
to be 00010000
We can get Tout= (256 - 0 * 128 - 0 * 64  - 0 * 32 - 1 * 16 - 0 * 8 - 0 * 4 - 0 * 2 - 0 * 1) Tin = 240 Tin.

The Testbench is depicted here:

![output signal](images/divider_tb.png)

Corners are automated by a batch file attached to the simulation files.


It is important to declare that output frequency (fout) is 10 MHZ or 0.1us period(in time domain).
Next table shows the output frequency at specific corners. Log files are attached to the simulation files also.

|            |  FF             |   SS          |    tt           |
|------------|-----------------|---------------|-----------------|
| temp=-40   |      1.00000e+07|   6.66667e+06 |      1.00000e+07|
|    temp=125|     1.00000e+07 |    7.27272e+06|      1.00000e+07|
|     temp=27|   1.00000e+07   |   7.25076e+06 |  1.00000e+07    |