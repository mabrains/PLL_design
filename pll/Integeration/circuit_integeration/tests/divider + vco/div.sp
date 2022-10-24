** Test bench for VCO

.include ../subckts/vco_cir.ckt
.include ../subckts/biasing_cct.ckt 
.include ../subckts/inductor_model_cct.ckt
.include ../subckts/divider_cct.ckt

.param p0_val = 0
.param p1_val=  0
.param p2_val=  0
.param p3_val=  0
.param p4_val=  1
.param p5_val=  0
.param p6_val=  0
.param p7_val=  0

VDD1 p2 GND {p2_val}
VDD2 p4 GND {p4_val}
VDD3 p1 GND {p1_val}
VDD4 p3 GND {p3_val}
VDD5 p5 GND {p5_val}
VDD6 p6 GND {p6_val}
VDD7 p0 GND {p0_val}
VDD8 p7 GND {p7_val}

.lib /open_design_environment/foundry/pdks/skywaters/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.temp 27
.options tnom=27
VDD VDD GND DC 1.8
Vctrl vctrl GND DC 0.7
xvco vp vn vctrl ibias VDD GND vco
xind1 vp vn ind_model
xbgr ibias GND VDD BGR_Banba
xdiv VDD fout GND p2 p7 p1 p6 p5 p4 p3 p0 vp opennet1 divider
xdivdumyy VDD fdummy GND p2 p7 p1 p6 p5 p4 p3 p0 vn opennet divider
**** begin user architecture code

