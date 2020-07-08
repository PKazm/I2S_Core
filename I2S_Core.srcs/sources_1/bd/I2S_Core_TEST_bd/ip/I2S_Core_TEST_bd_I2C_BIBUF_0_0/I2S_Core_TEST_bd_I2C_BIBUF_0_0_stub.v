// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Jul  6 14:13:51 2020
// Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Github_Repos/I2S_Core/I2S_Core.srcs/sources_1/bd/I2S_Core_TEST_bd/ip/I2S_Core_TEST_bd_I2C_BIBUF_0_0/I2S_Core_TEST_bd_I2C_BIBUF_0_0_stub.v
// Design      : I2S_Core_TEST_bd_I2C_BIBUF_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "I2C_BIBUF,Vivado 2020.1" *)
module I2S_Core_TEST_bd_I2C_BIBUF_0_0(i2c_sda, i2c_scl, i2c_sda_e, i2c_sda_i, 
  i2c_sda_o, i2c_scl_e, i2c_scl_i, i2c_scl_o)
/* synthesis syn_black_box black_box_pad_pin="i2c_sda,i2c_scl,i2c_sda_e,i2c_sda_i,i2c_sda_o,i2c_scl_e,i2c_scl_i,i2c_scl_o" */;
  inout i2c_sda;
  inout i2c_scl;
  input i2c_sda_e;
  input i2c_sda_i;
  output i2c_sda_o;
  input i2c_scl_e;
  input i2c_scl_i;
  output i2c_scl_o;
endmodule
