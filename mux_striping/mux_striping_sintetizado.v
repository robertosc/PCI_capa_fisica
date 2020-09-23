/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* cells_not_processed =  1  *)
(* src = "mux_striping_sintetizado.v:1" *)
module mux_striping_sintetizado(clk_2f, lane_0, lane_1, valid_0, valid_1, reset, data_output, valid_out);
  (* src = "mux_striping_sintetizado.v:13" *)
  wire [31:0] _000_;
  (* src = "mux_striping_sintetizado.v:13" *)
  wire _001_;
  (* src = "mux_striping_sintetizado.v:13" *)
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
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  (* src = "mux_striping_sintetizado.v:2" *)
  input clk_2f;
  (* src = "mux_striping_sintetizado.v:8" *)
  output [31:0] data_output;
  (* src = "mux_striping_sintetizado.v:3" *)
  input [31:0] lane_0;
  (* src = "mux_striping_sintetizado.v:4" *)
  input [31:0] lane_1;
  (* src = "mux_striping_sintetizado.v:7" *)
  input reset;
  (* src = "mux_striping_sintetizado.v:11" *)
  wire sel;
  (* src = "mux_striping_sintetizado.v:5" *)
  input valid_0;
  (* src = "mux_striping_sintetizado.v:6" *)
  input valid_1;
  (* src = "mux_striping_sintetizado.v:9" *)
  output valid_out;
  NOT _174_ (
    .A(sel),
    .Y(_003_)
  );
  NOT _175_ (
    .A(valid_1),
    .Y(_004_)
  );
  NOT _176_ (
    .A(valid_0),
    .Y(_005_)
  );
  NOR _177_ (
    .A(_003_),
    .B(_004_),
    .Y(_006_)
  );
  NAND _178_ (
    .A(sel),
    .B(valid_1),
    .Y(_007_)
  );
  NAND _179_ (
    .A(lane_1[0]),
    .B(_006_),
    .Y(_008_)
  );
  NOR _180_ (
    .A(sel),
    .B(_005_),
    .Y(_009_)
  );
  NAND _181_ (
    .A(_003_),
    .B(valid_0),
    .Y(_010_)
  );
  NAND _182_ (
    .A(lane_0[0]),
    .B(_009_),
    .Y(_011_)
  );
  NAND _183_ (
    .A(_008_),
    .B(_011_),
    .Y(_012_)
  );
  NAND _184_ (
    .A(reset),
    .B(_012_),
    .Y(_013_)
  );
  NAND _185_ (
    .A(_007_),
    .B(_010_),
    .Y(_014_)
  );
  NAND _186_ (
    .A(reset),
    .B(_014_),
    .Y(_015_)
  );
  NOT _187_ (
    .A(_015_),
    .Y(_002_)
  );
  NAND _188_ (
    .A(data_output[0]),
    .B(_015_),
    .Y(_016_)
  );
  NAND _189_ (
    .A(_013_),
    .B(_016_),
    .Y(_000_[0])
  );
  NAND _190_ (
    .A(lane_1[1]),
    .B(_006_),
    .Y(_017_)
  );
  NAND _191_ (
    .A(lane_0[1]),
    .B(_009_),
    .Y(_018_)
  );
  NAND _192_ (
    .A(_017_),
    .B(_018_),
    .Y(_019_)
  );
  NAND _193_ (
    .A(reset),
    .B(_019_),
    .Y(_020_)
  );
  NAND _194_ (
    .A(data_output[1]),
    .B(_015_),
    .Y(_021_)
  );
  NAND _195_ (
    .A(_020_),
    .B(_021_),
    .Y(_000_[1])
  );
  NAND _196_ (
    .A(lane_1[2]),
    .B(_006_),
    .Y(_022_)
  );
  NAND _197_ (
    .A(lane_0[2]),
    .B(_009_),
    .Y(_023_)
  );
  NAND _198_ (
    .A(_022_),
    .B(_023_),
    .Y(_024_)
  );
  NAND _199_ (
    .A(reset),
    .B(_024_),
    .Y(_025_)
  );
  NAND _200_ (
    .A(data_output[2]),
    .B(_015_),
    .Y(_026_)
  );
  NAND _201_ (
    .A(_025_),
    .B(_026_),
    .Y(_000_[2])
  );
  NAND _202_ (
    .A(lane_1[3]),
    .B(_006_),
    .Y(_027_)
  );
  NAND _203_ (
    .A(lane_0[3]),
    .B(_009_),
    .Y(_028_)
  );
  NAND _204_ (
    .A(_027_),
    .B(_028_),
    .Y(_029_)
  );
  NAND _205_ (
    .A(reset),
    .B(_029_),
    .Y(_030_)
  );
  NAND _206_ (
    .A(data_output[3]),
    .B(_015_),
    .Y(_031_)
  );
  NAND _207_ (
    .A(_030_),
    .B(_031_),
    .Y(_000_[3])
  );
  NAND _208_ (
    .A(lane_1[4]),
    .B(_006_),
    .Y(_032_)
  );
  NAND _209_ (
    .A(lane_0[4]),
    .B(_009_),
    .Y(_033_)
  );
  NAND _210_ (
    .A(_032_),
    .B(_033_),
    .Y(_034_)
  );
  NAND _211_ (
    .A(reset),
    .B(_034_),
    .Y(_035_)
  );
  NAND _212_ (
    .A(data_output[4]),
    .B(_015_),
    .Y(_036_)
  );
  NAND _213_ (
    .A(_035_),
    .B(_036_),
    .Y(_000_[4])
  );
  NAND _214_ (
    .A(lane_1[5]),
    .B(_006_),
    .Y(_037_)
  );
  NAND _215_ (
    .A(lane_0[5]),
    .B(_009_),
    .Y(_038_)
  );
  NAND _216_ (
    .A(_037_),
    .B(_038_),
    .Y(_039_)
  );
  NAND _217_ (
    .A(reset),
    .B(_039_),
    .Y(_040_)
  );
  NAND _218_ (
    .A(data_output[5]),
    .B(_015_),
    .Y(_041_)
  );
  NAND _219_ (
    .A(_040_),
    .B(_041_),
    .Y(_000_[5])
  );
  NAND _220_ (
    .A(lane_1[6]),
    .B(_006_),
    .Y(_042_)
  );
  NAND _221_ (
    .A(lane_0[6]),
    .B(_009_),
    .Y(_043_)
  );
  NAND _222_ (
    .A(_042_),
    .B(_043_),
    .Y(_044_)
  );
  NAND _223_ (
    .A(reset),
    .B(_044_),
    .Y(_045_)
  );
  NAND _224_ (
    .A(data_output[6]),
    .B(_015_),
    .Y(_046_)
  );
  NAND _225_ (
    .A(_045_),
    .B(_046_),
    .Y(_000_[6])
  );
  NAND _226_ (
    .A(lane_1[7]),
    .B(_006_),
    .Y(_047_)
  );
  NAND _227_ (
    .A(lane_0[7]),
    .B(_009_),
    .Y(_048_)
  );
  NAND _228_ (
    .A(_047_),
    .B(_048_),
    .Y(_049_)
  );
  NAND _229_ (
    .A(reset),
    .B(_049_),
    .Y(_050_)
  );
  NAND _230_ (
    .A(data_output[7]),
    .B(_015_),
    .Y(_051_)
  );
  NAND _231_ (
    .A(_050_),
    .B(_051_),
    .Y(_000_[7])
  );
  NAND _232_ (
    .A(lane_1[8]),
    .B(_006_),
    .Y(_052_)
  );
  NAND _233_ (
    .A(lane_0[8]),
    .B(_009_),
    .Y(_053_)
  );
  NAND _234_ (
    .A(_052_),
    .B(_053_),
    .Y(_054_)
  );
  NAND _235_ (
    .A(reset),
    .B(_054_),
    .Y(_055_)
  );
  NAND _236_ (
    .A(data_output[8]),
    .B(_015_),
    .Y(_056_)
  );
  NAND _237_ (
    .A(_055_),
    .B(_056_),
    .Y(_000_[8])
  );
  NAND _238_ (
    .A(lane_1[9]),
    .B(_006_),
    .Y(_057_)
  );
  NAND _239_ (
    .A(lane_0[9]),
    .B(_009_),
    .Y(_058_)
  );
  NAND _240_ (
    .A(_057_),
    .B(_058_),
    .Y(_059_)
  );
  NAND _241_ (
    .A(reset),
    .B(_059_),
    .Y(_060_)
  );
  NAND _242_ (
    .A(data_output[9]),
    .B(_015_),
    .Y(_061_)
  );
  NAND _243_ (
    .A(_060_),
    .B(_061_),
    .Y(_000_[9])
  );
  NAND _244_ (
    .A(lane_1[10]),
    .B(_006_),
    .Y(_062_)
  );
  NAND _245_ (
    .A(lane_0[10]),
    .B(_009_),
    .Y(_063_)
  );
  NAND _246_ (
    .A(_062_),
    .B(_063_),
    .Y(_064_)
  );
  NAND _247_ (
    .A(reset),
    .B(_064_),
    .Y(_065_)
  );
  NAND _248_ (
    .A(data_output[10]),
    .B(_015_),
    .Y(_066_)
  );
  NAND _249_ (
    .A(_065_),
    .B(_066_),
    .Y(_000_[10])
  );
  NAND _250_ (
    .A(lane_1[11]),
    .B(_006_),
    .Y(_067_)
  );
  NAND _251_ (
    .A(lane_0[11]),
    .B(_009_),
    .Y(_068_)
  );
  NAND _252_ (
    .A(_067_),
    .B(_068_),
    .Y(_069_)
  );
  NAND _253_ (
    .A(reset),
    .B(_069_),
    .Y(_070_)
  );
  NAND _254_ (
    .A(data_output[11]),
    .B(_015_),
    .Y(_071_)
  );
  NAND _255_ (
    .A(_070_),
    .B(_071_),
    .Y(_000_[11])
  );
  NAND _256_ (
    .A(lane_1[12]),
    .B(_006_),
    .Y(_072_)
  );
  NAND _257_ (
    .A(lane_0[12]),
    .B(_009_),
    .Y(_073_)
  );
  NAND _258_ (
    .A(_072_),
    .B(_073_),
    .Y(_074_)
  );
  NAND _259_ (
    .A(reset),
    .B(_074_),
    .Y(_075_)
  );
  NAND _260_ (
    .A(data_output[12]),
    .B(_015_),
    .Y(_076_)
  );
  NAND _261_ (
    .A(_075_),
    .B(_076_),
    .Y(_000_[12])
  );
  NAND _262_ (
    .A(lane_1[13]),
    .B(_006_),
    .Y(_077_)
  );
  NAND _263_ (
    .A(lane_0[13]),
    .B(_009_),
    .Y(_078_)
  );
  NAND _264_ (
    .A(_077_),
    .B(_078_),
    .Y(_079_)
  );
  NAND _265_ (
    .A(reset),
    .B(_079_),
    .Y(_080_)
  );
  NAND _266_ (
    .A(data_output[13]),
    .B(_015_),
    .Y(_081_)
  );
  NAND _267_ (
    .A(_080_),
    .B(_081_),
    .Y(_000_[13])
  );
  NAND _268_ (
    .A(lane_1[14]),
    .B(_006_),
    .Y(_082_)
  );
  NAND _269_ (
    .A(lane_0[14]),
    .B(_009_),
    .Y(_083_)
  );
  NAND _270_ (
    .A(_082_),
    .B(_083_),
    .Y(_084_)
  );
  NAND _271_ (
    .A(reset),
    .B(_084_),
    .Y(_085_)
  );
  NAND _272_ (
    .A(data_output[14]),
    .B(_015_),
    .Y(_086_)
  );
  NAND _273_ (
    .A(_085_),
    .B(_086_),
    .Y(_000_[14])
  );
  NAND _274_ (
    .A(lane_1[15]),
    .B(_006_),
    .Y(_087_)
  );
  NAND _275_ (
    .A(lane_0[15]),
    .B(_009_),
    .Y(_088_)
  );
  NAND _276_ (
    .A(_087_),
    .B(_088_),
    .Y(_089_)
  );
  NAND _277_ (
    .A(reset),
    .B(_089_),
    .Y(_090_)
  );
  NAND _278_ (
    .A(data_output[15]),
    .B(_015_),
    .Y(_091_)
  );
  NAND _279_ (
    .A(_090_),
    .B(_091_),
    .Y(_000_[15])
  );
  NAND _280_ (
    .A(lane_1[16]),
    .B(_006_),
    .Y(_092_)
  );
  NAND _281_ (
    .A(lane_0[16]),
    .B(_009_),
    .Y(_093_)
  );
  NAND _282_ (
    .A(_092_),
    .B(_093_),
    .Y(_094_)
  );
  NAND _283_ (
    .A(reset),
    .B(_094_),
    .Y(_095_)
  );
  NAND _284_ (
    .A(data_output[16]),
    .B(_015_),
    .Y(_096_)
  );
  NAND _285_ (
    .A(_095_),
    .B(_096_),
    .Y(_000_[16])
  );
  NAND _286_ (
    .A(lane_1[17]),
    .B(_006_),
    .Y(_097_)
  );
  NAND _287_ (
    .A(lane_0[17]),
    .B(_009_),
    .Y(_098_)
  );
  NAND _288_ (
    .A(_097_),
    .B(_098_),
    .Y(_099_)
  );
  NAND _289_ (
    .A(reset),
    .B(_099_),
    .Y(_100_)
  );
  NAND _290_ (
    .A(data_output[17]),
    .B(_015_),
    .Y(_101_)
  );
  NAND _291_ (
    .A(_100_),
    .B(_101_),
    .Y(_000_[17])
  );
  NAND _292_ (
    .A(lane_1[18]),
    .B(_006_),
    .Y(_102_)
  );
  NAND _293_ (
    .A(lane_0[18]),
    .B(_009_),
    .Y(_103_)
  );
  NAND _294_ (
    .A(_102_),
    .B(_103_),
    .Y(_104_)
  );
  NAND _295_ (
    .A(reset),
    .B(_104_),
    .Y(_105_)
  );
  NAND _296_ (
    .A(data_output[18]),
    .B(_015_),
    .Y(_106_)
  );
  NAND _297_ (
    .A(_105_),
    .B(_106_),
    .Y(_000_[18])
  );
  NAND _298_ (
    .A(lane_1[19]),
    .B(_006_),
    .Y(_107_)
  );
  NAND _299_ (
    .A(lane_0[19]),
    .B(_009_),
    .Y(_108_)
  );
  NAND _300_ (
    .A(_107_),
    .B(_108_),
    .Y(_109_)
  );
  NAND _301_ (
    .A(reset),
    .B(_109_),
    .Y(_110_)
  );
  NAND _302_ (
    .A(data_output[19]),
    .B(_015_),
    .Y(_111_)
  );
  NAND _303_ (
    .A(_110_),
    .B(_111_),
    .Y(_000_[19])
  );
  NAND _304_ (
    .A(lane_1[20]),
    .B(_006_),
    .Y(_112_)
  );
  NAND _305_ (
    .A(lane_0[20]),
    .B(_009_),
    .Y(_113_)
  );
  NAND _306_ (
    .A(_112_),
    .B(_113_),
    .Y(_114_)
  );
  NAND _307_ (
    .A(reset),
    .B(_114_),
    .Y(_115_)
  );
  NAND _308_ (
    .A(data_output[20]),
    .B(_015_),
    .Y(_116_)
  );
  NAND _309_ (
    .A(_115_),
    .B(_116_),
    .Y(_000_[20])
  );
  NAND _310_ (
    .A(lane_1[21]),
    .B(_006_),
    .Y(_117_)
  );
  NAND _311_ (
    .A(lane_0[21]),
    .B(_009_),
    .Y(_118_)
  );
  NAND _312_ (
    .A(_117_),
    .B(_118_),
    .Y(_119_)
  );
  NAND _313_ (
    .A(reset),
    .B(_119_),
    .Y(_120_)
  );
  NAND _314_ (
    .A(data_output[21]),
    .B(_015_),
    .Y(_121_)
  );
  NAND _315_ (
    .A(_120_),
    .B(_121_),
    .Y(_000_[21])
  );
  NAND _316_ (
    .A(lane_1[22]),
    .B(_006_),
    .Y(_122_)
  );
  NAND _317_ (
    .A(lane_0[22]),
    .B(_009_),
    .Y(_123_)
  );
  NAND _318_ (
    .A(_122_),
    .B(_123_),
    .Y(_124_)
  );
  NAND _319_ (
    .A(reset),
    .B(_124_),
    .Y(_125_)
  );
  NAND _320_ (
    .A(data_output[22]),
    .B(_015_),
    .Y(_126_)
  );
  NAND _321_ (
    .A(_125_),
    .B(_126_),
    .Y(_000_[22])
  );
  NAND _322_ (
    .A(lane_1[23]),
    .B(_006_),
    .Y(_127_)
  );
  NAND _323_ (
    .A(lane_0[23]),
    .B(_009_),
    .Y(_128_)
  );
  NAND _324_ (
    .A(_127_),
    .B(_128_),
    .Y(_129_)
  );
  NAND _325_ (
    .A(reset),
    .B(_129_),
    .Y(_130_)
  );
  NAND _326_ (
    .A(data_output[23]),
    .B(_015_),
    .Y(_131_)
  );
  NAND _327_ (
    .A(_130_),
    .B(_131_),
    .Y(_000_[23])
  );
  NAND _328_ (
    .A(lane_1[24]),
    .B(_006_),
    .Y(_132_)
  );
  NAND _329_ (
    .A(lane_0[24]),
    .B(_009_),
    .Y(_133_)
  );
  NAND _330_ (
    .A(_132_),
    .B(_133_),
    .Y(_134_)
  );
  NAND _331_ (
    .A(reset),
    .B(_134_),
    .Y(_135_)
  );
  NAND _332_ (
    .A(data_output[24]),
    .B(_015_),
    .Y(_136_)
  );
  NAND _333_ (
    .A(_135_),
    .B(_136_),
    .Y(_000_[24])
  );
  NAND _334_ (
    .A(lane_1[25]),
    .B(_006_),
    .Y(_137_)
  );
  NAND _335_ (
    .A(lane_0[25]),
    .B(_009_),
    .Y(_138_)
  );
  NAND _336_ (
    .A(_137_),
    .B(_138_),
    .Y(_139_)
  );
  NAND _337_ (
    .A(reset),
    .B(_139_),
    .Y(_140_)
  );
  NAND _338_ (
    .A(data_output[25]),
    .B(_015_),
    .Y(_141_)
  );
  NAND _339_ (
    .A(_140_),
    .B(_141_),
    .Y(_000_[25])
  );
  NAND _340_ (
    .A(lane_1[26]),
    .B(_006_),
    .Y(_142_)
  );
  NAND _341_ (
    .A(lane_0[26]),
    .B(_009_),
    .Y(_143_)
  );
  NAND _342_ (
    .A(_142_),
    .B(_143_),
    .Y(_144_)
  );
  NAND _343_ (
    .A(reset),
    .B(_144_),
    .Y(_145_)
  );
  NAND _344_ (
    .A(data_output[26]),
    .B(_015_),
    .Y(_146_)
  );
  NAND _345_ (
    .A(_145_),
    .B(_146_),
    .Y(_000_[26])
  );
  NAND _346_ (
    .A(lane_1[27]),
    .B(_006_),
    .Y(_147_)
  );
  NAND _347_ (
    .A(lane_0[27]),
    .B(_009_),
    .Y(_148_)
  );
  NAND _348_ (
    .A(_147_),
    .B(_148_),
    .Y(_149_)
  );
  NAND _349_ (
    .A(reset),
    .B(_149_),
    .Y(_150_)
  );
  NAND _350_ (
    .A(data_output[27]),
    .B(_015_),
    .Y(_151_)
  );
  NAND _351_ (
    .A(_150_),
    .B(_151_),
    .Y(_000_[27])
  );
  NAND _352_ (
    .A(lane_1[28]),
    .B(_006_),
    .Y(_152_)
  );
  NAND _353_ (
    .A(lane_0[28]),
    .B(_009_),
    .Y(_153_)
  );
  NAND _354_ (
    .A(_152_),
    .B(_153_),
    .Y(_154_)
  );
  NAND _355_ (
    .A(reset),
    .B(_154_),
    .Y(_155_)
  );
  NAND _356_ (
    .A(data_output[28]),
    .B(_015_),
    .Y(_156_)
  );
  NAND _357_ (
    .A(_155_),
    .B(_156_),
    .Y(_000_[28])
  );
  NAND _358_ (
    .A(lane_1[29]),
    .B(_006_),
    .Y(_157_)
  );
  NAND _359_ (
    .A(lane_0[29]),
    .B(_009_),
    .Y(_158_)
  );
  NAND _360_ (
    .A(_157_),
    .B(_158_),
    .Y(_159_)
  );
  NAND _361_ (
    .A(reset),
    .B(_159_),
    .Y(_160_)
  );
  NAND _362_ (
    .A(data_output[29]),
    .B(_015_),
    .Y(_161_)
  );
  NAND _363_ (
    .A(_160_),
    .B(_161_),
    .Y(_000_[29])
  );
  NAND _364_ (
    .A(lane_1[30]),
    .B(_006_),
    .Y(_162_)
  );
  NAND _365_ (
    .A(lane_0[30]),
    .B(_009_),
    .Y(_163_)
  );
  NAND _366_ (
    .A(_162_),
    .B(_163_),
    .Y(_164_)
  );
  NAND _367_ (
    .A(reset),
    .B(_164_),
    .Y(_165_)
  );
  NAND _368_ (
    .A(data_output[30]),
    .B(_015_),
    .Y(_166_)
  );
  NAND _369_ (
    .A(_165_),
    .B(_166_),
    .Y(_000_[30])
  );
  NAND _370_ (
    .A(lane_1[31]),
    .B(_006_),
    .Y(_167_)
  );
  NAND _371_ (
    .A(lane_0[31]),
    .B(_009_),
    .Y(_168_)
  );
  NAND _372_ (
    .A(_167_),
    .B(_168_),
    .Y(_169_)
  );
  NAND _373_ (
    .A(reset),
    .B(_169_),
    .Y(_170_)
  );
  NAND _374_ (
    .A(data_output[31]),
    .B(_015_),
    .Y(_171_)
  );
  NAND _375_ (
    .A(_170_),
    .B(_171_),
    .Y(_000_[31])
  );
  NOR _376_ (
    .A(sel),
    .B(valid_0),
    .Y(_172_)
  );
  NAND _377_ (
    .A(reset),
    .B(_007_),
    .Y(_173_)
  );
  NOR _378_ (
    .A(_172_),
    .B(_173_),
    .Y(_001_)
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _379_ (
    .C(clk_2f),
    .D(_000_[0]),
    .Q(data_output[0])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _380_ (
    .C(clk_2f),
    .D(_000_[1]),
    .Q(data_output[1])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _381_ (
    .C(clk_2f),
    .D(_000_[2]),
    .Q(data_output[2])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _382_ (
    .C(clk_2f),
    .D(_000_[3]),
    .Q(data_output[3])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _383_ (
    .C(clk_2f),
    .D(_000_[4]),
    .Q(data_output[4])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _384_ (
    .C(clk_2f),
    .D(_000_[5]),
    .Q(data_output[5])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _385_ (
    .C(clk_2f),
    .D(_000_[6]),
    .Q(data_output[6])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _386_ (
    .C(clk_2f),
    .D(_000_[7]),
    .Q(data_output[7])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _387_ (
    .C(clk_2f),
    .D(_000_[8]),
    .Q(data_output[8])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _388_ (
    .C(clk_2f),
    .D(_000_[9]),
    .Q(data_output[9])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _389_ (
    .C(clk_2f),
    .D(_000_[10]),
    .Q(data_output[10])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _390_ (
    .C(clk_2f),
    .D(_000_[11]),
    .Q(data_output[11])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _391_ (
    .C(clk_2f),
    .D(_000_[12]),
    .Q(data_output[12])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _392_ (
    .C(clk_2f),
    .D(_000_[13]),
    .Q(data_output[13])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _393_ (
    .C(clk_2f),
    .D(_000_[14]),
    .Q(data_output[14])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _394_ (
    .C(clk_2f),
    .D(_000_[15]),
    .Q(data_output[15])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _395_ (
    .C(clk_2f),
    .D(_000_[16]),
    .Q(data_output[16])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _396_ (
    .C(clk_2f),
    .D(_000_[17]),
    .Q(data_output[17])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _397_ (
    .C(clk_2f),
    .D(_000_[18]),
    .Q(data_output[18])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _398_ (
    .C(clk_2f),
    .D(_000_[19]),
    .Q(data_output[19])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _399_ (
    .C(clk_2f),
    .D(_000_[20]),
    .Q(data_output[20])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _400_ (
    .C(clk_2f),
    .D(_000_[21]),
    .Q(data_output[21])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _401_ (
    .C(clk_2f),
    .D(_000_[22]),
    .Q(data_output[22])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _402_ (
    .C(clk_2f),
    .D(_000_[23]),
    .Q(data_output[23])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _403_ (
    .C(clk_2f),
    .D(_000_[24]),
    .Q(data_output[24])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _404_ (
    .C(clk_2f),
    .D(_000_[25]),
    .Q(data_output[25])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _405_ (
    .C(clk_2f),
    .D(_000_[26]),
    .Q(data_output[26])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _406_ (
    .C(clk_2f),
    .D(_000_[27]),
    .Q(data_output[27])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _407_ (
    .C(clk_2f),
    .D(_000_[28]),
    .Q(data_output[28])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _408_ (
    .C(clk_2f),
    .D(_000_[29]),
    .Q(data_output[29])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _409_ (
    .C(clk_2f),
    .D(_000_[30]),
    .Q(data_output[30])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _410_ (
    .C(clk_2f),
    .D(_000_[31]),
    .Q(data_output[31])
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _411_ (
    .C(clk_2f),
    .D(_002_),
    .Q(valid_out)
  );
  (* src = "mux_striping_sintetizado.v:13" *)
  DFF _412_ (
    .C(clk_2f),
    .D(_001_),
    .Q(sel)
  );
endmodule
