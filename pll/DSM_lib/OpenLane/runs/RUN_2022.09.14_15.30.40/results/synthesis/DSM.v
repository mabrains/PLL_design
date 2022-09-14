/* Generated by Yosys 0.21 (git sha1 e6d2a900a, gcc 11.2.0-19ubuntu1 -fPIC -Os) */

module DSM(In_Data, Clk, reset, Out_Data);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  input Clk;
  wire Clk;
  wire DCout3;
  input [6:0] In_Data;
  wire [6:0] In_Data;
  output [4:0] Out_Data;
  wire [4:0] Out_Data;
  input reset;
  wire reset;
  wire \u1.Out_Data[0] ;
  wire \u1.Out_Data[1] ;
  wire \u1.Out_Data[2] ;
  wire \u1.Out_Data[3] ;
  wire \u1.Out_Data[4] ;
  wire \u1.Out_Data[5] ;
  wire \u1.Out_Data[6] ;
  wire \u1.Sum[0] ;
  wire \u1.Sum[1] ;
  wire \u1.Sum[2] ;
  wire \u1.Sum[3] ;
  wire \u1.Sum[4] ;
  wire \u1.Sum[5] ;
  wire \u1.Sum[6] ;
  wire \u2.Out_Data[0] ;
  wire \u2.Out_Data[1] ;
  wire \u2.Out_Data[2] ;
  wire \u2.Out_Data[3] ;
  wire \u2.Out_Data[4] ;
  wire \u2.Out_Data[5] ;
  wire \u2.Out_Data[6] ;
  wire \u2.Sum[0] ;
  wire \u2.Sum[1] ;
  wire \u2.Sum[2] ;
  wire \u2.Sum[3] ;
  wire \u2.Sum[4] ;
  wire \u2.Sum[5] ;
  wire \u2.Sum[6] ;
  wire \u3.Cout ;
  wire \u3.Out_Data[0] ;
  wire \u3.Out_Data[1] ;
  wire \u3.Out_Data[2] ;
  wire \u3.Out_Data[3] ;
  wire \u3.Out_Data[4] ;
  wire \u3.Out_Data[5] ;
  wire \u3.Out_Data[6] ;
  wire \u3.Sum[0] ;
  wire \u3.Sum[1] ;
  wire \u3.Sum[2] ;
  wire \u3.Sum[3] ;
  wire \u3.Sum[4] ;
  wire \u3.Sum[5] ;
  wire \u3.Sum[6] ;
  wire \u4.Out_Data[0] ;
  wire \u4.Out_Data[1] ;
  wire \u4.Out_Data[2] ;
  wire \u5.Data3[0] ;
  wire \u5.Data3[1] ;
  wire \u5.Data3[2] ;
  sky130_fd_sc_hd__nor2_2 _109_ (
    .A(\u3.Out_Data[6] ),
    .B(\u2.Out_Data[6] ),
    .Y(_073_)
  );
  sky130_fd_sc_hd__nor2_2 _110_ (
    .A(\u3.Out_Data[5] ),
    .B(\u2.Out_Data[5] ),
    .Y(_074_)
  );
  sky130_fd_sc_hd__nand2_2 _111_ (
    .A(\u3.Out_Data[4] ),
    .B(\u2.Out_Data[4] ),
    .Y(_075_)
  );
  sky130_fd_sc_hd__or2_2 _112_ (
    .A(\u3.Out_Data[4] ),
    .B(\u2.Out_Data[4] ),
    .X(_076_)
  );
  sky130_fd_sc_hd__nand2_2 _113_ (
    .A(_075_),
    .B(_076_),
    .Y(_077_)
  );
  sky130_fd_sc_hd__nor2_2 _114_ (
    .A(\u3.Out_Data[3] ),
    .B(\u2.Out_Data[3] ),
    .Y(_078_)
  );
  sky130_fd_sc_hd__and2_2 _115_ (
    .A(\u3.Out_Data[2] ),
    .B(\u2.Out_Data[2] ),
    .X(_079_)
  );
  sky130_fd_sc_hd__nor2_2 _116_ (
    .A(\u3.Out_Data[2] ),
    .B(\u2.Out_Data[2] ),
    .Y(_080_)
  );
  sky130_fd_sc_hd__nor2_2 _117_ (
    .A(_079_),
    .B(_080_),
    .Y(_081_)
  );
  sky130_fd_sc_hd__nand2_2 _118_ (
    .A(\u3.Out_Data[0] ),
    .B(\u2.Out_Data[0] ),
    .Y(_082_)
  );
  sky130_fd_sc_hd__nor2_2 _119_ (
    .A(\u3.Out_Data[1] ),
    .B(\u2.Out_Data[1] ),
    .Y(_083_)
  );
  sky130_fd_sc_hd__and2_2 _120_ (
    .A(\u3.Out_Data[1] ),
    .B(\u2.Out_Data[1] ),
    .X(_084_)
  );
  sky130_fd_sc_hd__o21bai_2 _121_ (
    .A1(_082_),
    .A2(_083_),
    .B1_N(_084_),
    .Y(_085_)
  );
  sky130_fd_sc_hd__and2_2 _122_ (
    .A(\u3.Out_Data[3] ),
    .B(\u2.Out_Data[3] ),
    .X(_086_)
  );
  sky130_fd_sc_hd__a211oi_2 _123_ (
    .A1(_081_),
    .A2(_085_),
    .B1(_086_),
    .C1(_079_),
    .Y(_087_)
  );
  sky130_fd_sc_hd__nand2_2 _124_ (
    .A(\u3.Out_Data[5] ),
    .B(\u2.Out_Data[5] ),
    .Y(_088_)
  );
  sky130_fd_sc_hd__o311a_2 _125_ (
    .A1(_077_),
    .A2(_078_),
    .A3(_087_),
    .B1(_088_),
    .C1(_075_),
    .X(_089_)
  );
  sky130_fd_sc_hd__nand2_2 _126_ (
    .A(\u3.Out_Data[6] ),
    .B(\u2.Out_Data[6] ),
    .Y(_090_)
  );
  sky130_fd_sc_hd__o31a_2 _127_ (
    .A1(_073_),
    .A2(_074_),
    .A3(_089_),
    .B1(_090_),
    .X(_091_)
  );
  sky130_fd_sc_hd__inv_2 _128_ (
    .A(_091_),
    .Y(\u3.Cout )
  );
  sky130_fd_sc_hd__or2_2 _129_ (
    .A(\u2.Out_Data[6] ),
    .B(\u1.Out_Data[6] ),
    .X(_092_)
  );
  sky130_fd_sc_hd__inv_2 _130_ (
    .A(_092_),
    .Y(_093_)
  );
  sky130_fd_sc_hd__nor2_2 _131_ (
    .A(\u2.Out_Data[5] ),
    .B(\u1.Out_Data[5] ),
    .Y(_094_)
  );
  sky130_fd_sc_hd__nand2_2 _132_ (
    .A(\u2.Out_Data[4] ),
    .B(\u1.Out_Data[4] ),
    .Y(_095_)
  );
  sky130_fd_sc_hd__or2_2 _133_ (
    .A(\u2.Out_Data[4] ),
    .B(\u1.Out_Data[4] ),
    .X(_096_)
  );
  sky130_fd_sc_hd__nand2_2 _134_ (
    .A(_095_),
    .B(_096_),
    .Y(_097_)
  );
  sky130_fd_sc_hd__nor2_2 _135_ (
    .A(\u2.Out_Data[3] ),
    .B(\u1.Out_Data[3] ),
    .Y(_098_)
  );
  sky130_fd_sc_hd__and2_2 _136_ (
    .A(\u2.Out_Data[2] ),
    .B(\u1.Out_Data[2] ),
    .X(_099_)
  );
  sky130_fd_sc_hd__nor2_2 _137_ (
    .A(\u2.Out_Data[2] ),
    .B(\u1.Out_Data[2] ),
    .Y(_100_)
  );
  sky130_fd_sc_hd__nor2_2 _138_ (
    .A(_099_),
    .B(_100_),
    .Y(_101_)
  );
  sky130_fd_sc_hd__nand2_2 _139_ (
    .A(\u2.Out_Data[0] ),
    .B(\u1.Out_Data[0] ),
    .Y(_102_)
  );
  sky130_fd_sc_hd__nor2_2 _140_ (
    .A(\u2.Out_Data[1] ),
    .B(\u1.Out_Data[1] ),
    .Y(_103_)
  );
  sky130_fd_sc_hd__and2_2 _141_ (
    .A(\u2.Out_Data[1] ),
    .B(\u1.Out_Data[1] ),
    .X(_104_)
  );
  sky130_fd_sc_hd__o21bai_2 _142_ (
    .A1(_102_),
    .A2(_103_),
    .B1_N(_104_),
    .Y(_105_)
  );
  sky130_fd_sc_hd__and2_2 _143_ (
    .A(\u2.Out_Data[3] ),
    .B(\u1.Out_Data[3] ),
    .X(_106_)
  );
  sky130_fd_sc_hd__a211oi_2 _144_ (
    .A1(_101_),
    .A2(_105_),
    .B1(_106_),
    .C1(_099_),
    .Y(_107_)
  );
  sky130_fd_sc_hd__nand2_2 _145_ (
    .A(\u2.Out_Data[5] ),
    .B(\u1.Out_Data[5] ),
    .Y(_108_)
  );
  sky130_fd_sc_hd__o311a_2 _146_ (
    .A1(_097_),
    .A2(_098_),
    .A3(_107_),
    .B1(_108_),
    .C1(_095_),
    .X(_000_)
  );
  sky130_fd_sc_hd__nand2_2 _147_ (
    .A(\u2.Out_Data[6] ),
    .B(\u1.Out_Data[6] ),
    .Y(_001_)
  );
  sky130_fd_sc_hd__o31a_2 _148_ (
    .A1(_093_),
    .A2(_094_),
    .A3(_000_),
    .B1(_001_),
    .X(_002_)
  );
  sky130_fd_sc_hd__nand3_2 _149_ (
    .A(DCout3),
    .B(_091_),
    .C(_002_),
    .Y(_003_)
  );
  sky130_fd_sc_hd__inv_2 _150_ (
    .A(_003_),
    .Y(\u4.Out_Data[2] )
  );
  sky130_fd_sc_hd__xnor2_2 _151_ (
    .A(\u3.Cout ),
    .B(_002_),
    .Y(_004_)
  );
  sky130_fd_sc_hd__xnor2_2 _152_ (
    .A(DCout3),
    .B(_004_),
    .Y(_005_)
  );
  sky130_fd_sc_hd__inv_2 _153_ (
    .A(_005_),
    .Y(\u4.Out_Data[0] )
  );
  sky130_fd_sc_hd__nor2_2 _154_ (
    .A(_104_),
    .B(_103_),
    .Y(_006_)
  );
  sky130_fd_sc_hd__xnor2_2 _155_ (
    .A(_102_),
    .B(_006_),
    .Y(\u2.Sum[1] )
  );
  sky130_fd_sc_hd__xor2_2 _156_ (
    .A(_101_),
    .B(_105_),
    .X(\u2.Sum[2] )
  );
  sky130_fd_sc_hd__nor2_2 _157_ (
    .A(_098_),
    .B(_106_),
    .Y(_007_)
  );
  sky130_fd_sc_hd__a21oi_2 _158_ (
    .A1(_101_),
    .A2(_105_),
    .B1(_099_),
    .Y(_008_)
  );
  sky130_fd_sc_hd__xnor2_2 _159_ (
    .A(_007_),
    .B(_008_),
    .Y(\u2.Sum[3] )
  );
  sky130_fd_sc_hd__nor2_2 _160_ (
    .A(_098_),
    .B(_107_),
    .Y(_009_)
  );
  sky130_fd_sc_hd__xnor2_2 _161_ (
    .A(_097_),
    .B(_009_),
    .Y(\u2.Sum[4] )
  );
  sky130_fd_sc_hd__or2b_2 _162_ (
    .A(_094_),
    .B_N(_108_),
    .X(_010_)
  );
  sky130_fd_sc_hd__o31a_2 _163_ (
    .A1(_097_),
    .A2(_098_),
    .A3(_107_),
    .B1(_095_),
    .X(_011_)
  );
  sky130_fd_sc_hd__xor2_2 _164_ (
    .A(_010_),
    .B(_011_),
    .X(\u2.Sum[5] )
  );
  sky130_fd_sc_hd__and2_2 _165_ (
    .A(_001_),
    .B(_092_),
    .X(_012_)
  );
  sky130_fd_sc_hd__or2_2 _166_ (
    .A(_094_),
    .B(_000_),
    .X(_013_)
  );
  sky130_fd_sc_hd__xnor2_2 _167_ (
    .A(_012_),
    .B(_013_),
    .Y(\u2.Sum[6] )
  );
  sky130_fd_sc_hd__or2_2 _168_ (
    .A(\u2.Out_Data[0] ),
    .B(\u1.Out_Data[0] ),
    .X(_014_)
  );
  sky130_fd_sc_hd__and2_2 _169_ (
    .A(_102_),
    .B(_014_),
    .X(_015_)
  );
  sky130_fd_sc_hd__buf_1 _170_ (
    .A(_015_),
    .X(\u2.Sum[0] )
  );
  sky130_fd_sc_hd__nor2_2 _171_ (
    .A(_084_),
    .B(_083_),
    .Y(_016_)
  );
  sky130_fd_sc_hd__xnor2_2 _172_ (
    .A(_082_),
    .B(_016_),
    .Y(\u3.Sum[1] )
  );
  sky130_fd_sc_hd__xor2_2 _173_ (
    .A(_081_),
    .B(_085_),
    .X(\u3.Sum[2] )
  );
  sky130_fd_sc_hd__nor2_2 _174_ (
    .A(_078_),
    .B(_086_),
    .Y(_017_)
  );
  sky130_fd_sc_hd__a21oi_2 _175_ (
    .A1(_081_),
    .A2(_085_),
    .B1(_079_),
    .Y(_018_)
  );
  sky130_fd_sc_hd__xnor2_2 _176_ (
    .A(_017_),
    .B(_018_),
    .Y(\u3.Sum[3] )
  );
  sky130_fd_sc_hd__nor2_2 _177_ (
    .A(_078_),
    .B(_087_),
    .Y(_019_)
  );
  sky130_fd_sc_hd__xnor2_2 _178_ (
    .A(_077_),
    .B(_019_),
    .Y(\u3.Sum[4] )
  );
  sky130_fd_sc_hd__and2b_2 _179_ (
    .A_N(_074_),
    .B(_088_),
    .X(_020_)
  );
  sky130_fd_sc_hd__o31a_2 _180_ (
    .A1(_077_),
    .A2(_078_),
    .A3(_087_),
    .B1(_075_),
    .X(_021_)
  );
  sky130_fd_sc_hd__xnor2_2 _181_ (
    .A(_020_),
    .B(_021_),
    .Y(\u3.Sum[5] )
  );
  sky130_fd_sc_hd__or2_2 _182_ (
    .A(\u3.Out_Data[6] ),
    .B(\u2.Out_Data[6] ),
    .X(_022_)
  );
  sky130_fd_sc_hd__nand2_2 _183_ (
    .A(_090_),
    .B(_022_),
    .Y(_023_)
  );
  sky130_fd_sc_hd__nor2_2 _184_ (
    .A(_074_),
    .B(_089_),
    .Y(_024_)
  );
  sky130_fd_sc_hd__xnor2_2 _185_ (
    .A(_023_),
    .B(_024_),
    .Y(\u3.Sum[6] )
  );
  sky130_fd_sc_hd__or2_2 _186_ (
    .A(\u3.Out_Data[0] ),
    .B(\u2.Out_Data[0] ),
    .X(_025_)
  );
  sky130_fd_sc_hd__and2_2 _187_ (
    .A(_082_),
    .B(_025_),
    .X(_026_)
  );
  sky130_fd_sc_hd__buf_1 _188_ (
    .A(_026_),
    .X(\u3.Sum[0] )
  );
  sky130_fd_sc_hd__or3_2 _189_ (
    .A(DCout3),
    .B(_091_),
    .C(_002_),
    .X(_027_)
  );
  sky130_fd_sc_hd__nand2_2 _190_ (
    .A(_003_),
    .B(_027_),
    .Y(\u4.Out_Data[1] )
  );
  sky130_fd_sc_hd__nand2_2 _191_ (
    .A(\u1.Out_Data[0] ),
    .B(In_Data[0]),
    .Y(_028_)
  );
  sky130_fd_sc_hd__xor2_2 _192_ (
    .A(\u1.Out_Data[1] ),
    .B(In_Data[1]),
    .X(_029_)
  );
  sky130_fd_sc_hd__xnor2_2 _193_ (
    .A(_028_),
    .B(_029_),
    .Y(\u1.Sum[1] )
  );
  sky130_fd_sc_hd__and2_2 _194_ (
    .A(\u1.Out_Data[1] ),
    .B(In_Data[1]),
    .X(_030_)
  );
  sky130_fd_sc_hd__a31oi_2 _195_ (
    .A1(\u1.Out_Data[0] ),
    .A2(In_Data[0]),
    .A3(_029_),
    .B1(_030_),
    .Y(_031_)
  );
  sky130_fd_sc_hd__nor2_2 _196_ (
    .A(\u1.Out_Data[2] ),
    .B(In_Data[2]),
    .Y(_032_)
  );
  sky130_fd_sc_hd__nand2_2 _197_ (
    .A(\u1.Out_Data[2] ),
    .B(In_Data[2]),
    .Y(_033_)
  );
  sky130_fd_sc_hd__and2b_2 _198_ (
    .A_N(_032_),
    .B(_033_),
    .X(_034_)
  );
  sky130_fd_sc_hd__xnor2_2 _199_ (
    .A(_031_),
    .B(_034_),
    .Y(\u1.Sum[2] )
  );
  sky130_fd_sc_hd__or2_2 _200_ (
    .A(\u1.Out_Data[3] ),
    .B(In_Data[3]),
    .X(_035_)
  );
  sky130_fd_sc_hd__nand2_2 _201_ (
    .A(\u1.Out_Data[3] ),
    .B(In_Data[3]),
    .Y(_036_)
  );
  sky130_fd_sc_hd__nand2_2 _202_ (
    .A(_035_),
    .B(_036_),
    .Y(_037_)
  );
  sky130_fd_sc_hd__o21ai_2 _203_ (
    .A1(_031_),
    .A2(_032_),
    .B1(_033_),
    .Y(_038_)
  );
  sky130_fd_sc_hd__xnor2_2 _204_ (
    .A(_037_),
    .B(_038_),
    .Y(\u1.Sum[3] )
  );
  sky130_fd_sc_hd__nor2_2 _205_ (
    .A(\u1.Out_Data[4] ),
    .B(In_Data[4]),
    .Y(_039_)
  );
  sky130_fd_sc_hd__nand2_2 _206_ (
    .A(\u1.Out_Data[4] ),
    .B(In_Data[4]),
    .Y(_040_)
  );
  sky130_fd_sc_hd__and2b_2 _207_ (
    .A_N(_039_),
    .B(_040_),
    .X(_041_)
  );
  sky130_fd_sc_hd__a21boi_2 _208_ (
    .A1(_035_),
    .A2(_038_),
    .B1_N(_036_),
    .Y(_042_)
  );
  sky130_fd_sc_hd__xnor2_2 _209_ (
    .A(_041_),
    .B(_042_),
    .Y(\u1.Sum[4] )
  );
  sky130_fd_sc_hd__or2_2 _210_ (
    .A(\u1.Out_Data[5] ),
    .B(In_Data[5]),
    .X(_043_)
  );
  sky130_fd_sc_hd__nand2_2 _211_ (
    .A(\u1.Out_Data[5] ),
    .B(In_Data[5]),
    .Y(_044_)
  );
  sky130_fd_sc_hd__nand2_2 _212_ (
    .A(_043_),
    .B(_044_),
    .Y(_045_)
  );
  sky130_fd_sc_hd__o21ai_2 _213_ (
    .A1(_039_),
    .A2(_042_),
    .B1(_040_),
    .Y(_046_)
  );
  sky130_fd_sc_hd__xnor2_2 _214_ (
    .A(_045_),
    .B(_046_),
    .Y(\u1.Sum[5] )
  );
  sky130_fd_sc_hd__nor2_2 _215_ (
    .A(\u1.Out_Data[6] ),
    .B(In_Data[6]),
    .Y(_047_)
  );
  sky130_fd_sc_hd__and2_2 _216_ (
    .A(\u1.Out_Data[6] ),
    .B(In_Data[6]),
    .X(_048_)
  );
  sky130_fd_sc_hd__nor2_2 _217_ (
    .A(_047_),
    .B(_048_),
    .Y(_049_)
  );
  sky130_fd_sc_hd__a21o_2 _218_ (
    .A1(\u1.Out_Data[5] ),
    .A2(In_Data[5]),
    .B1(_046_),
    .X(_050_)
  );
  sky130_fd_sc_hd__nand2_2 _219_ (
    .A(_043_),
    .B(_050_),
    .Y(_051_)
  );
  sky130_fd_sc_hd__xnor2_2 _220_ (
    .A(_049_),
    .B(_051_),
    .Y(\u1.Sum[6] )
  );
  sky130_fd_sc_hd__or2_2 _221_ (
    .A(\u1.Out_Data[0] ),
    .B(In_Data[0]),
    .X(_052_)
  );
  sky130_fd_sc_hd__and2_2 _222_ (
    .A(_028_),
    .B(_052_),
    .X(_053_)
  );
  sky130_fd_sc_hd__buf_1 _223_ (
    .A(_053_),
    .X(\u1.Sum[0] )
  );
  sky130_fd_sc_hd__a31oi_2 _224_ (
    .A1(_043_),
    .A2(_049_),
    .A3(_050_),
    .B1(_048_),
    .Y(_054_)
  );
  sky130_fd_sc_hd__inv_2 _225_ (
    .A(_054_),
    .Y(_055_)
  );
  sky130_fd_sc_hd__xnor2_2 _226_ (
    .A(\u5.Data3[0] ),
    .B(_005_),
    .Y(_056_)
  );
  sky130_fd_sc_hd__nand2_2 _227_ (
    .A(_055_),
    .B(_056_),
    .Y(_057_)
  );
  sky130_fd_sc_hd__a21oi_2 _228_ (
    .A1(_003_),
    .A2(_027_),
    .B1(\u5.Data3[1] ),
    .Y(_058_)
  );
  sky130_fd_sc_hd__and3_2 _229_ (
    .A(\u5.Data3[1] ),
    .B(_003_),
    .C(_027_),
    .X(_059_)
  );
  sky130_fd_sc_hd__o211a_2 _230_ (
    .A1(_058_),
    .A2(_059_),
    .B1(\u5.Data3[0] ),
    .C1(_005_),
    .X(_060_)
  );
  sky130_fd_sc_hd__a211oi_2 _231_ (
    .A1(\u5.Data3[0] ),
    .A2(_005_),
    .B1(_058_),
    .C1(_059_),
    .Y(_061_)
  );
  sky130_fd_sc_hd__nor2_2 _232_ (
    .A(_060_),
    .B(_061_),
    .Y(_062_)
  );
  sky130_fd_sc_hd__xnor2_2 _233_ (
    .A(_057_),
    .B(_062_),
    .Y(Out_Data[1])
  );
  sky130_fd_sc_hd__xor2_2 _234_ (
    .A(\u5.Data3[2] ),
    .B(_003_),
    .X(_063_)
  );
  sky130_fd_sc_hd__and2_2 _235_ (
    .A(_058_),
    .B(_063_),
    .X(_064_)
  );
  sky130_fd_sc_hd__nor2_2 _236_ (
    .A(_058_),
    .B(_063_),
    .Y(_065_)
  );
  sky130_fd_sc_hd__nor2_2 _237_ (
    .A(_064_),
    .B(_065_),
    .Y(_066_)
  );
  sky130_fd_sc_hd__o211ai_2 _238_ (
    .A1(_058_),
    .A2(_059_),
    .B1(\u5.Data3[0] ),
    .C1(_005_),
    .Y(_067_)
  );
  sky130_fd_sc_hd__a31oi_2 _239_ (
    .A1(_055_),
    .A2(_056_),
    .A3(_067_),
    .B1(_061_),
    .Y(_068_)
  );
  sky130_fd_sc_hd__xnor2_2 _240_ (
    .A(_066_),
    .B(_068_),
    .Y(Out_Data[2])
  );
  sky130_fd_sc_hd__nand2_2 _241_ (
    .A(\u5.Data3[2] ),
    .B(_003_),
    .Y(_069_)
  );
  sky130_fd_sc_hd__nand2_2 _242_ (
    .A(_058_),
    .B(_063_),
    .Y(_070_)
  );
  sky130_fd_sc_hd__o211a_2 _243_ (
    .A1(_065_),
    .A2(_068_),
    .B1(_069_),
    .C1(_070_),
    .X(Out_Data[3])
  );
  sky130_fd_sc_hd__o211a_2 _244_ (
    .A1(_065_),
    .A2(_068_),
    .B1(_069_),
    .C1(_070_),
    .X(Out_Data[4])
  );
  sky130_fd_sc_hd__or2_2 _245_ (
    .A(_055_),
    .B(_056_),
    .X(_071_)
  );
  sky130_fd_sc_hd__and2_2 _246_ (
    .A(_057_),
    .B(_071_),
    .X(_072_)
  );
  sky130_fd_sc_hd__buf_1 _247_ (
    .A(_072_),
    .X(Out_Data[0])
  );
  sky130_fd_sc_hd__dfrtp_2 _248_ (
    .CLK(Clk),
    .D(\u4.Out_Data[0] ),
    .Q(\u5.Data3[0] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _249_ (
    .CLK(Clk),
    .D(\u4.Out_Data[1] ),
    .Q(\u5.Data3[1] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _250_ (
    .CLK(Clk),
    .D(\u4.Out_Data[2] ),
    .Q(\u5.Data3[2] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _251_ (
    .CLK(Clk),
    .D(\u1.Sum[0] ),
    .Q(\u1.Out_Data[0] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _252_ (
    .CLK(Clk),
    .D(\u1.Sum[1] ),
    .Q(\u1.Out_Data[1] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _253_ (
    .CLK(Clk),
    .D(\u1.Sum[2] ),
    .Q(\u1.Out_Data[2] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _254_ (
    .CLK(Clk),
    .D(\u1.Sum[3] ),
    .Q(\u1.Out_Data[3] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _255_ (
    .CLK(Clk),
    .D(\u1.Sum[4] ),
    .Q(\u1.Out_Data[4] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _256_ (
    .CLK(Clk),
    .D(\u1.Sum[5] ),
    .Q(\u1.Out_Data[5] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _257_ (
    .CLK(Clk),
    .D(\u1.Sum[6] ),
    .Q(\u1.Out_Data[6] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _258_ (
    .CLK(Clk),
    .D(\u2.Sum[0] ),
    .Q(\u2.Out_Data[0] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _259_ (
    .CLK(Clk),
    .D(\u2.Sum[1] ),
    .Q(\u2.Out_Data[1] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _260_ (
    .CLK(Clk),
    .D(\u2.Sum[2] ),
    .Q(\u2.Out_Data[2] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _261_ (
    .CLK(Clk),
    .D(\u2.Sum[3] ),
    .Q(\u2.Out_Data[3] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _262_ (
    .CLK(Clk),
    .D(\u2.Sum[4] ),
    .Q(\u2.Out_Data[4] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _263_ (
    .CLK(Clk),
    .D(\u2.Sum[5] ),
    .Q(\u2.Out_Data[5] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _264_ (
    .CLK(Clk),
    .D(\u2.Sum[6] ),
    .Q(\u2.Out_Data[6] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _265_ (
    .CLK(Clk),
    .D(\u3.Sum[0] ),
    .Q(\u3.Out_Data[0] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _266_ (
    .CLK(Clk),
    .D(\u3.Sum[1] ),
    .Q(\u3.Out_Data[1] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _267_ (
    .CLK(Clk),
    .D(\u3.Sum[2] ),
    .Q(\u3.Out_Data[2] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _268_ (
    .CLK(Clk),
    .D(\u3.Sum[3] ),
    .Q(\u3.Out_Data[3] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _269_ (
    .CLK(Clk),
    .D(\u3.Sum[4] ),
    .Q(\u3.Out_Data[4] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _270_ (
    .CLK(Clk),
    .D(\u3.Sum[5] ),
    .Q(\u3.Out_Data[5] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _271_ (
    .CLK(Clk),
    .D(\u3.Sum[6] ),
    .Q(\u3.Out_Data[6] ),
    .RESET_B(reset)
  );
  sky130_fd_sc_hd__dfrtp_2 _272_ (
    .CLK(Clk),
    .D(\u3.Cout ),
    .Q(DCout3),
    .RESET_B(reset)
  );
endmodule
