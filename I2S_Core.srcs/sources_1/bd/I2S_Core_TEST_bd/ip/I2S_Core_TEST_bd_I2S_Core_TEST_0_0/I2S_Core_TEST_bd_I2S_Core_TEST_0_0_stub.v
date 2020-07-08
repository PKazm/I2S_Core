// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Jul  7 15:28:14 2020
// Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Github_Repos/I2S_Core/I2S_Core.srcs/sources_1/bd/I2S_Core_TEST_bd/ip/I2S_Core_TEST_bd_I2S_Core_TEST_0_0/I2S_Core_TEST_bd_I2S_Core_TEST_0_0_stub.v
// Design      : I2S_Core_TEST_bd_I2S_Core_TEST_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "I2S_Core_TEST,Vivado 2020.1" *)
module I2S_Core_TEST_bd_I2S_Core_TEST_0_0(clk, rst, mclk, audio_mclk, i2s_bclk, i2s_pbdat, 
  i2s_pblrc, i2s_recdat, i2s_reclrc, audio_mute_n, sw, jc)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,mclk,audio_mclk,i2s_bclk,i2s_pbdat,i2s_pblrc,i2s_recdat,i2s_reclrc,audio_mute_n,sw[3:0],jc[7:0]" */;
  input clk;
  input rst;
  input mclk;
  output audio_mclk;
  output i2s_bclk;
  output i2s_pbdat;
  output i2s_pblrc;
  input i2s_recdat;
  output i2s_reclrc;
  output audio_mute_n;
  input [3:0]sw;
  output [7:0]jc;
endmodule
