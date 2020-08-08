// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:I2S_Core_AXI:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module I2S_AXI_test_I2S_Core_AXI_0_0 (
  clk,
  rst,
  mclk,
  audio_mclk,
  bclk_i,
  bclk_o,
  i2s_tx_dat,
  i2s_tx_lrc_i,
  i2s_tx_lrc_o,
  i2s_rx_dat,
  i2s_rx_lrc_i,
  i2s_rx_lrc_o,
  interrupt,
  S_AXI4_AWID,
  S_AXI4_AWADDR,
  S_AXI4_AWPROT,
  S_AXI4_AWVALID,
  S_AXI4_AWREADY,
  S_AXI4_WID,
  S_AXI4_WDATA,
  S_AXI4_WSTRB,
  S_AXI4_WVALID,
  S_AXI4_WREADY,
  S_AXI4_BID,
  S_AXI4_BRESP,
  S_AXI4_BVALID,
  S_AXI4_BREADY,
  S_AXI4_ARID,
  S_AXI4_ARADDR,
  S_AXI4_ARPROT,
  S_AXI4_ARVALID,
  S_AXI4_ARREADY,
  S_AXI4_RID,
  S_AXI4_RDATA,
  S_AXI4_RRESP,
  S_AXI4_RVALID,
  S_AXI4_RREADY
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S_AXI4, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN I2S_AXI_test_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire mclk;
output wire audio_mclk;
input wire bclk_i;
output wire bclk_o;
output wire i2s_tx_dat;
input wire i2s_tx_lrc_i;
output wire i2s_tx_lrc_o;
input wire i2s_rx_dat;
input wire i2s_rx_lrc_i;
output wire i2s_rx_lrc_o;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 AWID" *)
input wire [11 : 0] S_AXI4_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 AWADDR" *)
input wire [31 : 0] S_AXI4_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 AWPROT" *)
input wire [2 : 0] S_AXI4_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 AWVALID" *)
input wire S_AXI4_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 AWREADY" *)
output wire S_AXI4_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 WID" *)
input wire [11 : 0] S_AXI4_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 WDATA" *)
input wire [31 : 0] S_AXI4_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 WSTRB" *)
input wire [3 : 0] S_AXI4_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 WVALID" *)
input wire S_AXI4_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 WREADY" *)
output wire S_AXI4_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 BID" *)
output wire [11 : 0] S_AXI4_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 BRESP" *)
output wire [1 : 0] S_AXI4_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 BVALID" *)
output wire S_AXI4_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 BREADY" *)
input wire S_AXI4_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 ARID" *)
input wire [11 : 0] S_AXI4_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 ARADDR" *)
input wire [31 : 0] S_AXI4_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 ARPROT" *)
input wire [2 : 0] S_AXI4_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 ARVALID" *)
input wire S_AXI4_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 ARREADY" *)
output wire S_AXI4_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 RID" *)
output wire [11 : 0] S_AXI4_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 RDATA" *)
output wire [31 : 0] S_AXI4_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 RRESP" *)
output wire [1 : 0] S_AXI4_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 RVALID" *)
output wire S_AXI4_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI4, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN I2S_AXI_test_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS \
1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI4 RREADY" *)
input wire S_AXI4_RREADY;

  I2S_Core_AXI #(
    .AXI_D_WIDTH(32),
    .AXI_A_WIDTH(32),
    .AXI_ID_WIDTH(12),
    .MASTER_MODE(1),
    .MCLK_HZ(12288000),
    .SAMPLE_RATE_HZ(48000),
    .TX_SAMPLE_WIDTH(16),
    .RX_SAMPLE_WIDTH(16),
    .PRE_PAD(1),
    .POST_PAD(0)
  ) inst (
    .clk(clk),
    .rst(rst),
    .mclk(mclk),
    .audio_mclk(audio_mclk),
    .bclk_i(bclk_i),
    .bclk_o(bclk_o),
    .i2s_tx_dat(i2s_tx_dat),
    .i2s_tx_lrc_i(i2s_tx_lrc_i),
    .i2s_tx_lrc_o(i2s_tx_lrc_o),
    .i2s_rx_dat(i2s_rx_dat),
    .i2s_rx_lrc_i(i2s_rx_lrc_i),
    .i2s_rx_lrc_o(i2s_rx_lrc_o),
    .interrupt(interrupt),
    .S_AXI4_AWID(S_AXI4_AWID),
    .S_AXI4_AWADDR(S_AXI4_AWADDR),
    .S_AXI4_AWPROT(S_AXI4_AWPROT),
    .S_AXI4_AWVALID(S_AXI4_AWVALID),
    .S_AXI4_AWREADY(S_AXI4_AWREADY),
    .S_AXI4_WID(S_AXI4_WID),
    .S_AXI4_WDATA(S_AXI4_WDATA),
    .S_AXI4_WSTRB(S_AXI4_WSTRB),
    .S_AXI4_WVALID(S_AXI4_WVALID),
    .S_AXI4_WREADY(S_AXI4_WREADY),
    .S_AXI4_BID(S_AXI4_BID),
    .S_AXI4_BRESP(S_AXI4_BRESP),
    .S_AXI4_BVALID(S_AXI4_BVALID),
    .S_AXI4_BREADY(S_AXI4_BREADY),
    .S_AXI4_ARID(S_AXI4_ARID),
    .S_AXI4_ARADDR(S_AXI4_ARADDR),
    .S_AXI4_ARPROT(S_AXI4_ARPROT),
    .S_AXI4_ARVALID(S_AXI4_ARVALID),
    .S_AXI4_ARREADY(S_AXI4_ARREADY),
    .S_AXI4_RID(S_AXI4_RID),
    .S_AXI4_RDATA(S_AXI4_RDATA),
    .S_AXI4_RRESP(S_AXI4_RRESP),
    .S_AXI4_RVALID(S_AXI4_RVALID),
    .S_AXI4_RREADY(S_AXI4_RREADY)
  );
endmodule
