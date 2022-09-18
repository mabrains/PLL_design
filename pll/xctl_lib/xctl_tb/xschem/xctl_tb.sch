v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/code.sym} 810 -360 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 910 -480 0 0 {name=s1 only_toplevel=false value=".OP
.tran 2n 2u uic
.IC V(net2) = 0
.IC V(Vin) = 0
"
}
C {/home/farag/mabrains/pll_project/PLL_design/pll/xctl_lib/xctl/xschem/xctl.sym} 720 -430 0 0 {name=x1}
C {devices/noconn.sym} 770 -390 2 0 {name=l1}
C {devices/lab_pin.sym} 770 -390 1 0 {name=l2 sig_type=std_logic lab=Vout}
