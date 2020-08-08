//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Aug  8 13:21:12 2020
//Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
//Command     : generate_target I2S_AXI_test.bd
//Design      : I2S_AXI_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "I2S_AXI_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=I2S_AXI_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "I2S_AXI_test.hwdef" *) 
module I2S_AXI_test
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rstn:rst, CLK_DOMAIN I2S_AXI_test_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input i2s_rx_dat;
  input i2s_rx_lrc_i;
  output i2s_rx_lrc_o;
  output i2s_tx_dat;
  input i2s_tx_lrc_i;
  output i2s_tx_lrc_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  input mclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rstn;

  wire I2S_Core_AXI_0_audio_mclk;
  wire I2S_Core_AXI_0_bclk_o;
  wire I2S_Core_AXI_0_i2s_rx_lrc_o;
  wire I2S_Core_AXI_0_i2s_tx_dat;
  wire I2S_Core_AXI_0_i2s_tx_lrc_o;
  wire I2S_Core_AXI_0_interrupt;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire bclk_i_1;
  wire clk_1;
  wire i2s_rx_dat_1;
  wire i2s_rx_lrc_i_1;
  wire i2s_tx_lrc_i_1;
  wire mclk_1;
  wire rst_1;
  wire rstn_1;

  assign audio_mclk = I2S_Core_AXI_0_audio_mclk;
  assign bclk_i_1 = bclk_i;
  assign bclk_o = I2S_Core_AXI_0_bclk_o;
  assign clk_1 = clk;
  assign i2s_rx_dat_1 = i2s_rx_dat;
  assign i2s_rx_lrc_i_1 = i2s_rx_lrc_i;
  assign i2s_rx_lrc_o = I2S_Core_AXI_0_i2s_rx_lrc_o;
  assign i2s_tx_dat = I2S_Core_AXI_0_i2s_tx_dat;
  assign i2s_tx_lrc_i_1 = i2s_tx_lrc_i;
  assign i2s_tx_lrc_o = I2S_Core_AXI_0_i2s_tx_lrc_o;
  assign interrupt = I2S_Core_AXI_0_interrupt;
  assign mclk_1 = mclk;
  assign rst_1 = rst;
  assign rstn_1 = rstn;
  I2S_AXI_test_I2S_Core_AXI_0_0 I2S_Core_AXI_0
       (.S_AXI4_ARADDR(axi_vip_0_M_AXI_ARADDR),
        .S_AXI4_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI4_ARPROT(axi_vip_0_M_AXI_ARPROT),
        .S_AXI4_ARREADY(axi_vip_0_M_AXI_ARREADY),
        .S_AXI4_ARVALID(axi_vip_0_M_AXI_ARVALID),
        .S_AXI4_AWADDR(axi_vip_0_M_AXI_AWADDR),
        .S_AXI4_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI4_AWPROT(axi_vip_0_M_AXI_AWPROT),
        .S_AXI4_AWREADY(axi_vip_0_M_AXI_AWREADY),
        .S_AXI4_AWVALID(axi_vip_0_M_AXI_AWVALID),
        .S_AXI4_BREADY(axi_vip_0_M_AXI_BREADY),
        .S_AXI4_BRESP(axi_vip_0_M_AXI_BRESP),
        .S_AXI4_BVALID(axi_vip_0_M_AXI_BVALID),
        .S_AXI4_RDATA(axi_vip_0_M_AXI_RDATA),
        .S_AXI4_RREADY(axi_vip_0_M_AXI_RREADY),
        .S_AXI4_RRESP(axi_vip_0_M_AXI_RRESP),
        .S_AXI4_RVALID(axi_vip_0_M_AXI_RVALID),
        .S_AXI4_WDATA(axi_vip_0_M_AXI_WDATA),
        .S_AXI4_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI4_WREADY(axi_vip_0_M_AXI_WREADY),
        .S_AXI4_WSTRB(axi_vip_0_M_AXI_WSTRB),
        .S_AXI4_WVALID(axi_vip_0_M_AXI_WVALID),
        .audio_mclk(I2S_Core_AXI_0_audio_mclk),
        .bclk_i(bclk_i_1),
        .bclk_o(I2S_Core_AXI_0_bclk_o),
        .clk(clk_1),
        .i2s_rx_dat(i2s_rx_dat_1),
        .i2s_rx_lrc_i(i2s_rx_lrc_i_1),
        .i2s_rx_lrc_o(I2S_Core_AXI_0_i2s_rx_lrc_o),
        .i2s_tx_dat(I2S_Core_AXI_0_i2s_tx_dat),
        .i2s_tx_lrc_i(i2s_tx_lrc_i_1),
        .i2s_tx_lrc_o(I2S_Core_AXI_0_i2s_tx_lrc_o),
        .interrupt(I2S_Core_AXI_0_interrupt),
        .mclk(mclk_1),
        .rst(rst_1));
  I2S_AXI_test_axi_vip_0_0 axi_vip_0
       (.aclk(clk_1),
        .aresetn(rstn_1),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
endmodule
