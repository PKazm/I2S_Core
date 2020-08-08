//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Aug  8 13:21:12 2020
//Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
//Command     : generate_target I2S_AXI_test_wrapper.bd
//Design      : I2S_AXI_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module I2S_AXI_test_wrapper
   (audio_mclk,
    bclk_i,
    bclk_o,
    clk,
    i2s_rx_dat,
    i2s_rx_lrc_i,
    i2s_rx_lrc_o,
    i2s_tx_dat,
    i2s_tx_lrc_i,
    i2s_tx_lrc_o,
    interrupt,
    mclk,
    rst,
    rstn);
  output audio_mclk;
  input bclk_i;
  output bclk_o;
  input clk;
  input i2s_rx_dat;
  input i2s_rx_lrc_i;
  output i2s_rx_lrc_o;
  output i2s_tx_dat;
  input i2s_tx_lrc_i;
  output i2s_tx_lrc_o;
  output interrupt;
  input mclk;
  input rst;
  input rstn;

  wire audio_mclk;
  wire bclk_i;
  wire bclk_o;
  wire clk;
  wire i2s_rx_dat;
  wire i2s_rx_lrc_i;
  wire i2s_rx_lrc_o;
  wire i2s_tx_dat;
  wire i2s_tx_lrc_i;
  wire i2s_tx_lrc_o;
  wire interrupt;
  wire mclk;
  wire rst;
  wire rstn;

  I2S_AXI_test I2S_AXI_test_i
       (.audio_mclk(audio_mclk),
        .bclk_i(bclk_i),
        .bclk_o(bclk_o),
        .clk(clk),
        .i2s_rx_dat(i2s_rx_dat),
        .i2s_rx_lrc_i(i2s_rx_lrc_i),
        .i2s_rx_lrc_o(i2s_rx_lrc_o),
        .i2s_tx_dat(i2s_tx_dat),
        .i2s_tx_lrc_i(i2s_tx_lrc_i),
        .i2s_tx_lrc_o(i2s_tx_lrc_o),
        .interrupt(interrupt),
        .mclk(mclk),
        .rst(rst),
        .rstn(rstn));
endmodule
