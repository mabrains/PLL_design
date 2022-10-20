#!/usr/local/bin/tclsh

#%% cd /foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/magic
#%%script bash -c "magic -dnull -noconsole -rcfile sky130A.magicrc /home/moataz/Desktop/Layout/OTA/Pbias/gen_pfet_pattern.tcl"
cellname rename (UNNAMED) sky130_fd_pr__pfet_01v8
sky130::sky130_fd_pr__pfet_01v8_draw {w 4 l 0.6 m 1 nf 1 diffcov 100 polycov 100 \
        guard 0 glc 1 grc 1 gtc 1 gbc 1 tbcov 100 rlcov 100 \
        topc 1 botc 0 poverlap 0 doverlap 1 lmin 0.15 wmin 0.42 \
        compatible {sky130_fd_pr__pfet_01v8} \
        full_metal 1 viasrc 100 viadrn 100 viagate 100 \
        viagb 0 viagr 0 viagl 0 viagt 0}
#%%gds write /home/moataz/Desktop/Layout/OTA/Pbias
gds write /home/moataz/Desktop/Layout/OTA/Pbias/Pbias_OTA.gds
exit
