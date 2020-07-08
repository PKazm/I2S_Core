//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Jul  7 15:27:12 2020
//Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
//Command     : generate_target I2S_Core_TEST_bd.bd
//Design      : I2S_Core_TEST_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "I2S_Core_TEST_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=I2S_Core_TEST_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "I2S_Core_TEST_bd.hwdef" *) 
module I2S_Core_TEST_bd
   (ac_bclk,
    ac_mclk,
    ac_muten,
    ac_pbdat,
    ac_pblrc,
    ac_recdat,
    ac_reclrc,
    ac_scl,
    ac_sda,
    jc,
    reset_btn,
    sw,
    sysclk,
    test_scl,
    test_sda);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AC_BCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AC_BCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output ac_bclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AC_MCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AC_MCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output ac_mclk;
  output ac_muten;
  output ac_pbdat;
  output ac_pblrc;
  input ac_recdat;
  output ac_reclrc;
  inout ac_scl;
  inout ac_sda;
  output [7:0]jc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_BTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_BTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_btn;
  input [3:0]sw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN I2S_Core_TEST_bd_sysclk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sysclk;
  output test_scl;
  output test_sda;

  wire I2C_BIBUF_0_i2c_scl_o;
  wire I2C_BIBUF_0_i2c_sda_o;
  wire I2S_Core_TEST_0_audio_mclk;
  wire I2S_Core_TEST_0_audio_mute;
  wire I2S_Core_TEST_0_i2s_bclk;
  wire I2S_Core_TEST_0_i2s_pbdat;
  wire I2S_Core_TEST_0_i2s_pblrc;
  wire I2S_Core_TEST_0_i2s_reclrc;
  wire [7:0]I2S_Core_TEST_0_jc;
  wire Net;
  wire Net1;
  wire ac_recdat_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_1_clk_out1;
  wire processing_system7_0_I2C0_SCL_O;
  wire processing_system7_0_I2C0_SCL_T;
  wire processing_system7_0_I2C0_SDA_O;
  wire processing_system7_0_I2C0_SDA_T;
  wire reset_btn_1;
  wire [3:0]sw_1;
  wire sysclk_1;

  assign ac_bclk = I2S_Core_TEST_0_i2s_bclk;
  assign ac_mclk = I2S_Core_TEST_0_audio_mclk;
  assign ac_muten = I2S_Core_TEST_0_audio_mute;
  assign ac_pbdat = I2S_Core_TEST_0_i2s_pbdat;
  assign ac_pblrc = I2S_Core_TEST_0_i2s_pblrc;
  assign ac_recdat_1 = ac_recdat;
  assign ac_reclrc = I2S_Core_TEST_0_i2s_reclrc;
  assign jc[7:0] = I2S_Core_TEST_0_jc;
  assign reset_btn_1 = reset_btn;
  assign sw_1 = sw[3:0];
  assign sysclk_1 = sysclk;
  assign test_scl = I2C_BIBUF_0_i2c_scl_o;
  assign test_sda = I2C_BIBUF_0_i2c_sda_o;
  I2S_Core_TEST_bd_I2C_BIBUF_0_0 I2C_BIBUF_0
       (.i2c_scl(ac_scl),
        .i2c_scl_e(processing_system7_0_I2C0_SCL_T),
        .i2c_scl_i(processing_system7_0_I2C0_SCL_O),
        .i2c_scl_o(I2C_BIBUF_0_i2c_scl_o),
        .i2c_sda(ac_sda),
        .i2c_sda_e(processing_system7_0_I2C0_SDA_T),
        .i2c_sda_i(processing_system7_0_I2C0_SDA_O),
        .i2c_sda_o(I2C_BIBUF_0_i2c_sda_o));
  I2S_Core_TEST_bd_I2S_Core_TEST_0_0 I2S_Core_TEST_0
       (.audio_mclk(I2S_Core_TEST_0_audio_mclk),
        .audio_mute_n(I2S_Core_TEST_0_audio_mute),
        .clk(clk_wiz_0_clk_out1),
        .i2s_bclk(I2S_Core_TEST_0_i2s_bclk),
        .i2s_pbdat(I2S_Core_TEST_0_i2s_pbdat),
        .i2s_pblrc(I2S_Core_TEST_0_i2s_pblrc),
        .i2s_recdat(ac_recdat_1),
        .i2s_reclrc(I2S_Core_TEST_0_i2s_reclrc),
        .jc(I2S_Core_TEST_0_jc),
        .mclk(clk_wiz_1_clk_out1),
        .rst(reset_btn_1),
        .sw(sw_1));
  I2S_Core_TEST_bd_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(sysclk_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(1'b0));
  I2S_Core_TEST_bd_clk_wiz_1_1 clk_wiz_1
       (.clk_in1(clk_wiz_0_clk_out1),
        .clk_out1(clk_wiz_1_clk_out1),
        .reset(1'b0));
  I2S_Core_TEST_bd_processing_system7_0_0 processing_system7_0
       (.I2C0_SCL_I(I2C_BIBUF_0_i2c_scl_o),
        .I2C0_SCL_O(processing_system7_0_I2C0_SCL_O),
        .I2C0_SCL_T(processing_system7_0_I2C0_SCL_T),
        .I2C0_SDA_I(I2C_BIBUF_0_i2c_sda_o),
        .I2C0_SDA_O(processing_system7_0_I2C0_SDA_O),
        .I2C0_SDA_T(processing_system7_0_I2C0_SDA_T));
endmodule
