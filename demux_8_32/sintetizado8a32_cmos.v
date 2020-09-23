/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "sintetizado8a32_cmos.v:1" *)
module sintetizado8a32_cmos(clk_4f, data_in, valid, reset, data_out_estructural, valid_out_estructural);
  (* src = "sintetizado8a32_cmos.v:10" *)
  wire [31:0] _000_;
  (* src = "sintetizado8a32_cmos.v:10" *)
  wire [1:0] _001_;
  (* src = "sintetizado8a32_cmos.v:10" *)
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
  (* src = "sintetizado8a32_cmos.v:1" *)
  input clk_4f;
  (* src = "sintetizado8a32_cmos.v:2" *)
  input [7:0] data_in;
  (* src = "sintetizado8a32_cmos.v:5" *)
  output [31:0] data_out_estructural;
  (* src = "sintetizado8a32_cmos.v:4" *)
  input reset;
  (* src = "sintetizado8a32_cmos.v:8" *)
  wire [1:0] selector;
  (* src = "sintetizado8a32_cmos.v:3" *)
  input valid;
  (* src = "sintetizado8a32_cmos.v:6" *)
  output valid_out_estructural;
  NOT _081_ (
    .A(selector[0]),
    .Y(_067_)
  );
  NOT _082_ (
    .A(selector[1]),
    .Y(_068_)
  );
  NAND _083_ (
    .A(valid),
    .B(reset),
    .Y(_069_)
  );
  NOT _084_ (
    .A(_069_),
    .Y(_002_)
  );
  NOR _085_ (
    .A(selector[0]),
    .B(_069_),
    .Y(_001_[0])
  );
  NOT _086_ (
    .A(_001_[0]),
    .Y(_070_)
  );
  NOR _087_ (
    .A(_068_),
    .B(_070_),
    .Y(_071_)
  );
  NAND _088_ (
    .A(selector[1]),
    .B(_001_[0]),
    .Y(_072_)
  );
  NAND _089_ (
    .A(data_in[0]),
    .B(_071_),
    .Y(_073_)
  );
  NAND _090_ (
    .A(data_out_estructural[8]),
    .B(_072_),
    .Y(_074_)
  );
  NAND _091_ (
    .A(_073_),
    .B(_074_),
    .Y(_000_[8])
  );
  NAND _092_ (
    .A(data_in[1]),
    .B(_071_),
    .Y(_075_)
  );
  NAND _093_ (
    .A(data_out_estructural[9]),
    .B(_072_),
    .Y(_076_)
  );
  NAND _094_ (
    .A(_075_),
    .B(_076_),
    .Y(_000_[9])
  );
  NAND _095_ (
    .A(data_in[2]),
    .B(_071_),
    .Y(_077_)
  );
  NAND _096_ (
    .A(data_out_estructural[10]),
    .B(_072_),
    .Y(_078_)
  );
  NAND _097_ (
    .A(_077_),
    .B(_078_),
    .Y(_000_[10])
  );
  NAND _098_ (
    .A(data_in[3]),
    .B(_071_),
    .Y(_079_)
  );
  NAND _099_ (
    .A(data_out_estructural[11]),
    .B(_072_),
    .Y(_080_)
  );
  NAND _100_ (
    .A(_079_),
    .B(_080_),
    .Y(_000_[11])
  );
  NAND _101_ (
    .A(data_in[4]),
    .B(_071_),
    .Y(_003_)
  );
  NAND _102_ (
    .A(data_out_estructural[12]),
    .B(_072_),
    .Y(_004_)
  );
  NAND _103_ (
    .A(_003_),
    .B(_004_),
    .Y(_000_[12])
  );
  NAND _104_ (
    .A(data_in[5]),
    .B(_071_),
    .Y(_005_)
  );
  NAND _105_ (
    .A(data_out_estructural[13]),
    .B(_072_),
    .Y(_006_)
  );
  NAND _106_ (
    .A(_005_),
    .B(_006_),
    .Y(_000_[13])
  );
  NAND _107_ (
    .A(data_in[6]),
    .B(_071_),
    .Y(_007_)
  );
  NAND _108_ (
    .A(data_out_estructural[14]),
    .B(_072_),
    .Y(_008_)
  );
  NAND _109_ (
    .A(_007_),
    .B(_008_),
    .Y(_000_[14])
  );
  NAND _110_ (
    .A(data_in[7]),
    .B(_071_),
    .Y(_009_)
  );
  NAND _111_ (
    .A(data_out_estructural[15]),
    .B(_072_),
    .Y(_010_)
  );
  NAND _112_ (
    .A(_009_),
    .B(_010_),
    .Y(_000_[15])
  );
  NOR _113_ (
    .A(_067_),
    .B(_069_),
    .Y(_011_)
  );
  NAND _114_ (
    .A(selector[0]),
    .B(_002_),
    .Y(_012_)
  );
  NOR _115_ (
    .A(_068_),
    .B(_012_),
    .Y(_013_)
  );
  NAND _116_ (
    .A(selector[1]),
    .B(_011_),
    .Y(_014_)
  );
  NAND _117_ (
    .A(data_in[0]),
    .B(_013_),
    .Y(_015_)
  );
  NAND _118_ (
    .A(data_out_estructural[0]),
    .B(_014_),
    .Y(_016_)
  );
  NAND _119_ (
    .A(_015_),
    .B(_016_),
    .Y(_000_[0])
  );
  NAND _120_ (
    .A(data_in[1]),
    .B(_013_),
    .Y(_017_)
  );
  NAND _121_ (
    .A(data_out_estructural[1]),
    .B(_014_),
    .Y(_018_)
  );
  NAND _122_ (
    .A(_017_),
    .B(_018_),
    .Y(_000_[1])
  );
  NAND _123_ (
    .A(data_in[2]),
    .B(_013_),
    .Y(_019_)
  );
  NAND _124_ (
    .A(data_out_estructural[2]),
    .B(_014_),
    .Y(_020_)
  );
  NAND _125_ (
    .A(_019_),
    .B(_020_),
    .Y(_000_[2])
  );
  NAND _126_ (
    .A(data_in[3]),
    .B(_013_),
    .Y(_021_)
  );
  NAND _127_ (
    .A(data_out_estructural[3]),
    .B(_014_),
    .Y(_022_)
  );
  NAND _128_ (
    .A(_021_),
    .B(_022_),
    .Y(_000_[3])
  );
  NAND _129_ (
    .A(data_in[4]),
    .B(_013_),
    .Y(_023_)
  );
  NAND _130_ (
    .A(data_out_estructural[4]),
    .B(_014_),
    .Y(_024_)
  );
  NAND _131_ (
    .A(_023_),
    .B(_024_),
    .Y(_000_[4])
  );
  NAND _132_ (
    .A(data_in[5]),
    .B(_013_),
    .Y(_025_)
  );
  NAND _133_ (
    .A(data_out_estructural[5]),
    .B(_014_),
    .Y(_026_)
  );
  NAND _134_ (
    .A(_025_),
    .B(_026_),
    .Y(_000_[5])
  );
  NAND _135_ (
    .A(data_in[6]),
    .B(_013_),
    .Y(_027_)
  );
  NAND _136_ (
    .A(data_out_estructural[6]),
    .B(_014_),
    .Y(_028_)
  );
  NAND _137_ (
    .A(_027_),
    .B(_028_),
    .Y(_000_[6])
  );
  NAND _138_ (
    .A(data_in[7]),
    .B(_013_),
    .Y(_029_)
  );
  NAND _139_ (
    .A(data_out_estructural[7]),
    .B(_014_),
    .Y(_030_)
  );
  NAND _140_ (
    .A(_029_),
    .B(_030_),
    .Y(_000_[7])
  );
  NOR _141_ (
    .A(selector[1]),
    .B(_012_),
    .Y(_031_)
  );
  NAND _142_ (
    .A(_068_),
    .B(_011_),
    .Y(_032_)
  );
  NAND _143_ (
    .A(data_in[0]),
    .B(_031_),
    .Y(_033_)
  );
  NAND _144_ (
    .A(data_out_estructural[16]),
    .B(_032_),
    .Y(_034_)
  );
  NAND _145_ (
    .A(_033_),
    .B(_034_),
    .Y(_000_[16])
  );
  NAND _146_ (
    .A(data_in[1]),
    .B(_031_),
    .Y(_035_)
  );
  NAND _147_ (
    .A(data_out_estructural[17]),
    .B(_032_),
    .Y(_036_)
  );
  NAND _148_ (
    .A(_035_),
    .B(_036_),
    .Y(_000_[17])
  );
  NAND _149_ (
    .A(data_in[2]),
    .B(_031_),
    .Y(_037_)
  );
  NAND _150_ (
    .A(data_out_estructural[18]),
    .B(_032_),
    .Y(_038_)
  );
  NAND _151_ (
    .A(_037_),
    .B(_038_),
    .Y(_000_[18])
  );
  NAND _152_ (
    .A(data_in[3]),
    .B(_031_),
    .Y(_039_)
  );
  NAND _153_ (
    .A(data_out_estructural[19]),
    .B(_032_),
    .Y(_040_)
  );
  NAND _154_ (
    .A(_039_),
    .B(_040_),
    .Y(_000_[19])
  );
  NAND _155_ (
    .A(data_in[4]),
    .B(_031_),
    .Y(_041_)
  );
  NAND _156_ (
    .A(data_out_estructural[20]),
    .B(_032_),
    .Y(_042_)
  );
  NAND _157_ (
    .A(_041_),
    .B(_042_),
    .Y(_000_[20])
  );
  NAND _158_ (
    .A(data_in[5]),
    .B(_031_),
    .Y(_043_)
  );
  NAND _159_ (
    .A(data_out_estructural[21]),
    .B(_032_),
    .Y(_044_)
  );
  NAND _160_ (
    .A(_043_),
    .B(_044_),
    .Y(_000_[21])
  );
  NAND _161_ (
    .A(data_in[6]),
    .B(_031_),
    .Y(_045_)
  );
  NAND _162_ (
    .A(data_out_estructural[22]),
    .B(_032_),
    .Y(_046_)
  );
  NAND _163_ (
    .A(_045_),
    .B(_046_),
    .Y(_000_[22])
  );
  NAND _164_ (
    .A(data_in[7]),
    .B(_031_),
    .Y(_047_)
  );
  NAND _165_ (
    .A(data_out_estructural[23]),
    .B(_032_),
    .Y(_048_)
  );
  NAND _166_ (
    .A(_047_),
    .B(_048_),
    .Y(_000_[23])
  );
  NOR _167_ (
    .A(selector[1]),
    .B(_070_),
    .Y(_049_)
  );
  NAND _168_ (
    .A(_068_),
    .B(_001_[0]),
    .Y(_050_)
  );
  NAND _169_ (
    .A(data_in[0]),
    .B(_049_),
    .Y(_051_)
  );
  NAND _170_ (
    .A(data_out_estructural[24]),
    .B(_050_),
    .Y(_052_)
  );
  NAND _171_ (
    .A(_051_),
    .B(_052_),
    .Y(_000_[24])
  );
  NAND _172_ (
    .A(data_in[1]),
    .B(_049_),
    .Y(_053_)
  );
  NAND _173_ (
    .A(data_out_estructural[25]),
    .B(_050_),
    .Y(_054_)
  );
  NAND _174_ (
    .A(_053_),
    .B(_054_),
    .Y(_000_[25])
  );
  NAND _175_ (
    .A(data_in[2]),
    .B(_049_),
    .Y(_055_)
  );
  NAND _176_ (
    .A(data_out_estructural[26]),
    .B(_050_),
    .Y(_056_)
  );
  NAND _177_ (
    .A(_055_),
    .B(_056_),
    .Y(_000_[26])
  );
  NAND _178_ (
    .A(data_in[3]),
    .B(_049_),
    .Y(_057_)
  );
  NAND _179_ (
    .A(data_out_estructural[27]),
    .B(_050_),
    .Y(_058_)
  );
  NAND _180_ (
    .A(_057_),
    .B(_058_),
    .Y(_000_[27])
  );
  NAND _181_ (
    .A(data_in[4]),
    .B(_049_),
    .Y(_059_)
  );
  NAND _182_ (
    .A(data_out_estructural[28]),
    .B(_050_),
    .Y(_060_)
  );
  NAND _183_ (
    .A(_059_),
    .B(_060_),
    .Y(_000_[28])
  );
  NAND _184_ (
    .A(data_in[5]),
    .B(_049_),
    .Y(_061_)
  );
  NAND _185_ (
    .A(data_out_estructural[29]),
    .B(_050_),
    .Y(_062_)
  );
  NAND _186_ (
    .A(_061_),
    .B(_062_),
    .Y(_000_[29])
  );
  NAND _187_ (
    .A(data_in[6]),
    .B(_049_),
    .Y(_063_)
  );
  NAND _188_ (
    .A(data_out_estructural[30]),
    .B(_050_),
    .Y(_064_)
  );
  NAND _189_ (
    .A(_063_),
    .B(_064_),
    .Y(_000_[30])
  );
  NAND _190_ (
    .A(data_in[7]),
    .B(_049_),
    .Y(_065_)
  );
  NAND _191_ (
    .A(data_out_estructural[31]),
    .B(_050_),
    .Y(_066_)
  );
  NAND _192_ (
    .A(_065_),
    .B(_066_),
    .Y(_000_[31])
  );
  NAND _193_ (
    .A(_072_),
    .B(_032_),
    .Y(_001_[1])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _194_ (
    .C(clk_4f),
    .D(_001_[0]),
    .Q(selector[0])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _195_ (
    .C(clk_4f),
    .D(_001_[1]),
    .Q(selector[1])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _196_ (
    .C(clk_4f),
    .D(_000_[0]),
    .Q(data_out_estructural[0])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _197_ (
    .C(clk_4f),
    .D(_000_[1]),
    .Q(data_out_estructural[1])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _198_ (
    .C(clk_4f),
    .D(_000_[2]),
    .Q(data_out_estructural[2])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _199_ (
    .C(clk_4f),
    .D(_000_[3]),
    .Q(data_out_estructural[3])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _200_ (
    .C(clk_4f),
    .D(_000_[4]),
    .Q(data_out_estructural[4])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _201_ (
    .C(clk_4f),
    .D(_000_[5]),
    .Q(data_out_estructural[5])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _202_ (
    .C(clk_4f),
    .D(_000_[6]),
    .Q(data_out_estructural[6])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _203_ (
    .C(clk_4f),
    .D(_000_[7]),
    .Q(data_out_estructural[7])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _204_ (
    .C(clk_4f),
    .D(_000_[8]),
    .Q(data_out_estructural[8])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _205_ (
    .C(clk_4f),
    .D(_000_[9]),
    .Q(data_out_estructural[9])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _206_ (
    .C(clk_4f),
    .D(_000_[10]),
    .Q(data_out_estructural[10])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _207_ (
    .C(clk_4f),
    .D(_000_[11]),
    .Q(data_out_estructural[11])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _208_ (
    .C(clk_4f),
    .D(_000_[12]),
    .Q(data_out_estructural[12])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _209_ (
    .C(clk_4f),
    .D(_000_[13]),
    .Q(data_out_estructural[13])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _210_ (
    .C(clk_4f),
    .D(_000_[14]),
    .Q(data_out_estructural[14])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _211_ (
    .C(clk_4f),
    .D(_000_[15]),
    .Q(data_out_estructural[15])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _212_ (
    .C(clk_4f),
    .D(_000_[16]),
    .Q(data_out_estructural[16])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _213_ (
    .C(clk_4f),
    .D(_000_[17]),
    .Q(data_out_estructural[17])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _214_ (
    .C(clk_4f),
    .D(_000_[18]),
    .Q(data_out_estructural[18])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _215_ (
    .C(clk_4f),
    .D(_000_[19]),
    .Q(data_out_estructural[19])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _216_ (
    .C(clk_4f),
    .D(_000_[20]),
    .Q(data_out_estructural[20])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _217_ (
    .C(clk_4f),
    .D(_000_[21]),
    .Q(data_out_estructural[21])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _218_ (
    .C(clk_4f),
    .D(_000_[22]),
    .Q(data_out_estructural[22])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _219_ (
    .C(clk_4f),
    .D(_000_[23]),
    .Q(data_out_estructural[23])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _220_ (
    .C(clk_4f),
    .D(_000_[24]),
    .Q(data_out_estructural[24])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _221_ (
    .C(clk_4f),
    .D(_000_[25]),
    .Q(data_out_estructural[25])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _222_ (
    .C(clk_4f),
    .D(_000_[26]),
    .Q(data_out_estructural[26])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _223_ (
    .C(clk_4f),
    .D(_000_[27]),
    .Q(data_out_estructural[27])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _224_ (
    .C(clk_4f),
    .D(_000_[28]),
    .Q(data_out_estructural[28])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _225_ (
    .C(clk_4f),
    .D(_000_[29]),
    .Q(data_out_estructural[29])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _226_ (
    .C(clk_4f),
    .D(_000_[30]),
    .Q(data_out_estructural[30])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _227_ (
    .C(clk_4f),
    .D(_000_[31]),
    .Q(data_out_estructural[31])
  );
  (* src = "sintetizado8a32_cmos.v:10" *)
  DFF _228_ (
    .C(clk_4f),
    .D(_002_),
    .Q(valid_out_estructural)
  );
endmodule
