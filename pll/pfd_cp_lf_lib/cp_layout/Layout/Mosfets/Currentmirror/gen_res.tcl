#%% cd /foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/magic
#%%script bash -c "magic -dnull -noconsole -rcfile sky130A.magicrc /home/moataz/Desktop/Layout/Mosfets/Currentmirror/gen_res.tcl"
cellname rename (UNNAMED) res
sky130::sky130_fd_pr__res_iso_pw_draw {w 2.65 l 10 m 1 nx 1 wmin 0.1 lmin 0.1 \
rho 319.8 val 336.630 dummy 0 dw 0.0 term 194.82 \
sterm 0.0 caplen 0 guard 1 glc 1 grc 1 gtc 1 gbc 1 \
snake 0 full_metal 1 wmax 2.850 n_guard 0 hv_guard 0 vias 1 \
viagb 0 viagt 0 viagl 0 viagr 0}
gds write /home/moataz/Desktop/Layout/Mosfets/Currentmirror/res.gds
exit
