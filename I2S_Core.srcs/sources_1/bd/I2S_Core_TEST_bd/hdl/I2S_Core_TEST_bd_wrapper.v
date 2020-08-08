//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Aug  4 03:58:48 2020
//Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
//Command     : generate_target I2S_Core_TEST_bd_wrapper.bd
//Design      : I2S_Core_TEST_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module I2S_Core_TEST_bd_wrapper
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
  output ac_bclk;
  output ac_mclk;
  output ac_muten;
  output ac_pbdat;
  output ac_pblrc;
  input ac_recdat;
  output ac_reclrc;
  inout ac_scl;
  inout ac_sda;
  output [7:0]jc;
  input reset_btn;
  input [3:0]sw;
  input sysclk;
  output test_scl;
  output test_sda;

  wire ac_bclk;
  wire ac_mclk;
  wire ac_muten;
  wire ac_pbdat;
  wire ac_pblrc;
  wire ac_recdat;
  wire ac_reclrc;
  wire ac_scl;
  wire ac_sda;
  wire [7:0]jc;
  wire reset_btn;
  wire [3:0]sw;
  wire sysclk;
  wire test_scl;
  wire test_sda;

  I2S_Core_TEST_bd I2S_Core_TEST_bd_i
       (.ac_bclk(ac_bclk),
        .ac_mclk(ac_mclk),
        .ac_muten(ac_muten),
        .ac_pbdat(ac_pbdat),
        .ac_pblrc(ac_pblrc),
        .ac_recdat(ac_recdat),
        .ac_reclrc(ac_reclrc),
        .ac_scl(ac_scl),
        .ac_sda(ac_sda),
        .jc(jc),
        .reset_btn(reset_btn),
        .sw(sw),
        .sysclk(sysclk),
        .test_scl(test_scl),
        .test_sda(test_sda));
endmodule
