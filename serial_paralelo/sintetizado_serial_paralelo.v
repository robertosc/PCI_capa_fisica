/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "sintetizado_serial_paralelo.v:1" *)
module sintetizado_serial_paralelo(reset, valid, clk_4f, clk_32f, data_in, data2send, active, valid_out, data_out);
  (* src = "sintetizado_serial_paralelo.v:16" *)
  wire [2:0] _000_;
  (* src = "sintetizado_serial_paralelo.v:16" *)
  wire _001_;
  (* src = "sintetizado_serial_paralelo.v:16" *)
  wire [7:0] _002_;
  (* src = "sintetizado_serial_paralelo.v:16" *)
  wire [7:0] _003_;
  (* src = "sintetizado_serial_paralelo.v:16" *)
  wire _004_;
  (* src = "sintetizado_serial_paralelo.v:16" *)
  wire [2:0] _005_;
  (* src = "sintetizado_serial_paralelo.v:16" *)
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
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  (* src = "sintetizado_serial_paralelo.v:13" *)
  wire [2:0] BC_counter;
  (* src = "sintetizado_serial_paralelo.v:8" *)
  output active;
  (* src = "sintetizado_serial_paralelo.v:5" *)
  input clk_32f;
  (* src = "sintetizado_serial_paralelo.v:4" *)
  input clk_4f;
  (* src = "sintetizado_serial_paralelo.v:7" *)
  output [7:0] data2send;
  (* src = "sintetizado_serial_paralelo.v:6" *)
  input data_in;
  (* src = "sintetizado_serial_paralelo.v:10" *)
  output [7:0] data_out;
  (* src = "sintetizado_serial_paralelo.v:14" *)
  wire dataout_on;
  (* src = "sintetizado_serial_paralelo.v:2" *)
  input reset;
  (* src = "sintetizado_serial_paralelo.v:12" *)
  wire [2:0] selector;
  (* src = "sintetizado_serial_paralelo.v:3" *)
  input valid;
  (* src = "sintetizado_serial_paralelo.v:9" *)
  output valid_out;
  NOT _135_ (
    .A(selector[2]),
    .Y(_092_)
  );
  NOT _136_ (
    .A(selector[0]),
    .Y(_093_)
  );
  NOT _137_ (
    .A(selector[1]),
    .Y(_094_)
  );
  NOT _138_ (
    .A(valid),
    .Y(_095_)
  );
  NOT _139_ (
    .A(reset),
    .Y(_096_)
  );
  NOT _140_ (
    .A(data_in),
    .Y(_097_)
  );
  NOT _141_ (
    .A(data2send[1]),
    .Y(_098_)
  );
  NOT _142_ (
    .A(data_out[2]),
    .Y(_099_)
  );
  NOT _143_ (
    .A(data2send[2]),
    .Y(_100_)
  );
  NOT _144_ (
    .A(data_out[3]),
    .Y(_101_)
  );
  NOT _145_ (
    .A(data2send[3]),
    .Y(_102_)
  );
  NOT _146_ (
    .A(data_out[4]),
    .Y(_103_)
  );
  NOT _147_ (
    .A(data_out[5]),
    .Y(_104_)
  );
  NOT _148_ (
    .A(data2send[5]),
    .Y(_105_)
  );
  NOT _149_ (
    .A(data_out[7]),
    .Y(_106_)
  );
  NOT _150_ (
    .A(dataout_on),
    .Y(_107_)
  );
  NOT _151_ (
    .A(BC_counter[0]),
    .Y(_108_)
  );
  NOT _152_ (
    .A(BC_counter[1]),
    .Y(_109_)
  );
  NOT _153_ (
    .A(BC_counter[2]),
    .Y(_110_)
  );
  NOT _154_ (
    .A(data2send[7]),
    .Y(_111_)
  );
  NOR _155_ (
    .A(selector[0]),
    .B(_094_),
    .Y(_112_)
  );
  NOT _156_ (
    .A(_112_),
    .Y(_113_)
  );
  NOR _157_ (
    .A(_092_),
    .B(_113_),
    .Y(_114_)
  );
  NAND _158_ (
    .A(selector[2]),
    .B(_112_),
    .Y(_115_)
  );
  NOR _159_ (
    .A(_095_),
    .B(_097_),
    .Y(_116_)
  );
  NAND _160_ (
    .A(valid),
    .B(data_in),
    .Y(_117_)
  );
  NOR _161_ (
    .A(_107_),
    .B(_117_),
    .Y(_118_)
  );
  NAND _162_ (
    .A(dataout_on),
    .B(_116_),
    .Y(_119_)
  );
  NOR _163_ (
    .A(data_out[1]),
    .B(_114_),
    .Y(_120_)
  );
  NAND _164_ (
    .A(_114_),
    .B(_119_),
    .Y(_121_)
  );
  NAND _165_ (
    .A(reset),
    .B(_121_),
    .Y(_122_)
  );
  NOR _166_ (
    .A(_120_),
    .B(_122_),
    .Y(_003_[1])
  );
  NOR _167_ (
    .A(_093_),
    .B(_094_),
    .Y(_123_)
  );
  NAND _168_ (
    .A(selector[0]),
    .B(selector[1]),
    .Y(_124_)
  );
  NOR _169_ (
    .A(_092_),
    .B(_124_),
    .Y(_125_)
  );
  NAND _170_ (
    .A(selector[2]),
    .B(_123_),
    .Y(_126_)
  );
  NOR _171_ (
    .A(data_out[0]),
    .B(_125_),
    .Y(_127_)
  );
  NAND _172_ (
    .A(_119_),
    .B(_125_),
    .Y(_128_)
  );
  NAND _173_ (
    .A(reset),
    .B(_128_),
    .Y(_129_)
  );
  NOR _174_ (
    .A(_127_),
    .B(_129_),
    .Y(_003_[0])
  );
  NAND _175_ (
    .A(data2send[0]),
    .B(_126_),
    .Y(_130_)
  );
  NAND _176_ (
    .A(_116_),
    .B(_125_),
    .Y(_131_)
  );
  NAND _177_ (
    .A(_130_),
    .B(_131_),
    .Y(_132_)
  );
  NAND _178_ (
    .A(reset),
    .B(_132_),
    .Y(_133_)
  );
  NOT _179_ (
    .A(_133_),
    .Y(_002_[0])
  );
  NOR _180_ (
    .A(_115_),
    .B(_116_),
    .Y(_134_)
  );
  NAND _181_ (
    .A(_098_),
    .B(_115_),
    .Y(_007_)
  );
  NAND _182_ (
    .A(reset),
    .B(_007_),
    .Y(_008_)
  );
  NOR _183_ (
    .A(_134_),
    .B(_008_),
    .Y(_002_[1])
  );
  NOR _184_ (
    .A(_093_),
    .B(selector[1]),
    .Y(_009_)
  );
  NAND _185_ (
    .A(selector[0]),
    .B(_094_),
    .Y(_010_)
  );
  NAND _186_ (
    .A(selector[2]),
    .B(_009_),
    .Y(_011_)
  );
  NOR _187_ (
    .A(_118_),
    .B(_011_),
    .Y(_012_)
  );
  NAND _188_ (
    .A(_099_),
    .B(_011_),
    .Y(_013_)
  );
  NAND _189_ (
    .A(reset),
    .B(_013_),
    .Y(_014_)
  );
  NOR _190_ (
    .A(_012_),
    .B(_014_),
    .Y(_003_[2])
  );
  NAND _191_ (
    .A(valid),
    .B(_097_),
    .Y(_015_)
  );
  NOR _192_ (
    .A(_011_),
    .B(_015_),
    .Y(_016_)
  );
  NAND _193_ (
    .A(_100_),
    .B(_011_),
    .Y(_017_)
  );
  NAND _194_ (
    .A(reset),
    .B(_017_),
    .Y(_018_)
  );
  NOR _195_ (
    .A(_016_),
    .B(_018_),
    .Y(_002_[2])
  );
  NOR _196_ (
    .A(selector[0]),
    .B(selector[1]),
    .Y(_019_)
  );
  NAND _197_ (
    .A(selector[2]),
    .B(_019_),
    .Y(_020_)
  );
  NOR _198_ (
    .A(_118_),
    .B(_020_),
    .Y(_021_)
  );
  NAND _199_ (
    .A(_101_),
    .B(_020_),
    .Y(_022_)
  );
  NAND _200_ (
    .A(reset),
    .B(_022_),
    .Y(_023_)
  );
  NOR _201_ (
    .A(_021_),
    .B(_023_),
    .Y(_003_[3])
  );
  NOR _202_ (
    .A(_015_),
    .B(_020_),
    .Y(_024_)
  );
  NAND _203_ (
    .A(_102_),
    .B(_020_),
    .Y(_025_)
  );
  NAND _204_ (
    .A(reset),
    .B(_025_),
    .Y(_026_)
  );
  NOR _205_ (
    .A(_024_),
    .B(_026_),
    .Y(_002_[3])
  );
  NOR _206_ (
    .A(selector[2]),
    .B(_124_),
    .Y(_027_)
  );
  NAND _207_ (
    .A(_092_),
    .B(_123_),
    .Y(_028_)
  );
  NOR _208_ (
    .A(_103_),
    .B(_027_),
    .Y(_029_)
  );
  NOR _209_ (
    .A(_119_),
    .B(_028_),
    .Y(_030_)
  );
  NOR _210_ (
    .A(_029_),
    .B(_030_),
    .Y(_031_)
  );
  NOR _211_ (
    .A(_096_),
    .B(_031_),
    .Y(_003_[4])
  );
  NOR _212_ (
    .A(_015_),
    .B(_028_),
    .Y(_032_)
  );
  NOR _213_ (
    .A(data2send[4]),
    .B(_027_),
    .Y(_033_)
  );
  NOT _214_ (
    .A(_033_),
    .Y(_034_)
  );
  NAND _215_ (
    .A(reset),
    .B(_034_),
    .Y(_035_)
  );
  NOR _216_ (
    .A(_032_),
    .B(_035_),
    .Y(_002_[4])
  );
  NAND _217_ (
    .A(_092_),
    .B(_112_),
    .Y(_036_)
  );
  NOR _218_ (
    .A(_118_),
    .B(_036_),
    .Y(_037_)
  );
  NAND _219_ (
    .A(_104_),
    .B(_036_),
    .Y(_038_)
  );
  NAND _220_ (
    .A(reset),
    .B(_038_),
    .Y(_039_)
  );
  NOR _221_ (
    .A(_037_),
    .B(_039_),
    .Y(_003_[5])
  );
  NOR _222_ (
    .A(_015_),
    .B(_036_),
    .Y(_040_)
  );
  NAND _223_ (
    .A(_105_),
    .B(_036_),
    .Y(_041_)
  );
  NAND _224_ (
    .A(reset),
    .B(_041_),
    .Y(_042_)
  );
  NOR _225_ (
    .A(_040_),
    .B(_042_),
    .Y(_002_[5])
  );
  NOR _226_ (
    .A(selector[2]),
    .B(_010_),
    .Y(_043_)
  );
  NOR _227_ (
    .A(data_out[6]),
    .B(_043_),
    .Y(_044_)
  );
  NAND _228_ (
    .A(_119_),
    .B(_043_),
    .Y(_045_)
  );
  NAND _229_ (
    .A(reset),
    .B(_045_),
    .Y(_046_)
  );
  NOR _230_ (
    .A(_044_),
    .B(_046_),
    .Y(_003_[6])
  );
  NAND _231_ (
    .A(_117_),
    .B(_043_),
    .Y(_047_)
  );
  NOT _232_ (
    .A(_047_),
    .Y(_048_)
  );
  NOR _233_ (
    .A(data2send[6]),
    .B(_043_),
    .Y(_049_)
  );
  NOT _234_ (
    .A(_049_),
    .Y(_050_)
  );
  NAND _235_ (
    .A(reset),
    .B(_050_),
    .Y(_051_)
  );
  NOR _236_ (
    .A(_048_),
    .B(_051_),
    .Y(_002_[6])
  );
  NAND _237_ (
    .A(_092_),
    .B(_019_),
    .Y(_052_)
  );
  NOR _238_ (
    .A(_118_),
    .B(_052_),
    .Y(_053_)
  );
  NAND _239_ (
    .A(_106_),
    .B(_052_),
    .Y(_054_)
  );
  NAND _240_ (
    .A(reset),
    .B(_054_),
    .Y(_055_)
  );
  NOR _241_ (
    .A(_053_),
    .B(_055_),
    .Y(_003_[7])
  );
  NAND _242_ (
    .A(data2send[3]),
    .B(data2send[4]),
    .Y(_056_)
  );
  NAND _243_ (
    .A(data2send[5]),
    .B(data2send[7]),
    .Y(_057_)
  );
  NOR _244_ (
    .A(_056_),
    .B(_057_),
    .Y(_058_)
  );
  NOR _245_ (
    .A(data2send[1]),
    .B(_100_),
    .Y(_059_)
  );
  NAND _246_ (
    .A(_098_),
    .B(data2send[2]),
    .Y(_060_)
  );
  NOR _247_ (
    .A(data2send[6]),
    .B(data2send[0]),
    .Y(_061_)
  );
  NOT _248_ (
    .A(_061_),
    .Y(_062_)
  );
  NOR _249_ (
    .A(_060_),
    .B(_062_),
    .Y(_063_)
  );
  NAND _250_ (
    .A(_059_),
    .B(_061_),
    .Y(_064_)
  );
  NAND _251_ (
    .A(_058_),
    .B(_063_),
    .Y(_065_)
  );
  NOR _252_ (
    .A(_126_),
    .B(_064_),
    .Y(_066_)
  );
  NOR _253_ (
    .A(_126_),
    .B(_065_),
    .Y(_067_)
  );
  NAND _254_ (
    .A(_058_),
    .B(_066_),
    .Y(_068_)
  );
  NOR _255_ (
    .A(_108_),
    .B(_068_),
    .Y(_069_)
  );
  NAND _256_ (
    .A(BC_counter[0]),
    .B(_067_),
    .Y(_070_)
  );
  NAND _257_ (
    .A(_108_),
    .B(_068_),
    .Y(_071_)
  );
  NAND _258_ (
    .A(reset),
    .B(_071_),
    .Y(_072_)
  );
  NOR _259_ (
    .A(_069_),
    .B(_072_),
    .Y(_000_[0])
  );
  NOR _260_ (
    .A(_109_),
    .B(_070_),
    .Y(_073_)
  );
  NAND _261_ (
    .A(_109_),
    .B(_070_),
    .Y(_074_)
  );
  NAND _262_ (
    .A(reset),
    .B(_074_),
    .Y(_075_)
  );
  NOR _263_ (
    .A(_073_),
    .B(_075_),
    .Y(_000_[1])
  );
  NOR _264_ (
    .A(BC_counter[2]),
    .B(_073_),
    .Y(_076_)
  );
  NAND _265_ (
    .A(BC_counter[2]),
    .B(_073_),
    .Y(_077_)
  );
  NAND _266_ (
    .A(reset),
    .B(_077_),
    .Y(_078_)
  );
  NOR _267_ (
    .A(_076_),
    .B(_078_),
    .Y(_000_[2])
  );
  NOR _268_ (
    .A(selector[0]),
    .B(_096_),
    .Y(_005_[0])
  );
  NAND _269_ (
    .A(reset),
    .B(_124_),
    .Y(_079_)
  );
  NOR _270_ (
    .A(_019_),
    .B(_079_),
    .Y(_005_[1])
  );
  NAND _271_ (
    .A(_092_),
    .B(_124_),
    .Y(_080_)
  );
  NAND _272_ (
    .A(reset),
    .B(_080_),
    .Y(_081_)
  );
  NOR _273_ (
    .A(_125_),
    .B(_081_),
    .Y(_005_[2])
  );
  NAND _274_ (
    .A(active),
    .B(_125_),
    .Y(_082_)
  );
  NOR _275_ (
    .A(_095_),
    .B(_082_),
    .Y(_083_)
  );
  NOR _276_ (
    .A(dataout_on),
    .B(_083_),
    .Y(_084_)
  );
  NOR _277_ (
    .A(_096_),
    .B(_084_),
    .Y(_004_)
  );
  NOR _278_ (
    .A(_015_),
    .B(_052_),
    .Y(_085_)
  );
  NAND _279_ (
    .A(_111_),
    .B(_052_),
    .Y(_086_)
  );
  NAND _280_ (
    .A(reset),
    .B(_086_),
    .Y(_087_)
  );
  NOR _281_ (
    .A(_085_),
    .B(_087_),
    .Y(_002_[7])
  );
  NOR _282_ (
    .A(valid_out),
    .B(_125_),
    .Y(_088_)
  );
  NAND _283_ (
    .A(reset),
    .B(_068_),
    .Y(_089_)
  );
  NOR _284_ (
    .A(_088_),
    .B(_089_),
    .Y(_006_)
  );
  NOR _285_ (
    .A(_110_),
    .B(_126_),
    .Y(_090_)
  );
  NOR _286_ (
    .A(active),
    .B(_090_),
    .Y(_091_)
  );
  NOR _287_ (
    .A(_096_),
    .B(_091_),
    .Y(_001_)
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _288_ (
    .C(clk_32f),
    .D(_001_),
    .Q(active)
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _289_ (
    .C(clk_32f),
    .D(_006_),
    .Q(valid_out)
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _290_ (
    .C(clk_32f),
    .D(_003_[0]),
    .Q(data_out[0])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _291_ (
    .C(clk_32f),
    .D(_003_[1]),
    .Q(data_out[1])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _292_ (
    .C(clk_32f),
    .D(_003_[2]),
    .Q(data_out[2])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _293_ (
    .C(clk_32f),
    .D(_003_[3]),
    .Q(data_out[3])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _294_ (
    .C(clk_32f),
    .D(_003_[4]),
    .Q(data_out[4])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _295_ (
    .C(clk_32f),
    .D(_003_[5]),
    .Q(data_out[5])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _296_ (
    .C(clk_32f),
    .D(_003_[6]),
    .Q(data_out[6])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _297_ (
    .C(clk_32f),
    .D(_003_[7]),
    .Q(data_out[7])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _298_ (
    .C(clk_32f),
    .D(_002_[0]),
    .Q(data2send[0])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _299_ (
    .C(clk_32f),
    .D(_002_[1]),
    .Q(data2send[1])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _300_ (
    .C(clk_32f),
    .D(_002_[2]),
    .Q(data2send[2])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _301_ (
    .C(clk_32f),
    .D(_002_[3]),
    .Q(data2send[3])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _302_ (
    .C(clk_32f),
    .D(_002_[4]),
    .Q(data2send[4])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _303_ (
    .C(clk_32f),
    .D(_002_[5]),
    .Q(data2send[5])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _304_ (
    .C(clk_32f),
    .D(_002_[6]),
    .Q(data2send[6])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _305_ (
    .C(clk_32f),
    .D(_002_[7]),
    .Q(data2send[7])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _306_ (
    .C(clk_32f),
    .D(_005_[0]),
    .Q(selector[0])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _307_ (
    .C(clk_32f),
    .D(_005_[1]),
    .Q(selector[1])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _308_ (
    .C(clk_32f),
    .D(_005_[2]),
    .Q(selector[2])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _309_ (
    .C(clk_32f),
    .D(_000_[0]),
    .Q(BC_counter[0])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _310_ (
    .C(clk_32f),
    .D(_000_[1]),
    .Q(BC_counter[1])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _311_ (
    .C(clk_32f),
    .D(_000_[2]),
    .Q(BC_counter[2])
  );
  (* src = "sintetizado_serial_paralelo.v:16" *)
  DFF _312_ (
    .C(clk_32f),
    .D(_004_),
    .Q(dataout_on)
  );
endmodule
