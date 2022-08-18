% c is the capacitors of the loop in Farads
% r is the resistors of the loop in Ohms
% ipump is the charge pump current in Amperes
% vco_gain is the VCO gain in Hertz/Volt
% fout is the output frequency in Hertz
% fref is the reference frequency in Hertz


f= logspace (2 ,11 ,10000) ;
w =2*pi*f;
%%%% PLL Parameters %%%
C1 = 268e-12;
C2 = 29.5e-12;
R1 = 12.5e3;
ipump = 100e-6;
vco_gain = 200e6;
fref = 10e6;
fout = 2.402e9;
% Conversion of parameters
Kpd = ipump/2/pi; % phase detector gain
Kvco = vco_gain*2*pi; % vco gain
N = fout/fref; %division ratio
% Filter Transfer Function
flt=(R1*C1*(1i*w)+1)./(R1*C1*C2*(1i*w).^2+(C1+C2)*(1i*w));
% VCO Transfer Function
Gvco = Kvco./(1i*w);
%%%%%%%%%%%%%%%%%%%%%%%

% Loop Transfer Functions
G = Kpd*Gvco.*flt; %forward gain
FB = 1/N; % feedback gain
OL = G*FB; %open loop gain
H = G./(1+OL); % closed loop gain

%plot closed loop Transfer function
figure 1;
semilogx(f,20*log10(abs(H)));
title('Closed-Loop Transfer Function');
grid ON;

%plot open loop Transfer function
figure 2;
semilogx(f,20*log10(abs(OL)));
title('Open-Loop Transfer Function');
grid ON;

%%%%%%%%%%%%%%%%%%%%%%%%%



%%%% ---Noise of each Source--- %%%%
%1- Reference Crystal:

nr= 10^( -140/10) ; % noise floor of reference
fc_ref = 10^3 *2* pi ; % corner frequency number 1
fc_ref2 = 10^5 *2* pi ; % corner frequency number 2
Sref = 10*log10(nr .*(1+( fc_ref2 ./ w).^2+( fc_ref ./ w).^3)) ; % reference phase
%Plot Crystal noise
figure 3;
semilogx (f, Sref);
title ('Crystal Phase Noise Model '); xlabel ('frequency (Hz)'); ylabel ('dBc/Hz ');
grid ON;


%2- N Divider

%% SDiv= nf_div(1 + fc/f^2 ) %%

nf_d = 10^( -14) ; % noise floor
fc_d = 5*10^5* 2* pi; % corner frequency
Sndiv =10*log10(nf_d .*(1 + fc_d ./ w));
%Plot Divider Noise
figure 4;
semilogx (f,Sndiv);
title ('Int N Divider Phase Noise Model'); ylabel ('dBc /Hz '); xlabel ('frequency (Hz)');
grid ON;


%3- VCO

%% Svco= n(1/f^2 + fc/f^3 ) %%

nv = 0.4;
fc_vco = (10^9) *2* pi ;
Svco =10*log10(nv .*(((1) ./(w) .^2) +( fc_vco ./(w) .^3) ));
%Plot VCO Noise
figure 5;
semilogx (f,Svco);
title ('VCO Phase Noise Model'); xlabel ('frequency (Hz)'); ylabel ('dBc/Hz ');
grid


%4- PFD&CHP Noise

nf = 160*10^ -24; % noise floor
nfd = 175* 10^ -24 ; % noise floor of down current
fc_cp = 1*10^6* 2* pi; % corner frequency
alpha1 = 0.005 ; % on time factor = reset time "0.5 ns" / reference time "100 ns"
alpha2 = 0.2 ; % on time factor of down current
ich1 = alpha1 .* nf .*(1 + alpha1 .* fc_cp ./ w) + alpha2 .* nfd .*(1 + alpha2 .* fc_cp ./ w);
% offset current phase noise
nf2 = 9*10^ -24; % noise floor of the offset current
ich2 = nf2 .*(1 + fc_cp ./w);
ich =10*log10(ich1 + ich2) ; % total current
%Plot CHP/PFD Noise
figure 6;
semilogx (f,ich);
title ('PFD/CHP Noise Model'); ylabel ('dBc /Hz'); xlabel ('frequency (Hz)');
grid ON;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% ---Noise of each contributer at the output--- %%%%

%%%% Crystal Phase Noise
PN_out_ref = Sref + 20*log10(abs(H));
%%%% Divider phase noise
PN_out_div = Sndiv + 20*log10(abs(H));
%%%% PFD & CP phase noise
PN_out_pfd = ich + 20*log10(abs(H./Kpd));
%%%% Loop Filter phase noise
%PN_out_filter = filter_n + 20*log10(abs(Gvco./(1+OL)));
%%%% VCO phase noise
PN_out_vco = Svco + 20*log10(abs(1./(1+OL)));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%Code still missing modeling of Sigma-Delta quantization noise, and Loop filter noise.
%%%% ---Total output phase noise--- %%%%

PN_out = 10*log10(10.^(PN_out_ref/10) + 10.^(PN_out_div/10) + 10.^(PN_out_pfd/10) + 10.^(PN_out_vco/10));
figure 7;
grid ON;
semilogx(f,PN_out_ref,f,PN_out_div, f,PN_out_pfd, f,PN_out_vco, f,PN_out);
p(1).LineWidth = 1.3;
grid on
legend('PN out ref','PN out div','PN out pfd/chp','PN out vco','PN Total out')
title('Output Phase Noise');
xlabel('Freq (Hz)');
ylabel('Phase Noise (dBc/Hz)');
axis([min(f),max(f),min(PN_out),max(PN_out_pfd)]);
axis 'auto y';
%%+10.^(PN_out_filter/10) f,PN_out_filter ,'PN out filter'  Filter noise that must be added to the total Noise.