.control
    set wr_singlescale
    set wr_vecnames
    set appendwrite

    op
    save @m.xvco.xm4.msky130_fd_pr__pfet_01v8  
    save @m.xvco.xm11.msky130_fd_pr__pfet_01v8 
    save @m.xvco.xm1.msky130_fd_pr__pfet_01v8  
    save @m.xvco.xm2.msky130_fd_pr__nfet_01v8  

    ** biasing cct **
    save @m.xbgr.xm2.msky130_fd_pr__pfet_g5v0d10v5
    save @m.xbgr.xm13.msky130_fd_pr__pfet_g5v0d10v5
    save @m.xbgr.xm14.msky130_fd_pr__pfet_g5v0d10v5
    save @m.xbgr.xm15.msky130_fd_pr__pfet_g5v0d10v5
    save @m.xbgr.xm16.msky130_fd_pr__pfet_g5v0d10v5
    save @m.xbgr.xm17.msky130_fd_pr__pfet_g5v0d10v5
    save @m.xbgr.xm18.msky130_fd_pr__pfet_g5v0d10v5
    save @m.xbgr.xm19.msky130_fd_pr__nfet_g5v0d10v5
    save @m.xbgr.xm20.msky130_fd_pr__nfet_g5v0d10v5
    save @m.xbgr.xm21.msky130_fd_pr__nfet_g5v0d10v5
    save @m.xbgr.xm22.msky130_fd_pr__pfet_g5v0d10v5
    save @m.xbgr.xm23.msky130_fd_pr__nfet_g5v0d10v5
    save @m.xbgr.xm24.msky130_fd_pr__pfet_g5v0d10v5

    
    save all
    
    let I_tail  = @m.xvco.xm4.msky130_fd_pr__pfet_01v8[id]*1000
    let I_left  = @m.xvco.xm11.msky130_fd_pr__pfet_01v8[id]*1000
    let I_right = @m.xvco.xm1.msky130_fd_pr__pfet_01v8[id]*1000
    let gmn = @m.xvco.xm2.msky130_fd_pr__nfet_01v8[gm]*1000
    let gmp = @m.xvco.xm1.msky130_fd_pr__pfet_01v8[gm]*1000

    let tail_sat_check = @m.xvco.xm4.msky130_fd_pr__pfet_01v8[vds]-@m.xvco.xm4.msky130_fd_pr__pfet_01v8[vgs]+@m.xvco.xm4.msky130_fd_pr__pfet_01v8[vth]
    let nmos_sat_check = @m.xvco.xm2.msky130_fd_pr__nfet_01v8[vds]-@m.xvco.xm2.msky130_fd_pr__nfet_01v8[vgs]+@m.xvco.xm2.msky130_fd_pr__nfet_01v8[vth]
    let pmos_sat_check = @m.xvco.xm1.msky130_fd_pr__pfet_01v8[vds]-@m.xvco.xm1.msky130_fd_pr__pfet_01v8[vgs]+@m.xvco.xm1.msky130_fd_pr__pfet_01v8[vth]

    ** biasing cct **
    let bgr_tran_02_sat_check  = @m.xbgr.xm2.msky130_fd_pr__pfet_g5v0d10v5[vds]-@m.xbgr.xm2.msky130_fd_pr__pfet_g5v0d10v5[vgs] +@m.xbgr.xm2.msky130_fd_pr__pfet_g5v0d10v5[vth]
    let bgr_tran_13_sat_check = @m.xbgr.xm13.msky130_fd_pr__pfet_g5v0d10v5[vds]-@m.xbgr.xm13.msky130_fd_pr__pfet_g5v0d10v5[vgs]+@m.xbgr.xm13.msky130_fd_pr__pfet_g5v0d10v5[vth]
    let bgr_tran_14_sat_check = @m.xbgr.xm14.msky130_fd_pr__pfet_g5v0d10v5[vds]-@m.xbgr.xm14.msky130_fd_pr__pfet_g5v0d10v5[vgs]+@m.xbgr.xm14.msky130_fd_pr__pfet_g5v0d10v5[vth]
    let bgr_tran_15_sat_check = @m.xbgr.xm15.msky130_fd_pr__pfet_g5v0d10v5[vds]-@m.xbgr.xm15.msky130_fd_pr__pfet_g5v0d10v5[vgs]+@m.xbgr.xm15.msky130_fd_pr__pfet_g5v0d10v5[vth]
    let bgr_tran_16_sat_check = @m.xbgr.xm16.msky130_fd_pr__pfet_g5v0d10v5[vds]-@m.xbgr.xm16.msky130_fd_pr__pfet_g5v0d10v5[vgs]+@m.xbgr.xm16.msky130_fd_pr__pfet_g5v0d10v5[vth]
    let bgr_tran_17_sat_check = @m.xbgr.xm17.msky130_fd_pr__pfet_g5v0d10v5[vds]-@m.xbgr.xm17.msky130_fd_pr__pfet_g5v0d10v5[vgs]+@m.xbgr.xm17.msky130_fd_pr__pfet_g5v0d10v5[vth]
    let bgr_tran_18_sat_check = @m.xbgr.xm18.msky130_fd_pr__pfet_g5v0d10v5[vds]-@m.xbgr.xm18.msky130_fd_pr__pfet_g5v0d10v5[vgs]+@m.xbgr.xm18.msky130_fd_pr__pfet_g5v0d10v5[vth]
    let bgr_tran_19_sat_check = @m.xbgr.xm19.msky130_fd_pr__nfet_g5v0d10v5[vds]-@m.xbgr.xm19.msky130_fd_pr__nfet_g5v0d10v5[vgs]+@m.xbgr.xm19.msky130_fd_pr__nfet_g5v0d10v5[vth]
    let bgr_tran_20_sat_check = @m.xbgr.xm20.msky130_fd_pr__nfet_g5v0d10v5[vds]-@m.xbgr.xm20.msky130_fd_pr__nfet_g5v0d10v5[vgs]+@m.xbgr.xm20.msky130_fd_pr__nfet_g5v0d10v5[vth]
    let bgr_tran_21_sat_check = @m.xbgr.xm21.msky130_fd_pr__nfet_g5v0d10v5[vds]-@m.xbgr.xm21.msky130_fd_pr__nfet_g5v0d10v5[vgs]+@m.xbgr.xm21.msky130_fd_pr__nfet_g5v0d10v5[vth]
    let bgr_tran_22_sat_check = @m.xbgr.xm22.msky130_fd_pr__pfet_g5v0d10v5[vds]-@m.xbgr.xm22.msky130_fd_pr__pfet_g5v0d10v5[vgs]+@m.xbgr.xm22.msky130_fd_pr__pfet_g5v0d10v5[vth]
    let bgr_tran_23_sat_check = @m.xbgr.xm23.msky130_fd_pr__nfet_g5v0d10v5[vds]-@m.xbgr.xm23.msky130_fd_pr__nfet_g5v0d10v5[vgs]+@m.xbgr.xm23.msky130_fd_pr__nfet_g5v0d10v5[vth]
    let bgr_tran_24_sat_check = @m.xbgr.xm24.msky130_fd_pr__pfet_g5v0d10v5[vds]-@m.xbgr.xm24.msky130_fd_pr__pfet_g5v0d10v5[vgs]+@m.xbgr.xm24.msky130_fd_pr__pfet_g5v0d10v5[vth]
    
    print all

    tran 100ps 500ns
    *plot vp
    let vdiff = v(vp)-v(vn)
    let vdiff_max =  vecmax(vp-vn)
    print vdiff_max
    meas tran tperiod TRIG vdiff VAL=0.4 RISE=30 TARG vdiff VAL=0.4 RISE=31
    let freq = 1/(tperiod)
    meas tran tperiodf TRIG fout VAL=0.4 RISE=2 TARG fout VAL=0.4 RISE=3
    let freq_FB = 1/(tperiodf)
    print freq

    plot vp
    plot vdiff
    

.endc

.GLOBAL GND
.GLOBAL VDD
.end