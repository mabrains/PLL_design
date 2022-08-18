clear,clc
%VCO parameters
KVCO = 200e6;

%Charge Pump
I_CHP = 100e-6;

%Divider
N = 240.1;

%Loop filter parameters
PM = 55 * (pi/180);
wu = 2*pi* 0.15e6;
tau_p = (sec(PM) - tan(PM))/wu;
tau_z = 1/(wu^2 * tau_p);

wz = 1/tau_z;
wp = 1/tau_p;

Cp = (tau_p*I_CHP*KVCO)*sqrt((1+(wu*tau_z)^2)/(1+(wu*tau_p)^2))/(tau_z*wu^2*N); %Parallel Cap
Cz = Cp*(tau_z/tau_p -1); %Series Cap
Rz = tau_z/Cz; %Series Res