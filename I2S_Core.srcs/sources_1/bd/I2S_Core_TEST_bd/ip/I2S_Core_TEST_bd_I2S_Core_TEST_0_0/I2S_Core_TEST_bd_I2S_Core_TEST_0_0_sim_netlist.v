// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Jul  7 15:28:14 2020
// Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Github_Repos/I2S_Core/I2S_Core.srcs/sources_1/bd/I2S_Core_TEST_bd/ip/I2S_Core_TEST_bd_I2S_Core_TEST_0_0/I2S_Core_TEST_bd_I2S_Core_TEST_0_0_sim_netlist.v
// Design      : I2S_Core_TEST_bd_I2S_Core_TEST_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2S_Core_TEST_bd_I2S_Core_TEST_0_0,I2S_Core_TEST,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "I2S_Core_TEST,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module I2S_Core_TEST_bd_I2S_Core_TEST_0_0
   (clk,
    rst,
    mclk,
    audio_mclk,
    i2s_bclk,
    i2s_pbdat,
    i2s_pblrc,
    i2s_recdat,
    i2s_reclrc,
    audio_mute_n,
    sw,
    jc);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
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

  wire \<const0> ;
  wire audio_mute_n;
  wire clk;
  wire i2s_recdat;
  wire [6:0]\^jc ;
  wire mclk;
  wire rst;
  wire [3:0]sw;

  assign audio_mclk = mclk;
  assign i2s_bclk = \^jc [0];
  assign i2s_pbdat = \^jc [1];
  assign i2s_pblrc = \^jc [2];
  assign i2s_reclrc = \^jc [6];
  assign jc[7] = \<const0> ;
  assign jc[6] = \^jc [6];
  assign jc[5] = i2s_recdat;
  assign jc[4] = \^jc [0];
  assign jc[3] = mclk;
  assign jc[2:0] = \^jc [2:0];
  GND GND
       (.G(\<const0> ));
  I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Core_TEST inst
       (.audio_mute_n(audio_mute_n),
        .clk(clk),
        .i2s_recdat(i2s_recdat),
        .jc({\^jc [0],\^jc [1]}),
        .mclk(mclk),
        .rst(rst),
        .rx_lrc_reg(\^jc [6]),
        .sw(sw),
        .tx_lrc_reg(\^jc [2]));
endmodule

(* ORIG_REF_NAME = "Clock_Divider_PWM_Dynamic" *) 
module I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Clock_Divider_PWM_Dynamic
   (clk_out_reg_0,
    mclk,
    rst);
  output clk_out_reg_0;
  input mclk;
  input rst;

  wire clk_out_i_1_n_0;
  wire clk_out_reg_0;
  wire [1:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire [0:0]cnt_high;
  wire mclk;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h0000F008)) 
    clk_out_i_1
       (.I0(clk_out_reg_0),
        .I1(cnt_high),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(rst),
        .O(clk_out_i_1_n_0));
  FDRE clk_out_reg
       (.C(mclk),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(clk_out_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt[0]_i_1 
       (.I0(rst),
        .I1(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(rst),
        .I2(cnt[1]),
        .O(\cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_high_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(cnt_high),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "I2S_Core_TEST" *) 
module I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Core_TEST
   (rx_lrc_reg,
    tx_lrc_reg,
    jc,
    audio_mute_n,
    rst,
    i2s_recdat,
    mclk,
    clk,
    sw);
  output rx_lrc_reg;
  output tx_lrc_reg;
  output [1:0]jc;
  output audio_mute_n;
  input rst;
  input i2s_recdat;
  input mclk;
  input clk;
  input [3:0]sw;

  wire I2S_TRX_n_10;
  wire I2S_TRX_n_11;
  wire I2S_TRX_n_12;
  wire I2S_TRX_n_13;
  wire I2S_TRX_n_14;
  wire I2S_TRX_n_15;
  wire I2S_TRX_n_16;
  wire I2S_TRX_n_4;
  wire I2S_TRX_n_5;
  wire I2S_TRX_n_6;
  wire I2S_TRX_n_8;
  wire I2S_TRX_n_9;
  wire audio_mute_n;
  wire clk;
  wire [23:8]data_rx_l_clk;
  wire [23:8]data_rx_r_clk;
  wire \data_tx_left_reg_n_0_[0] ;
  wire \data_tx_left_reg_n_0_[10] ;
  wire \data_tx_left_reg_n_0_[11] ;
  wire \data_tx_left_reg_n_0_[12] ;
  wire \data_tx_left_reg_n_0_[13] ;
  wire \data_tx_left_reg_n_0_[14] ;
  wire \data_tx_left_reg_n_0_[15] ;
  wire \data_tx_left_reg_n_0_[16] ;
  wire \data_tx_left_reg_n_0_[17] ;
  wire \data_tx_left_reg_n_0_[18] ;
  wire \data_tx_left_reg_n_0_[19] ;
  wire \data_tx_left_reg_n_0_[1] ;
  wire \data_tx_left_reg_n_0_[20] ;
  wire \data_tx_left_reg_n_0_[21] ;
  wire \data_tx_left_reg_n_0_[22] ;
  wire \data_tx_left_reg_n_0_[23] ;
  wire \data_tx_left_reg_n_0_[2] ;
  wire \data_tx_left_reg_n_0_[3] ;
  wire \data_tx_left_reg_n_0_[4] ;
  wire \data_tx_left_reg_n_0_[5] ;
  wire \data_tx_left_reg_n_0_[6] ;
  wire \data_tx_left_reg_n_0_[7] ;
  wire \data_tx_left_reg_n_0_[8] ;
  wire \data_tx_left_reg_n_0_[9] ;
  wire [23:0]data_tx_right;
  wire do_sine;
  wire i2s_recdat;
  wire [1:0]jc;
  wire mclk;
  wire nolabel_line138_n_1;
  wire nolabel_line138_n_10;
  wire nolabel_line138_n_11;
  wire nolabel_line138_n_12;
  wire nolabel_line138_n_13;
  wire nolabel_line138_n_14;
  wire nolabel_line138_n_15;
  wire nolabel_line138_n_16;
  wire nolabel_line138_n_2;
  wire nolabel_line138_n_3;
  wire nolabel_line138_n_34;
  wire nolabel_line138_n_35;
  wire nolabel_line138_n_4;
  wire nolabel_line138_n_5;
  wire nolabel_line138_n_6;
  wire nolabel_line138_n_7;
  wire nolabel_line138_n_8;
  wire nolabel_line138_n_9;
  wire p_0_in;
  wire [23:0]p_2_in;
  wire rst;
  wire rx_lrc_reg;
  wire smpl_dat_msb;
  wire [15:15]smpl_data;
  wire [9:0]smpl_phase;
  wire \smpl_phase[3]_i_2_n_0 ;
  wire \smpl_phase[3]_i_3_n_0 ;
  wire smpl_phase_0;
  wire \smpl_phase_reg[3]_i_1_n_0 ;
  wire \smpl_phase_reg[3]_i_1_n_1 ;
  wire \smpl_phase_reg[3]_i_1_n_2 ;
  wire \smpl_phase_reg[3]_i_1_n_3 ;
  wire \smpl_phase_reg[3]_i_1_n_4 ;
  wire \smpl_phase_reg[3]_i_1_n_5 ;
  wire \smpl_phase_reg[3]_i_1_n_6 ;
  wire \smpl_phase_reg[3]_i_1_n_7 ;
  wire \smpl_phase_reg[7]_i_1_n_0 ;
  wire \smpl_phase_reg[7]_i_1_n_1 ;
  wire \smpl_phase_reg[7]_i_1_n_2 ;
  wire \smpl_phase_reg[7]_i_1_n_3 ;
  wire \smpl_phase_reg[7]_i_1_n_4 ;
  wire \smpl_phase_reg[7]_i_1_n_5 ;
  wire \smpl_phase_reg[7]_i_1_n_6 ;
  wire \smpl_phase_reg[7]_i_1_n_7 ;
  wire \smpl_phase_reg[9]_i_2_n_3 ;
  wire \smpl_phase_reg[9]_i_2_n_6 ;
  wire \smpl_phase_reg[9]_i_2_n_7 ;
  wire [3:0]sw;
  wire tx_lrc_reg;
  wire [3:1]\NLW_smpl_phase_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_smpl_phase_reg[9]_i_2_O_UNCONNECTED ;

  I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transceiver I2S_TRX
       (.D({I2S_TRX_n_9,I2S_TRX_n_10,I2S_TRX_n_11,I2S_TRX_n_12,I2S_TRX_n_13,I2S_TRX_n_14,I2S_TRX_n_15,I2S_TRX_n_16}),
        .E(p_0_in),
        .Q(data_rx_r_clk),
        .SR(I2S_TRX_n_6),
        .clk(clk),
        .\data_rx_l_clk_reg[23]_0 (data_rx_l_clk),
        .\data_rx_l_clk_reg[7]_0 (p_2_in[7:0]),
        .\data_tx_l_clk_reg[23]_0 ({\data_tx_left_reg_n_0_[23] ,\data_tx_left_reg_n_0_[22] ,\data_tx_left_reg_n_0_[21] ,\data_tx_left_reg_n_0_[20] ,\data_tx_left_reg_n_0_[19] ,\data_tx_left_reg_n_0_[18] ,\data_tx_left_reg_n_0_[17] ,\data_tx_left_reg_n_0_[16] ,\data_tx_left_reg_n_0_[15] ,\data_tx_left_reg_n_0_[14] ,\data_tx_left_reg_n_0_[13] ,\data_tx_left_reg_n_0_[12] ,\data_tx_left_reg_n_0_[11] ,\data_tx_left_reg_n_0_[10] ,\data_tx_left_reg_n_0_[9] ,\data_tx_left_reg_n_0_[8] ,\data_tx_left_reg_n_0_[7] ,\data_tx_left_reg_n_0_[6] ,\data_tx_left_reg_n_0_[5] ,\data_tx_left_reg_n_0_[4] ,\data_tx_left_reg_n_0_[3] ,\data_tx_left_reg_n_0_[2] ,\data_tx_left_reg_n_0_[1] ,\data_tx_left_reg_n_0_[0] }),
        .data_tx_left_rdy_pulse_reg_0(I2S_TRX_n_5),
        .\data_tx_r_clk_reg[23]_0 (data_tx_right),
        .data_tx_right_rdy_pulse_reg_0(I2S_TRX_n_4),
        .do_sine(do_sine),
        .do_sine_reg(smpl_phase_0),
        .do_sine_reg_0(I2S_TRX_n_8),
        .i2s_recdat(i2s_recdat),
        .jc(jc),
        .mclk(mclk),
        .rst(rst),
        .rx_lrc_reg_0(rx_lrc_reg),
        .tx_lrc_reg_0(tx_lrc_reg));
  FDRE audio_mute_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(nolabel_line138_n_35),
        .Q(audio_mute_n),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[0] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[0]),
        .Q(\data_tx_left_reg_n_0_[0] ),
        .R(I2S_TRX_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[10] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[10]),
        .Q(\data_tx_left_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[11] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[11]),
        .Q(\data_tx_left_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[12] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[12]),
        .Q(\data_tx_left_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[13] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[13]),
        .Q(\data_tx_left_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[14] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[14]),
        .Q(\data_tx_left_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[15] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[15]),
        .Q(\data_tx_left_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[16] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[16]),
        .Q(\data_tx_left_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[17] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[17]),
        .Q(\data_tx_left_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[18] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[18]),
        .Q(\data_tx_left_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[19] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[19]),
        .Q(\data_tx_left_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[1] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[1]),
        .Q(\data_tx_left_reg_n_0_[1] ),
        .R(I2S_TRX_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[20] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[20]),
        .Q(\data_tx_left_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[21] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[21]),
        .Q(\data_tx_left_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[22] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[22]),
        .Q(\data_tx_left_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[23] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[23]),
        .Q(\data_tx_left_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[2] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[2]),
        .Q(\data_tx_left_reg_n_0_[2] ),
        .R(I2S_TRX_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[3] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[3]),
        .Q(\data_tx_left_reg_n_0_[3] ),
        .R(I2S_TRX_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[4] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[4]),
        .Q(\data_tx_left_reg_n_0_[4] ),
        .R(I2S_TRX_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[5] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[5]),
        .Q(\data_tx_left_reg_n_0_[5] ),
        .R(I2S_TRX_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[6] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[6]),
        .Q(\data_tx_left_reg_n_0_[6] ),
        .R(I2S_TRX_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[7] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[7]),
        .Q(\data_tx_left_reg_n_0_[7] ),
        .R(I2S_TRX_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[8] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[8]),
        .Q(\data_tx_left_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_left_reg[9] 
       (.C(clk),
        .CE(I2S_TRX_n_5),
        .D(p_2_in[9]),
        .Q(\data_tx_left_reg_n_0_[9] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[0] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(I2S_TRX_n_16),
        .Q(data_tx_right[0]),
        .R(I2S_TRX_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[10] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_14),
        .Q(data_tx_right[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[11] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_13),
        .Q(data_tx_right[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[12] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_12),
        .Q(data_tx_right[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[13] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_11),
        .Q(data_tx_right[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[14] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_10),
        .Q(data_tx_right[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[15] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_9),
        .Q(data_tx_right[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[16] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_8),
        .Q(data_tx_right[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[17] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_7),
        .Q(data_tx_right[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[18] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_6),
        .Q(data_tx_right[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[19] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_5),
        .Q(data_tx_right[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[1] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(I2S_TRX_n_15),
        .Q(data_tx_right[1]),
        .R(I2S_TRX_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[20] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_4),
        .Q(data_tx_right[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[21] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_3),
        .Q(data_tx_right[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[22] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_2),
        .Q(data_tx_right[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[23] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_1),
        .Q(data_tx_right[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[2] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(I2S_TRX_n_14),
        .Q(data_tx_right[2]),
        .R(I2S_TRX_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[3] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(I2S_TRX_n_13),
        .Q(data_tx_right[3]),
        .R(I2S_TRX_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[4] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(I2S_TRX_n_12),
        .Q(data_tx_right[4]),
        .R(I2S_TRX_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[5] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(I2S_TRX_n_11),
        .Q(data_tx_right[5]),
        .R(I2S_TRX_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[6] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(I2S_TRX_n_10),
        .Q(data_tx_right[6]),
        .R(I2S_TRX_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[7] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(I2S_TRX_n_9),
        .Q(data_tx_right[7]),
        .R(I2S_TRX_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[8] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_16),
        .Q(data_tx_right[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_right_reg[9] 
       (.C(clk),
        .CE(I2S_TRX_n_4),
        .D(nolabel_line138_n_15),
        .Q(data_tx_right[9]),
        .R(rst));
  FDRE do_sine_reg
       (.C(clk),
        .CE(1'b1),
        .D(nolabel_line138_n_34),
        .Q(do_sine),
        .R(1'b0));
  I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Sine_Wave_Generator nolabel_line138
       (.D({nolabel_line138_n_1,nolabel_line138_n_2,nolabel_line138_n_3,nolabel_line138_n_4,nolabel_line138_n_5,nolabel_line138_n_6,nolabel_line138_n_7,nolabel_line138_n_8,nolabel_line138_n_9,nolabel_line138_n_10,nolabel_line138_n_11,nolabel_line138_n_12,nolabel_line138_n_13,nolabel_line138_n_14,nolabel_line138_n_15,nolabel_line138_n_16}),
        .E(p_0_in),
        .Q(smpl_phase),
        .audio_mute_n(audio_mute_n),
        .clk(clk),
        .\data_tx_left_reg[23] (data_rx_l_clk),
        .\data_tx_right_reg[23] (data_rx_r_clk),
        .do_sine(do_sine),
        .rst(rst),
        .rst_0(nolabel_line138_n_34),
        .smpl_dat_msb(smpl_dat_msb),
        .smpl_dat_msb_reg(nolabel_line138_n_35),
        .\smpl_data_reg[15]_0 (smpl_data),
        .\smpl_data_reg[15]_1 (p_2_in[23:8]),
        .sw(sw[1:0]));
  FDRE smpl_dat_msb_reg
       (.C(clk),
        .CE(1'b1),
        .D(smpl_data),
        .Q(smpl_dat_msb),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \smpl_phase[3]_i_2 
       (.I0(smpl_phase[1]),
        .I1(sw[3]),
        .O(\smpl_phase[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \smpl_phase[3]_i_3 
       (.I0(smpl_phase[0]),
        .I1(sw[2]),
        .O(\smpl_phase[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[0] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[3]_i_1_n_7 ),
        .Q(smpl_phase[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[1] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[3]_i_1_n_6 ),
        .Q(smpl_phase[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[2] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[3]_i_1_n_5 ),
        .Q(smpl_phase[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[3] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[3]_i_1_n_4 ),
        .Q(smpl_phase[3]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \smpl_phase_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\smpl_phase_reg[3]_i_1_n_0 ,\smpl_phase_reg[3]_i_1_n_1 ,\smpl_phase_reg[3]_i_1_n_2 ,\smpl_phase_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,smpl_phase[1:0]}),
        .O({\smpl_phase_reg[3]_i_1_n_4 ,\smpl_phase_reg[3]_i_1_n_5 ,\smpl_phase_reg[3]_i_1_n_6 ,\smpl_phase_reg[3]_i_1_n_7 }),
        .S({smpl_phase[3:2],\smpl_phase[3]_i_2_n_0 ,\smpl_phase[3]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[4] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[7]_i_1_n_7 ),
        .Q(smpl_phase[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[5] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[7]_i_1_n_6 ),
        .Q(smpl_phase[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[6] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[7]_i_1_n_5 ),
        .Q(smpl_phase[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[7] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[7]_i_1_n_4 ),
        .Q(smpl_phase[7]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \smpl_phase_reg[7]_i_1 
       (.CI(\smpl_phase_reg[3]_i_1_n_0 ),
        .CO({\smpl_phase_reg[7]_i_1_n_0 ,\smpl_phase_reg[7]_i_1_n_1 ,\smpl_phase_reg[7]_i_1_n_2 ,\smpl_phase_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\smpl_phase_reg[7]_i_1_n_4 ,\smpl_phase_reg[7]_i_1_n_5 ,\smpl_phase_reg[7]_i_1_n_6 ,\smpl_phase_reg[7]_i_1_n_7 }),
        .S(smpl_phase[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[8] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[9]_i_2_n_7 ),
        .Q(smpl_phase[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \smpl_phase_reg[9] 
       (.C(clk),
        .CE(smpl_phase_0),
        .D(\smpl_phase_reg[9]_i_2_n_6 ),
        .Q(smpl_phase[9]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \smpl_phase_reg[9]_i_2 
       (.CI(\smpl_phase_reg[7]_i_1_n_0 ),
        .CO({\NLW_smpl_phase_reg[9]_i_2_CO_UNCONNECTED [3:1],\smpl_phase_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_smpl_phase_reg[9]_i_2_O_UNCONNECTED [3:2],\smpl_phase_reg[9]_i_2_n_6 ,\smpl_phase_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,smpl_phase[9:8]}));
endmodule

(* ORIG_REF_NAME = "I2S_Receiver" *) 
module I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Receiver
   (E,
    lrc_pulse_reg_0,
    i2s_rx_lrc_d1_reg_0,
    i2s_rx_lrc_d1_reg_1,
    Q,
    i2s_rx_lrc_d1_reg_2,
    \data_store_reg_reg[23]_0 ,
    rst,
    i2s_recdat,
    data_rx_l_rdy_bclk,
    data_rx_r_rdy_bclk);
  output [0:0]E;
  output [0:0]lrc_pulse_reg_0;
  output i2s_rx_lrc_d1_reg_0;
  output i2s_rx_lrc_d1_reg_1;
  output [23:0]Q;
  input i2s_rx_lrc_d1_reg_2;
  input \data_store_reg_reg[23]_0 ;
  input rst;
  input i2s_recdat;
  input data_rx_l_rdy_bclk;
  input data_rx_r_rdy_bclk;

  wire [0:0]E;
  wire [23:0]Q;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_2__0_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire data_o_rdy_pulse;
  wire \data_out[23]_i_1_n_0 ;
  wire data_rx_l_rdy_bclk;
  wire data_rx_r_rdy_bclk;
  wire [23:0]data_store_reg;
  wire \data_store_reg[0]_i_1_n_0 ;
  wire \data_store_reg[10]_i_1_n_0 ;
  wire \data_store_reg[11]_i_1_n_0 ;
  wire \data_store_reg[12]_i_1_n_0 ;
  wire \data_store_reg[12]_i_2_n_0 ;
  wire \data_store_reg[13]_i_1_n_0 ;
  wire \data_store_reg[13]_i_2_n_0 ;
  wire \data_store_reg[13]_i_3_n_0 ;
  wire \data_store_reg[14]_i_1_n_0 ;
  wire \data_store_reg[14]_i_2_n_0 ;
  wire \data_store_reg[15]_i_1_n_0 ;
  wire \data_store_reg[15]_i_2_n_0 ;
  wire \data_store_reg[15]_i_3_n_0 ;
  wire \data_store_reg[16]_i_1_n_0 ;
  wire \data_store_reg[16]_i_2_n_0 ;
  wire \data_store_reg[16]_i_3_n_0 ;
  wire \data_store_reg[17]_i_1_n_0 ;
  wire \data_store_reg[17]_i_2_n_0 ;
  wire \data_store_reg[18]_i_1_n_0 ;
  wire \data_store_reg[19]_i_1_n_0 ;
  wire \data_store_reg[19]_i_2_n_0 ;
  wire \data_store_reg[1]_i_1_n_0 ;
  wire \data_store_reg[20]_i_1_n_0 ;
  wire \data_store_reg[20]_i_2_n_0 ;
  wire \data_store_reg[21]_i_1_n_0 ;
  wire \data_store_reg[21]_i_2_n_0 ;
  wire \data_store_reg[21]_i_3_n_0 ;
  wire \data_store_reg[22]_i_1_n_0 ;
  wire \data_store_reg[22]_i_2_n_0 ;
  wire \data_store_reg[23]_i_1_n_0 ;
  wire \data_store_reg[23]_i_2_n_0 ;
  wire \data_store_reg[23]_i_3_n_0 ;
  wire \data_store_reg[2]_i_1_n_0 ;
  wire \data_store_reg[3]_i_1_n_0 ;
  wire \data_store_reg[4]_i_1_n_0 ;
  wire \data_store_reg[5]_i_1_n_0 ;
  wire \data_store_reg[6]_i_1_n_0 ;
  wire \data_store_reg[7]_i_1_n_0 ;
  wire \data_store_reg[8]_i_1_n_0 ;
  wire \data_store_reg[9]_i_1_n_0 ;
  wire \data_store_reg_reg[23]_0 ;
  wire do_store_i_1_n_0;
  wire do_store_reg_n_0;
  wire i2s_recdat;
  wire i2s_rx_lrc_d1;
  wire i2s_rx_lrc_d1_reg_0;
  wire i2s_rx_lrc_d1_reg_1;
  wire i2s_rx_lrc_d1_reg_2;
  wire [0:0]lrc_pulse_reg_0;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \cnt[0]_i_1__0 
       (.I0(i2s_rx_lrc_d1_reg_2),
        .I1(i2s_rx_lrc_d1),
        .I2(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9FF9)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(i2s_rx_lrc_d1_reg_2),
        .I3(i2s_rx_lrc_d1),
        .O(\cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE1FFFFE1)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(i2s_rx_lrc_d1_reg_2),
        .I4(i2s_rx_lrc_d1),
        .O(\cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4140000000004140)) 
    \cnt[3]_i_1__0 
       (.I0(rst),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\data_store_reg[16]_i_3_n_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(i2s_rx_lrc_d1_reg_2),
        .I5(i2s_rx_lrc_d1),
        .O(\cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt[4]_i_1 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\data_out[23]_i_1_n_0 ),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0001)) 
    \cnt[4]_i_2__0 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\data_out[23]_i_1_n_0 ),
        .O(\cnt[4]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\cnt[4]_i_1_n_0 ),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\cnt[4]_i_1_n_0 ),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\cnt[4]_i_1_n_0 ),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\cnt[4]_i_1_n_0 ),
        .D(\cnt[4]_i_2__0_n_0 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(rst));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[23]_i_1 
       (.I0(i2s_rx_lrc_d1),
        .I1(i2s_rx_lrc_d1_reg_2),
        .O(\data_out[23]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[0]),
        .Q(Q[0]),
        .R(rst));
  FDRE \data_out_reg[10] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[10]),
        .Q(Q[10]),
        .R(rst));
  FDRE \data_out_reg[11] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[11]),
        .Q(Q[11]),
        .R(rst));
  FDRE \data_out_reg[12] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[12]),
        .Q(Q[12]),
        .R(rst));
  FDRE \data_out_reg[13] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[13]),
        .Q(Q[13]),
        .R(rst));
  FDRE \data_out_reg[14] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[14]),
        .Q(Q[14]),
        .R(rst));
  FDRE \data_out_reg[15] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[15]),
        .Q(Q[15]),
        .R(rst));
  FDRE \data_out_reg[16] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[16]),
        .Q(Q[16]),
        .R(rst));
  FDRE \data_out_reg[17] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[17]),
        .Q(Q[17]),
        .R(rst));
  FDRE \data_out_reg[18] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[18]),
        .Q(Q[18]),
        .R(rst));
  FDRE \data_out_reg[19] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[19]),
        .Q(Q[19]),
        .R(rst));
  FDRE \data_out_reg[1] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[1]),
        .Q(Q[1]),
        .R(rst));
  FDRE \data_out_reg[20] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[20]),
        .Q(Q[20]),
        .R(rst));
  FDRE \data_out_reg[21] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[21]),
        .Q(Q[21]),
        .R(rst));
  FDRE \data_out_reg[22] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[22]),
        .Q(Q[22]),
        .R(rst));
  FDRE \data_out_reg[23] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[23]),
        .Q(Q[23]),
        .R(rst));
  FDRE \data_out_reg[2] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[2]),
        .Q(Q[2]),
        .R(rst));
  FDRE \data_out_reg[3] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[3]),
        .Q(Q[3]),
        .R(rst));
  FDRE \data_out_reg[4] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[4]),
        .Q(Q[4]),
        .R(rst));
  FDRE \data_out_reg[5] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[5]),
        .Q(Q[5]),
        .R(rst));
  FDRE \data_out_reg[6] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[6]),
        .Q(Q[6]),
        .R(rst));
  FDRE \data_out_reg[7] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[7]),
        .Q(Q[7]),
        .R(rst));
  FDRE \data_out_reg[8] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[8]),
        .Q(Q[8]),
        .R(rst));
  FDRE \data_out_reg[9] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(\data_out[23]_i_1_n_0 ),
        .D(data_store_reg[9]),
        .Q(Q[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_rx_l_bclk[23]_i_1 
       (.I0(data_o_rdy_pulse),
        .I1(i2s_rx_lrc_d1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    data_rx_l_rdy_bclk_i_1
       (.I0(i2s_rx_lrc_d1),
        .I1(data_o_rdy_pulse),
        .I2(data_rx_l_rdy_bclk),
        .O(i2s_rx_lrc_d1_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_rx_r_bclk[23]_i_1 
       (.I0(data_o_rdy_pulse),
        .I1(i2s_rx_lrc_d1),
        .O(lrc_pulse_reg_0));
  LUT3 #(
    .INIT(8'hC8)) 
    data_rx_r_rdy_bclk_i_1
       (.I0(i2s_rx_lrc_d1),
        .I1(data_o_rdy_pulse),
        .I2(data_rx_r_rdy_bclk),
        .O(i2s_rx_lrc_d1_reg_1));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \data_store_reg[0]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[16]_i_2_n_0 ),
        .I2(\data_store_reg[16]_i_3_n_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[0]),
        .O(\data_store_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_store_reg[10]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[15]_i_2_n_0 ),
        .I2(\data_store_reg[14]_i_2_n_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[10]),
        .O(\data_store_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_store_reg[11]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[15]_i_2_n_0 ),
        .I2(\data_store_reg[15]_i_3_n_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[11]),
        .O(\data_store_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB3030BB88000088)) 
    \data_store_reg[12]_i_1 
       (.I0(i2s_recdat),
        .I1(\data_store_reg[12]_i_2_n_0 ),
        .I2(rst),
        .I3(i2s_rx_lrc_d1),
        .I4(i2s_rx_lrc_d1_reg_2),
        .I5(data_store_reg[12]),
        .O(\data_store_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \data_store_reg[12]_i_2 
       (.I0(\data_store_reg[20]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(do_store_reg_n_0),
        .I5(rst),
        .O(\data_store_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \data_store_reg[13]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[13]_i_2_n_0 ),
        .I2(\data_store_reg[13]_i_3_n_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[13]),
        .O(\data_store_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_store_reg[13]_i_2 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(\data_store_reg[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_store_reg[13]_i_3 
       (.I0(rst),
        .I1(do_store_reg_n_0),
        .I2(\cnt_reg_n_0_[3] ),
        .O(\data_store_reg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \data_store_reg[14]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[15]_i_2_n_0 ),
        .I2(\data_store_reg[14]_i_2_n_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[14]),
        .O(\data_store_reg[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_store_reg[14]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(\data_store_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \data_store_reg[15]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[15]_i_2_n_0 ),
        .I2(\data_store_reg[15]_i_3_n_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[15]),
        .O(\data_store_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \data_store_reg[15]_i_2 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(do_store_reg_n_0),
        .I2(rst),
        .I3(\cnt_reg_n_0_[1] ),
        .O(\data_store_reg[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_store_reg[15]_i_3 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(\data_store_reg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_store_reg[16]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[16]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\data_store_reg[16]_i_3_n_0 ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[16]),
        .O(\data_store_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_store_reg[16]_i_2 
       (.I0(rst),
        .I1(do_store_reg_n_0),
        .I2(\cnt_reg_n_0_[3] ),
        .O(\data_store_reg[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data_store_reg[16]_i_3 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\data_store_reg[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB3030BB88000088)) 
    \data_store_reg[17]_i_1 
       (.I0(i2s_recdat),
        .I1(\data_store_reg[17]_i_2_n_0 ),
        .I2(rst),
        .I3(i2s_rx_lrc_d1),
        .I4(i2s_rx_lrc_d1_reg_2),
        .I5(data_store_reg[17]),
        .O(\data_store_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \data_store_reg[17]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_store_reg[16]_i_2_n_0 ),
        .O(\data_store_reg[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_store_reg[18]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[19]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[18]),
        .O(\data_store_reg[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \data_store_reg[19]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\data_store_reg[19]_i_2_n_0 ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[19]),
        .O(\data_store_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \data_store_reg[19]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(rst),
        .I2(do_store_reg_n_0),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\data_store_reg[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_store_reg[1]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[13]_i_2_n_0 ),
        .I2(\data_store_reg[16]_i_2_n_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[1]),
        .O(\data_store_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_store_reg[20]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[21]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\data_store_reg[20]_i_2_n_0 ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[20]),
        .O(\data_store_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_store_reg[20]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\data_store_reg[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_store_reg[21]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[21]_i_2_n_0 ),
        .I2(\data_store_reg[21]_i_3_n_0 ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[21]),
        .O(\data_store_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \data_store_reg[21]_i_2 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(do_store_reg_n_0),
        .I2(rst),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\data_store_reg[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_store_reg[21]_i_3 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(\data_store_reg[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_store_reg[22]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[23]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[22]),
        .O(\data_store_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_store_reg[22]_i_2 
       (.I0(i2s_recdat),
        .I1(i2s_rx_lrc_d1_reg_2),
        .I2(i2s_rx_lrc_d1),
        .O(\data_store_reg[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \data_store_reg[23]_i_1 
       (.I0(i2s_recdat),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\data_store_reg[23]_i_2_n_0 ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[23]),
        .O(\data_store_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \data_store_reg[23]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(rst),
        .I2(do_store_reg_n_0),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\data_store_reg[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \data_store_reg[23]_i_3 
       (.I0(i2s_rx_lrc_d1_reg_2),
        .I1(i2s_rx_lrc_d1),
        .I2(rst),
        .O(\data_store_reg[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \data_store_reg[2]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\data_store_reg[19]_i_2_n_0 ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[2]),
        .O(\data_store_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \data_store_reg[3]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\data_store_reg[19]_i_2_n_0 ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[3]),
        .O(\data_store_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \data_store_reg[4]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[21]_i_2_n_0 ),
        .I2(\data_store_reg[20]_i_2_n_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[4]),
        .O(\data_store_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \data_store_reg[5]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[13]_i_2_n_0 ),
        .I2(\data_store_reg[16]_i_2_n_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[5]),
        .O(\data_store_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \data_store_reg[6]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\data_store_reg[23]_i_2_n_0 ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[6]),
        .O(\data_store_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \data_store_reg[7]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\data_store_reg[23]_i_2_n_0 ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[7]),
        .O(\data_store_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \data_store_reg[8]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[13]_i_3_n_0 ),
        .I2(\data_store_reg[16]_i_3_n_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[8]),
        .O(\data_store_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_store_reg[9]_i_1 
       (.I0(\data_store_reg[22]_i_2_n_0 ),
        .I1(\data_store_reg[13]_i_2_n_0 ),
        .I2(\data_store_reg[13]_i_3_n_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_store_reg[23]_i_3_n_0 ),
        .I5(data_store_reg[9]),
        .O(\data_store_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[0] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[0]_i_1_n_0 ),
        .Q(data_store_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[10] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[10]_i_1_n_0 ),
        .Q(data_store_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[11] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[11]_i_1_n_0 ),
        .Q(data_store_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[12] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[12]_i_1_n_0 ),
        .Q(data_store_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[13] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[13]_i_1_n_0 ),
        .Q(data_store_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[14] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[14]_i_1_n_0 ),
        .Q(data_store_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[15] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[15]_i_1_n_0 ),
        .Q(data_store_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[16] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[16]_i_1_n_0 ),
        .Q(data_store_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[17] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[17]_i_1_n_0 ),
        .Q(data_store_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[18] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[18]_i_1_n_0 ),
        .Q(data_store_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[19] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[19]_i_1_n_0 ),
        .Q(data_store_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[1] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[1]_i_1_n_0 ),
        .Q(data_store_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[20] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[20]_i_1_n_0 ),
        .Q(data_store_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[21] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[21]_i_1_n_0 ),
        .Q(data_store_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[22] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[22]_i_1_n_0 ),
        .Q(data_store_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[23] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[23]_i_1_n_0 ),
        .Q(data_store_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[2] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[2]_i_1_n_0 ),
        .Q(data_store_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[3] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[3]_i_1_n_0 ),
        .Q(data_store_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[4] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[4]_i_1_n_0 ),
        .Q(data_store_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[5] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[5]_i_1_n_0 ),
        .Q(data_store_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[6] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[6]_i_1_n_0 ),
        .Q(data_store_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[7] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[7]_i_1_n_0 ),
        .Q(data_store_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[8] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[8]_i_1_n_0 ),
        .Q(data_store_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_store_reg_reg[9] 
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_store_reg[9]_i_1_n_0 ),
        .Q(data_store_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF666F66666)) 
    do_store_i_1
       (.I0(i2s_rx_lrc_d1),
        .I1(i2s_rx_lrc_d1_reg_2),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\data_store_reg[16]_i_3_n_0 ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(do_store_reg_n_0),
        .O(do_store_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    do_store_reg
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(do_store_i_1_n_0),
        .Q(do_store_reg_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    i2s_rx_lrc_d1_reg
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(i2s_rx_lrc_d1_reg_2),
        .Q(i2s_rx_lrc_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lrc_pulse_reg
       (.C(\data_store_reg_reg[23]_0 ),
        .CE(1'b1),
        .D(\data_out[23]_i_1_n_0 ),
        .Q(data_o_rdy_pulse),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "I2S_Transceiver" *) 
module I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transceiver
   (jc,
    tx_lrc_reg_0,
    rx_lrc_reg_0,
    data_tx_right_rdy_pulse_reg_0,
    data_tx_left_rdy_pulse_reg_0,
    SR,
    do_sine_reg,
    do_sine_reg_0,
    D,
    Q,
    \data_rx_l_clk_reg[7]_0 ,
    \data_rx_l_clk_reg[23]_0 ,
    mclk,
    rst,
    clk,
    E,
    i2s_recdat,
    do_sine,
    \data_tx_r_clk_reg[23]_0 ,
    \data_tx_l_clk_reg[23]_0 );
  output [1:0]jc;
  output tx_lrc_reg_0;
  output rx_lrc_reg_0;
  output [0:0]data_tx_right_rdy_pulse_reg_0;
  output [0:0]data_tx_left_rdy_pulse_reg_0;
  output [0:0]SR;
  output [0:0]do_sine_reg;
  output [0:0]do_sine_reg_0;
  output [7:0]D;
  output [15:0]Q;
  output [7:0]\data_rx_l_clk_reg[7]_0 ;
  output [15:0]\data_rx_l_clk_reg[23]_0 ;
  input mclk;
  input rst;
  input clk;
  input [0:0]E;
  input i2s_recdat;
  input do_sine;
  input [23:0]\data_tx_r_clk_reg[23]_0 ;
  input [23:0]\data_tx_l_clk_reg[23]_0 ;

  wire [7:0]D;
  wire [0:0]E;
  wire I2S_RX_n_0;
  wire I2S_RX_n_2;
  wire I2S_RX_n_3;
  wire I2S_TX_n_10;
  wire I2S_TX_n_11;
  wire I2S_TX_n_12;
  wire I2S_TX_n_13;
  wire I2S_TX_n_14;
  wire I2S_TX_n_15;
  wire I2S_TX_n_16;
  wire I2S_TX_n_17;
  wire I2S_TX_n_18;
  wire I2S_TX_n_19;
  wire I2S_TX_n_2;
  wire I2S_TX_n_20;
  wire I2S_TX_n_21;
  wire I2S_TX_n_22;
  wire I2S_TX_n_23;
  wire I2S_TX_n_24;
  wire I2S_TX_n_25;
  wire I2S_TX_n_26;
  wire I2S_TX_n_27;
  wire I2S_TX_n_3;
  wire I2S_TX_n_4;
  wire I2S_TX_n_5;
  wire I2S_TX_n_6;
  wire I2S_TX_n_7;
  wire I2S_TX_n_8;
  wire I2S_TX_n_9;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [4:0]cnt;
  wire \cnt[0]_i_1__1_n_0 ;
  wire \cnt[1]_i_1__1_n_0 ;
  wire \cnt[2]_i_1__1_n_0 ;
  wire \cnt[3]_i_1__1_n_0 ;
  wire \cnt[4]_i_1__1_n_0 ;
  wire data_i_rdy_pulse;
  wire [23:23]data_in;
  wire \data_in_reg_n_0_[0] ;
  wire \data_in_reg_n_0_[10] ;
  wire \data_in_reg_n_0_[11] ;
  wire \data_in_reg_n_0_[12] ;
  wire \data_in_reg_n_0_[13] ;
  wire \data_in_reg_n_0_[14] ;
  wire \data_in_reg_n_0_[15] ;
  wire \data_in_reg_n_0_[16] ;
  wire \data_in_reg_n_0_[17] ;
  wire \data_in_reg_n_0_[18] ;
  wire \data_in_reg_n_0_[19] ;
  wire \data_in_reg_n_0_[1] ;
  wire \data_in_reg_n_0_[20] ;
  wire \data_in_reg_n_0_[21] ;
  wire \data_in_reg_n_0_[22] ;
  wire \data_in_reg_n_0_[2] ;
  wire \data_in_reg_n_0_[3] ;
  wire \data_in_reg_n_0_[4] ;
  wire \data_in_reg_n_0_[5] ;
  wire \data_in_reg_n_0_[6] ;
  wire \data_in_reg_n_0_[7] ;
  wire \data_in_reg_n_0_[8] ;
  wire \data_in_reg_n_0_[9] ;
  wire [23:0]data_out;
  wire [23:0]data_rx_l_bclk;
  wire [7:0]data_rx_l_clk;
  wire data_rx_l_clk0;
  wire [15:0]\data_rx_l_clk_reg[23]_0 ;
  wire [7:0]\data_rx_l_clk_reg[7]_0 ;
  wire data_rx_l_rdy_bclk;
  wire \data_rx_l_rdy_clk_reg[0]__0 ;
  wire \data_rx_l_rdy_clk_reg[2]__0 ;
  wire \data_rx_l_rdy_clk_reg_n_0_[1] ;
  wire [23:0]data_rx_r_bclk;
  wire data_rx_r_bclk_0;
  wire [7:0]data_rx_r_clk;
  wire data_rx_r_clk0;
  wire data_rx_r_rdy_bclk;
  wire \data_rx_r_rdy_clk_reg[0]__0 ;
  wire \data_rx_r_rdy_clk_reg[2]__0 ;
  wire \data_rx_r_rdy_clk_reg_n_0_[1] ;
  wire [23:0]data_tx_l_bclk;
  wire data_tx_l_bclk_2;
  wire [23:0]data_tx_l_clk;
  wire \data_tx_l_clk[23]_i_1_n_0 ;
  wire [23:0]\data_tx_l_clk_reg[23]_0 ;
  wire data_tx_l_rqst_bclk;
  wire \data_tx_l_rqst_clk_reg[0]__0 ;
  wire \data_tx_l_rqst_clk_reg_n_0_[1] ;
  wire \data_tx_l_wen_bclk_reg[0]__0 ;
  wire \data_tx_l_wen_bclk_reg[1]__0 ;
  wire data_tx_l_wen_clk;
  wire data_tx_left_rdy_pulse;
  wire data_tx_left_rdy_pulse0;
  wire [0:0]data_tx_left_rdy_pulse_reg_0;
  wire [23:0]data_tx_r_bclk;
  wire data_tx_r_bclk_1;
  wire [23:0]data_tx_r_clk;
  wire \data_tx_r_clk[23]_i_1_n_0 ;
  wire [23:0]\data_tx_r_clk_reg[23]_0 ;
  wire data_tx_r_rqst_bclk;
  wire \data_tx_r_rqst_clk_reg[0]__0 ;
  wire \data_tx_r_rqst_clk_reg_n_0_[1] ;
  wire \data_tx_r_wen_bclk_reg[0]__0 ;
  wire \data_tx_r_wen_bclk_reg[1]__0 ;
  wire data_tx_r_wen_clk;
  wire data_tx_right_rdy_pulse;
  wire data_tx_right_rdy_pulse0;
  wire [0:0]data_tx_right_rdy_pulse_reg_0;
  wire do_sine;
  wire [0:0]do_sine_reg;
  wire [0:0]do_sine_reg_0;
  wire i2s_recdat;
  wire [1:0]jc;
  wire mclk;
  wire rst;
  wire rx_lrc_i_1_n_0;
  wire rx_lrc_reg_0;
  wire tx_lrc_i_1_n_0;
  wire tx_lrc_reg_0;

  I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Receiver I2S_RX
       (.E(I2S_RX_n_0),
        .Q(data_out),
        .data_rx_l_rdy_bclk(data_rx_l_rdy_bclk),
        .data_rx_r_rdy_bclk(data_rx_r_rdy_bclk),
        .\data_store_reg_reg[23]_0 (jc[1]),
        .i2s_recdat(i2s_recdat),
        .i2s_rx_lrc_d1_reg_0(I2S_RX_n_2),
        .i2s_rx_lrc_d1_reg_1(I2S_RX_n_3),
        .i2s_rx_lrc_d1_reg_2(rx_lrc_reg_0),
        .lrc_pulse_reg_0(data_rx_r_bclk_0),
        .rst(rst));
  I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transmitter I2S_TX
       (.D({I2S_TX_n_4,I2S_TX_n_5,I2S_TX_n_6,I2S_TX_n_7,I2S_TX_n_8,I2S_TX_n_9,I2S_TX_n_10,I2S_TX_n_11,I2S_TX_n_12,I2S_TX_n_13,I2S_TX_n_14,I2S_TX_n_15,I2S_TX_n_16,I2S_TX_n_17,I2S_TX_n_18,I2S_TX_n_19,I2S_TX_n_20,I2S_TX_n_21,I2S_TX_n_22,I2S_TX_n_23,I2S_TX_n_24,I2S_TX_n_25,I2S_TX_n_26,I2S_TX_n_27}),
        .E(data_i_rdy_pulse),
        .Q({data_in,\data_in_reg_n_0_[22] ,\data_in_reg_n_0_[21] ,\data_in_reg_n_0_[20] ,\data_in_reg_n_0_[19] ,\data_in_reg_n_0_[18] ,\data_in_reg_n_0_[17] ,\data_in_reg_n_0_[16] ,\data_in_reg_n_0_[15] ,\data_in_reg_n_0_[14] ,\data_in_reg_n_0_[13] ,\data_in_reg_n_0_[12] ,\data_in_reg_n_0_[11] ,\data_in_reg_n_0_[10] ,\data_in_reg_n_0_[9] ,\data_in_reg_n_0_[8] ,\data_in_reg_n_0_[7] ,\data_in_reg_n_0_[6] ,\data_in_reg_n_0_[5] ,\data_in_reg_n_0_[4] ,\data_in_reg_n_0_[3] ,\data_in_reg_n_0_[2] ,\data_in_reg_n_0_[1] ,\data_in_reg_n_0_[0] }),
        .\cnt_reg[4]_0 (jc[1]),
        .\data_in_reg[23] (data_tx_r_bclk),
        .\data_in_reg[23]_0 (data_tx_l_bclk),
        .data_tx_l_rqst_bclk(data_tx_l_rqst_bclk),
        .\data_tx_l_wen_bclk_reg[1] (I2S_TX_n_2),
        .\data_tx_l_wen_bclk_reg[1]__0 (\data_tx_l_wen_bclk_reg[1]__0 ),
        .data_tx_r_rqst_bclk(data_tx_r_rqst_bclk),
        .\data_tx_r_wen_bclk_reg[1] (I2S_TX_n_3),
        .\data_tx_r_wen_bclk_reg[1]__0 (\data_tx_r_wen_bclk_reg[1]__0 ),
        .i2s_tx_lrc_d1_reg_0(tx_lrc_reg_0),
        .jc(jc[0]),
        .rst(rst));
  I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Clock_Divider_PWM_Dynamic bclk_div
       (.clk_out_reg_0(jc[1]),
        .mclk(mclk),
        .rst(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(cnt[0]),
        .O(\cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0F0FF070)) 
    \cnt[1]_i_1__1 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .O(\cnt[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1__1 
       (.I0(cnt[0]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .O(\cnt[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h3CCCCC4C)) 
    \cnt[3]_i_1__1 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .O(\cnt[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6AAAAA2A)) 
    \cnt[4]_i_1__1 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .O(\cnt[4]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[0] 
       (.C(jc[1]),
        .CE(1'b1),
        .D(\cnt[0]_i_1__1_n_0 ),
        .Q(cnt[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[1] 
       (.C(jc[1]),
        .CE(1'b1),
        .D(\cnt[1]_i_1__1_n_0 ),
        .Q(cnt[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[2] 
       (.C(jc[1]),
        .CE(1'b1),
        .D(\cnt[2]_i_1__1_n_0 ),
        .Q(cnt[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[3] 
       (.C(jc[1]),
        .CE(1'b1),
        .D(\cnt[3]_i_1__1_n_0 ),
        .Q(cnt[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[4] 
       (.C(jc[1]),
        .CE(1'b1),
        .D(\cnt[4]_i_1__1_n_0 ),
        .Q(cnt[4]),
        .R(rst));
  FDRE \data_in_reg[0] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_27),
        .Q(\data_in_reg_n_0_[0] ),
        .R(rst));
  FDRE \data_in_reg[10] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_17),
        .Q(\data_in_reg_n_0_[10] ),
        .R(rst));
  FDRE \data_in_reg[11] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_16),
        .Q(\data_in_reg_n_0_[11] ),
        .R(rst));
  FDRE \data_in_reg[12] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_15),
        .Q(\data_in_reg_n_0_[12] ),
        .R(rst));
  FDRE \data_in_reg[13] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_14),
        .Q(\data_in_reg_n_0_[13] ),
        .R(rst));
  FDRE \data_in_reg[14] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_13),
        .Q(\data_in_reg_n_0_[14] ),
        .R(rst));
  FDRE \data_in_reg[15] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_12),
        .Q(\data_in_reg_n_0_[15] ),
        .R(rst));
  FDRE \data_in_reg[16] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_11),
        .Q(\data_in_reg_n_0_[16] ),
        .R(rst));
  FDRE \data_in_reg[17] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_10),
        .Q(\data_in_reg_n_0_[17] ),
        .R(rst));
  FDRE \data_in_reg[18] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_9),
        .Q(\data_in_reg_n_0_[18] ),
        .R(rst));
  FDRE \data_in_reg[19] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_8),
        .Q(\data_in_reg_n_0_[19] ),
        .R(rst));
  FDRE \data_in_reg[1] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_26),
        .Q(\data_in_reg_n_0_[1] ),
        .R(rst));
  FDRE \data_in_reg[20] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_7),
        .Q(\data_in_reg_n_0_[20] ),
        .R(rst));
  FDRE \data_in_reg[21] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_6),
        .Q(\data_in_reg_n_0_[21] ),
        .R(rst));
  FDRE \data_in_reg[22] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_5),
        .Q(\data_in_reg_n_0_[22] ),
        .R(rst));
  FDRE \data_in_reg[23] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_4),
        .Q(data_in),
        .R(rst));
  FDRE \data_in_reg[2] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_25),
        .Q(\data_in_reg_n_0_[2] ),
        .R(rst));
  FDRE \data_in_reg[3] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_24),
        .Q(\data_in_reg_n_0_[3] ),
        .R(rst));
  FDRE \data_in_reg[4] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_23),
        .Q(\data_in_reg_n_0_[4] ),
        .R(rst));
  FDRE \data_in_reg[5] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_22),
        .Q(\data_in_reg_n_0_[5] ),
        .R(rst));
  FDRE \data_in_reg[6] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_21),
        .Q(\data_in_reg_n_0_[6] ),
        .R(rst));
  FDRE \data_in_reg[7] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_20),
        .Q(\data_in_reg_n_0_[7] ),
        .R(rst));
  FDRE \data_in_reg[8] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_19),
        .Q(\data_in_reg_n_0_[8] ),
        .R(rst));
  FDRE \data_in_reg[9] 
       (.C(jc[1]),
        .CE(data_i_rdy_pulse),
        .D(I2S_TX_n_18),
        .Q(\data_in_reg_n_0_[9] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[0] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[0]),
        .Q(data_rx_l_bclk[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[10] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[10]),
        .Q(data_rx_l_bclk[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[11] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[11]),
        .Q(data_rx_l_bclk[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[12] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[12]),
        .Q(data_rx_l_bclk[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[13] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[13]),
        .Q(data_rx_l_bclk[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[14] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[14]),
        .Q(data_rx_l_bclk[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[15] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[15]),
        .Q(data_rx_l_bclk[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[16] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[16]),
        .Q(data_rx_l_bclk[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[17] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[17]),
        .Q(data_rx_l_bclk[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[18] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[18]),
        .Q(data_rx_l_bclk[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[19] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[19]),
        .Q(data_rx_l_bclk[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[1] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[1]),
        .Q(data_rx_l_bclk[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[20] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[20]),
        .Q(data_rx_l_bclk[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[21] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[21]),
        .Q(data_rx_l_bclk[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[22] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[22]),
        .Q(data_rx_l_bclk[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[23] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[23]),
        .Q(data_rx_l_bclk[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[2] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[2]),
        .Q(data_rx_l_bclk[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[3] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[3]),
        .Q(data_rx_l_bclk[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[4] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[4]),
        .Q(data_rx_l_bclk[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[5] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[5]),
        .Q(data_rx_l_bclk[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[6] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[6]),
        .Q(data_rx_l_bclk[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[7] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[7]),
        .Q(data_rx_l_bclk[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[8] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[8]),
        .Q(data_rx_l_bclk[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_bclk_reg[9] 
       (.C(jc[1]),
        .CE(I2S_RX_n_0),
        .D(data_out[9]),
        .Q(data_rx_l_bclk[9]),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \data_rx_l_clk[23]_i_1 
       (.I0(\data_rx_l_rdy_clk_reg[2]__0 ),
        .I1(\data_rx_l_rdy_clk_reg_n_0_[1] ),
        .O(data_rx_l_clk0));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[0] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[0]),
        .Q(data_rx_l_clk[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[10] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[10]),
        .Q(\data_rx_l_clk_reg[23]_0 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[11] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[11]),
        .Q(\data_rx_l_clk_reg[23]_0 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[12] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[12]),
        .Q(\data_rx_l_clk_reg[23]_0 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[13] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[13]),
        .Q(\data_rx_l_clk_reg[23]_0 [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[14] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[14]),
        .Q(\data_rx_l_clk_reg[23]_0 [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[15] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[15]),
        .Q(\data_rx_l_clk_reg[23]_0 [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[16] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[16]),
        .Q(\data_rx_l_clk_reg[23]_0 [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[17] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[17]),
        .Q(\data_rx_l_clk_reg[23]_0 [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[18] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[18]),
        .Q(\data_rx_l_clk_reg[23]_0 [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[19] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[19]),
        .Q(\data_rx_l_clk_reg[23]_0 [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[1] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[1]),
        .Q(data_rx_l_clk[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[20] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[20]),
        .Q(\data_rx_l_clk_reg[23]_0 [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[21] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[21]),
        .Q(\data_rx_l_clk_reg[23]_0 [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[22] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[22]),
        .Q(\data_rx_l_clk_reg[23]_0 [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[23] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[23]),
        .Q(\data_rx_l_clk_reg[23]_0 [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[2] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[2]),
        .Q(data_rx_l_clk[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[3] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[3]),
        .Q(data_rx_l_clk[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[4] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[4]),
        .Q(data_rx_l_clk[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[5] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[5]),
        .Q(data_rx_l_clk[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[6] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[6]),
        .Q(data_rx_l_clk[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[7] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[7]),
        .Q(data_rx_l_clk[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[8] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[8]),
        .Q(\data_rx_l_clk_reg[23]_0 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_clk_reg[9] 
       (.C(clk),
        .CE(data_rx_l_clk0),
        .D(data_rx_l_bclk[9]),
        .Q(\data_rx_l_clk_reg[23]_0 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    data_rx_l_rdy_bclk_reg
       (.C(jc[1]),
        .CE(1'b1),
        .D(I2S_RX_n_2),
        .Q(data_rx_l_rdy_bclk),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_rdy_clk_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_rx_l_rdy_bclk),
        .Q(\data_rx_l_rdy_clk_reg[0]__0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_rdy_clk_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_rx_l_rdy_clk_reg[0]__0 ),
        .Q(\data_rx_l_rdy_clk_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_l_rdy_clk_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_rx_l_rdy_clk_reg_n_0_[1] ),
        .Q(\data_rx_l_rdy_clk_reg[2]__0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[0] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[0]),
        .Q(data_rx_r_bclk[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[10] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[10]),
        .Q(data_rx_r_bclk[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[11] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[11]),
        .Q(data_rx_r_bclk[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[12] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[12]),
        .Q(data_rx_r_bclk[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[13] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[13]),
        .Q(data_rx_r_bclk[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[14] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[14]),
        .Q(data_rx_r_bclk[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[15] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[15]),
        .Q(data_rx_r_bclk[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[16] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[16]),
        .Q(data_rx_r_bclk[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[17] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[17]),
        .Q(data_rx_r_bclk[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[18] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[18]),
        .Q(data_rx_r_bclk[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[19] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[19]),
        .Q(data_rx_r_bclk[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[1] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[1]),
        .Q(data_rx_r_bclk[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[20] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[20]),
        .Q(data_rx_r_bclk[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[21] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[21]),
        .Q(data_rx_r_bclk[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[22] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[22]),
        .Q(data_rx_r_bclk[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[23] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[23]),
        .Q(data_rx_r_bclk[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[2] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[2]),
        .Q(data_rx_r_bclk[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[3] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[3]),
        .Q(data_rx_r_bclk[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[4] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[4]),
        .Q(data_rx_r_bclk[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[5] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[5]),
        .Q(data_rx_r_bclk[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[6] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[6]),
        .Q(data_rx_r_bclk[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[7] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[7]),
        .Q(data_rx_r_bclk[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[8] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[8]),
        .Q(data_rx_r_bclk[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_bclk_reg[9] 
       (.C(jc[1]),
        .CE(data_rx_r_bclk_0),
        .D(data_out[9]),
        .Q(data_rx_r_bclk[9]),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \data_rx_r_clk[23]_i_1 
       (.I0(\data_rx_r_rdy_clk_reg[2]__0 ),
        .I1(\data_rx_r_rdy_clk_reg_n_0_[1] ),
        .O(data_rx_r_clk0));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[0] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[0]),
        .Q(data_rx_r_clk[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[10] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[10]),
        .Q(Q[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[11] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[11]),
        .Q(Q[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[12] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[12]),
        .Q(Q[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[13] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[13]),
        .Q(Q[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[14] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[14]),
        .Q(Q[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[15] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[15]),
        .Q(Q[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[16] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[16]),
        .Q(Q[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[17] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[17]),
        .Q(Q[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[18] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[18]),
        .Q(Q[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[19] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[19]),
        .Q(Q[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[1] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[1]),
        .Q(data_rx_r_clk[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[20] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[20]),
        .Q(Q[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[21] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[21]),
        .Q(Q[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[22] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[22]),
        .Q(Q[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[23] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[23]),
        .Q(Q[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[2] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[2]),
        .Q(data_rx_r_clk[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[3] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[3]),
        .Q(data_rx_r_clk[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[4] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[4]),
        .Q(data_rx_r_clk[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[5] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[5]),
        .Q(data_rx_r_clk[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[6] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[6]),
        .Q(data_rx_r_clk[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[7] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[7]),
        .Q(data_rx_r_clk[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[8] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[8]),
        .Q(Q[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_clk_reg[9] 
       (.C(clk),
        .CE(data_rx_r_clk0),
        .D(data_rx_r_bclk[9]),
        .Q(Q[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    data_rx_r_rdy_bclk_reg
       (.C(jc[1]),
        .CE(1'b1),
        .D(I2S_RX_n_3),
        .Q(data_rx_r_rdy_bclk),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_rdy_clk_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_rx_r_rdy_bclk),
        .Q(\data_rx_r_rdy_clk_reg[0]__0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_rdy_clk_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_rx_r_rdy_clk_reg[0]__0 ),
        .Q(\data_rx_r_rdy_clk_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_r_rdy_clk_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_rx_r_rdy_clk_reg_n_0_[1] ),
        .Q(\data_rx_r_rdy_clk_reg[2]__0 ),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_l_bclk[23]_i_1 
       (.I0(\data_tx_l_wen_bclk_reg[1]__0 ),
        .I1(rst),
        .O(data_tx_l_bclk_2));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[0] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[0]),
        .Q(data_tx_l_bclk[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[10] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[10]),
        .Q(data_tx_l_bclk[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[11] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[11]),
        .Q(data_tx_l_bclk[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[12] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[12]),
        .Q(data_tx_l_bclk[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[13] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[13]),
        .Q(data_tx_l_bclk[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[14] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[14]),
        .Q(data_tx_l_bclk[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[15] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[15]),
        .Q(data_tx_l_bclk[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[16] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[16]),
        .Q(data_tx_l_bclk[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[17] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[17]),
        .Q(data_tx_l_bclk[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[18] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[18]),
        .Q(data_tx_l_bclk[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[19] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[19]),
        .Q(data_tx_l_bclk[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[1] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[1]),
        .Q(data_tx_l_bclk[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[20] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[20]),
        .Q(data_tx_l_bclk[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[21] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[21]),
        .Q(data_tx_l_bclk[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[22] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[22]),
        .Q(data_tx_l_bclk[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[23] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[23]),
        .Q(data_tx_l_bclk[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[2] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[2]),
        .Q(data_tx_l_bclk[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[3] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[3]),
        .Q(data_tx_l_bclk[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[4] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[4]),
        .Q(data_tx_l_bclk[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[5] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[5]),
        .Q(data_tx_l_bclk[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[6] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[6]),
        .Q(data_tx_l_bclk[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[7] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[7]),
        .Q(data_tx_l_bclk[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[8] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[8]),
        .Q(data_tx_l_bclk[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_bclk_reg[9] 
       (.C(jc[1]),
        .CE(data_tx_l_bclk_2),
        .D(data_tx_l_clk[9]),
        .Q(data_tx_l_bclk[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \data_tx_l_clk[23]_i_1 
       (.I0(\data_tx_l_rqst_clk_reg_n_0_[1] ),
        .O(\data_tx_l_clk[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[0] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [0]),
        .Q(data_tx_l_clk[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[10] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [10]),
        .Q(data_tx_l_clk[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[11] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [11]),
        .Q(data_tx_l_clk[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[12] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [12]),
        .Q(data_tx_l_clk[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[13] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [13]),
        .Q(data_tx_l_clk[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[14] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [14]),
        .Q(data_tx_l_clk[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[15] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [15]),
        .Q(data_tx_l_clk[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[16] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [16]),
        .Q(data_tx_l_clk[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[17] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [17]),
        .Q(data_tx_l_clk[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[18] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [18]),
        .Q(data_tx_l_clk[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[19] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [19]),
        .Q(data_tx_l_clk[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[1] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [1]),
        .Q(data_tx_l_clk[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[20] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [20]),
        .Q(data_tx_l_clk[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[21] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [21]),
        .Q(data_tx_l_clk[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[22] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [22]),
        .Q(data_tx_l_clk[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[23] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [23]),
        .Q(data_tx_l_clk[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[2] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [2]),
        .Q(data_tx_l_clk[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[3] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [3]),
        .Q(data_tx_l_clk[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[4] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [4]),
        .Q(data_tx_l_clk[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[5] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [5]),
        .Q(data_tx_l_clk[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[6] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [6]),
        .Q(data_tx_l_clk[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[7] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [7]),
        .Q(data_tx_l_clk[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[8] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [8]),
        .Q(data_tx_l_clk[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_clk_reg[9] 
       (.C(clk),
        .CE(\data_tx_l_clk[23]_i_1_n_0 ),
        .D(\data_tx_l_clk_reg[23]_0 [9]),
        .Q(data_tx_l_clk[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    data_tx_l_rqst_bclk_reg
       (.C(jc[1]),
        .CE(1'b1),
        .D(I2S_TX_n_2),
        .Q(data_tx_l_rqst_bclk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_rqst_clk_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_tx_l_rqst_bclk),
        .Q(\data_tx_l_rqst_clk_reg[0]__0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_rqst_clk_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_tx_l_rqst_clk_reg[0]__0 ),
        .Q(\data_tx_l_rqst_clk_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_wen_bclk_reg[0] 
       (.C(jc[1]),
        .CE(1'b1),
        .D(data_tx_l_wen_clk),
        .Q(\data_tx_l_wen_bclk_reg[0]__0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_l_wen_bclk_reg[1] 
       (.C(jc[1]),
        .CE(1'b1),
        .D(\data_tx_l_wen_bclk_reg[0]__0 ),
        .Q(\data_tx_l_wen_bclk_reg[1]__0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    data_tx_l_wen_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(\data_tx_l_rqst_clk_reg_n_0_[1] ),
        .Q(data_tx_l_wen_clk),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_left[0]_i_1 
       (.I0(data_rx_l_clk[0]),
        .I1(do_sine),
        .O(\data_rx_l_clk_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_left[1]_i_1 
       (.I0(data_rx_l_clk[1]),
        .I1(do_sine),
        .O(\data_rx_l_clk_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_tx_left[23]_i_1 
       (.I0(data_tx_left_rdy_pulse),
        .I1(do_sine),
        .O(data_tx_left_rdy_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_left[2]_i_1 
       (.I0(data_rx_l_clk[2]),
        .I1(do_sine),
        .O(\data_rx_l_clk_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_left[3]_i_1 
       (.I0(data_rx_l_clk[3]),
        .I1(do_sine),
        .O(\data_rx_l_clk_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_left[4]_i_1 
       (.I0(data_rx_l_clk[4]),
        .I1(do_sine),
        .O(\data_rx_l_clk_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_left[5]_i_1 
       (.I0(data_rx_l_clk[5]),
        .I1(do_sine),
        .O(\data_rx_l_clk_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_left[6]_i_1 
       (.I0(data_rx_l_clk[6]),
        .I1(do_sine),
        .O(\data_rx_l_clk_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_tx_left[7]_i_1 
       (.I0(data_tx_left_rdy_pulse),
        .I1(do_sine),
        .I2(rst),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_left[7]_i_2 
       (.I0(data_rx_l_clk[7]),
        .I1(do_sine),
        .O(\data_rx_l_clk_reg[7]_0 [7]));
  LUT2 #(
    .INIT(4'h2)) 
    data_tx_left_rdy_pulse_i_1
       (.I0(data_tx_l_wen_clk),
        .I1(\data_tx_l_rqst_clk_reg_n_0_[1] ),
        .O(data_tx_left_rdy_pulse0));
  FDRE data_tx_left_rdy_pulse_reg
       (.C(clk),
        .CE(E),
        .D(data_tx_left_rdy_pulse0),
        .Q(data_tx_left_rdy_pulse),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_r_bclk[23]_i_1 
       (.I0(\data_tx_r_wen_bclk_reg[1]__0 ),
        .I1(rst),
        .O(data_tx_r_bclk_1));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[0] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[0]),
        .Q(data_tx_r_bclk[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[10] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[10]),
        .Q(data_tx_r_bclk[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[11] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[11]),
        .Q(data_tx_r_bclk[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[12] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[12]),
        .Q(data_tx_r_bclk[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[13] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[13]),
        .Q(data_tx_r_bclk[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[14] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[14]),
        .Q(data_tx_r_bclk[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[15] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[15]),
        .Q(data_tx_r_bclk[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[16] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[16]),
        .Q(data_tx_r_bclk[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[17] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[17]),
        .Q(data_tx_r_bclk[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[18] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[18]),
        .Q(data_tx_r_bclk[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[19] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[19]),
        .Q(data_tx_r_bclk[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[1] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[1]),
        .Q(data_tx_r_bclk[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[20] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[20]),
        .Q(data_tx_r_bclk[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[21] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[21]),
        .Q(data_tx_r_bclk[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[22] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[22]),
        .Q(data_tx_r_bclk[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[23] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[23]),
        .Q(data_tx_r_bclk[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[2] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[2]),
        .Q(data_tx_r_bclk[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[3] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[3]),
        .Q(data_tx_r_bclk[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[4] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[4]),
        .Q(data_tx_r_bclk[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[5] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[5]),
        .Q(data_tx_r_bclk[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[6] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[6]),
        .Q(data_tx_r_bclk[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[7] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[7]),
        .Q(data_tx_r_bclk[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[8] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[8]),
        .Q(data_tx_r_bclk[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_bclk_reg[9] 
       (.C(jc[1]),
        .CE(data_tx_r_bclk_1),
        .D(data_tx_r_clk[9]),
        .Q(data_tx_r_bclk[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \data_tx_r_clk[23]_i_1 
       (.I0(\data_tx_r_rqst_clk_reg_n_0_[1] ),
        .O(\data_tx_r_clk[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[0] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [0]),
        .Q(data_tx_r_clk[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[10] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [10]),
        .Q(data_tx_r_clk[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[11] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [11]),
        .Q(data_tx_r_clk[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[12] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [12]),
        .Q(data_tx_r_clk[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[13] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [13]),
        .Q(data_tx_r_clk[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[14] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [14]),
        .Q(data_tx_r_clk[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[15] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [15]),
        .Q(data_tx_r_clk[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[16] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [16]),
        .Q(data_tx_r_clk[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[17] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [17]),
        .Q(data_tx_r_clk[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[18] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [18]),
        .Q(data_tx_r_clk[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[19] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [19]),
        .Q(data_tx_r_clk[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[1] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [1]),
        .Q(data_tx_r_clk[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[20] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [20]),
        .Q(data_tx_r_clk[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[21] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [21]),
        .Q(data_tx_r_clk[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[22] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [22]),
        .Q(data_tx_r_clk[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[23] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [23]),
        .Q(data_tx_r_clk[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[2] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [2]),
        .Q(data_tx_r_clk[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[3] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [3]),
        .Q(data_tx_r_clk[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[4] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [4]),
        .Q(data_tx_r_clk[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[5] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [5]),
        .Q(data_tx_r_clk[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[6] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [6]),
        .Q(data_tx_r_clk[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[7] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [7]),
        .Q(data_tx_r_clk[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[8] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [8]),
        .Q(data_tx_r_clk[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_clk_reg[9] 
       (.C(clk),
        .CE(\data_tx_r_clk[23]_i_1_n_0 ),
        .D(\data_tx_r_clk_reg[23]_0 [9]),
        .Q(data_tx_r_clk[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    data_tx_r_rqst_bclk_reg
       (.C(jc[1]),
        .CE(1'b1),
        .D(I2S_TX_n_3),
        .Q(data_tx_r_rqst_bclk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_rqst_clk_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_tx_r_rqst_bclk),
        .Q(\data_tx_r_rqst_clk_reg[0]__0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_rqst_clk_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_tx_r_rqst_clk_reg[0]__0 ),
        .Q(\data_tx_r_rqst_clk_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_wen_bclk_reg[0] 
       (.C(jc[1]),
        .CE(1'b1),
        .D(data_tx_r_wen_clk),
        .Q(\data_tx_r_wen_bclk_reg[0]__0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_r_wen_bclk_reg[1] 
       (.C(jc[1]),
        .CE(1'b1),
        .D(\data_tx_r_wen_bclk_reg[0]__0 ),
        .Q(\data_tx_r_wen_bclk_reg[1]__0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    data_tx_r_wen_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(\data_tx_r_rqst_clk_reg_n_0_[1] ),
        .Q(data_tx_r_wen_clk),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_right[0]_i_1 
       (.I0(data_rx_r_clk[0]),
        .I1(do_sine),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_right[1]_i_1 
       (.I0(data_rx_r_clk[1]),
        .I1(do_sine),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_tx_right[23]_i_1 
       (.I0(data_tx_right_rdy_pulse),
        .I1(do_sine),
        .O(data_tx_right_rdy_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_right[2]_i_1 
       (.I0(data_rx_r_clk[2]),
        .I1(do_sine),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_right[3]_i_1 
       (.I0(data_rx_r_clk[3]),
        .I1(do_sine),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_right[4]_i_1 
       (.I0(data_rx_r_clk[4]),
        .I1(do_sine),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_right[5]_i_1 
       (.I0(data_rx_r_clk[5]),
        .I1(do_sine),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_right[6]_i_1 
       (.I0(data_rx_r_clk[6]),
        .I1(do_sine),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_tx_right[7]_i_1 
       (.I0(do_sine),
        .I1(data_tx_right_rdy_pulse),
        .I2(rst),
        .O(do_sine_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx_right[7]_i_2 
       (.I0(data_rx_r_clk[7]),
        .I1(do_sine),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h2)) 
    data_tx_right_rdy_pulse_i_2
       (.I0(data_tx_r_wen_clk),
        .I1(\data_tx_r_rqst_clk_reg_n_0_[1] ),
        .O(data_tx_right_rdy_pulse0));
  FDRE data_tx_right_rdy_pulse_reg
       (.C(clk),
        .CE(E),
        .D(data_tx_right_rdy_pulse0),
        .Q(data_tx_right_rdy_pulse),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000080)) 
    rx_lrc_i_1
       (.I0(cnt[4]),
        .I1(cnt[0]),
        .I2(cnt[3]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .I5(rx_lrc_reg_0),
        .O(rx_lrc_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    rx_lrc_reg
       (.C(jc[1]),
        .CE(1'b1),
        .D(rx_lrc_i_1_n_0),
        .Q(rx_lrc_reg_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_phase[9]_i_1 
       (.I0(do_sine),
        .I1(data_tx_left_rdy_pulse),
        .O(do_sine_reg));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000080)) 
    tx_lrc_i_1
       (.I0(cnt[4]),
        .I1(cnt[0]),
        .I2(cnt[3]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .I5(tx_lrc_reg_0),
        .O(tx_lrc_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    tx_lrc_reg
       (.C(jc[1]),
        .CE(1'b1),
        .D(tx_lrc_i_1_n_0),
        .Q(tx_lrc_reg_0),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "I2S_Transmitter" *) 
module I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transmitter
   (jc,
    E,
    \data_tx_l_wen_bclk_reg[1] ,
    \data_tx_r_wen_bclk_reg[1] ,
    D,
    rst,
    \cnt_reg[4]_0 ,
    i2s_tx_lrc_d1_reg_0,
    Q,
    \data_tx_l_wen_bclk_reg[1]__0 ,
    data_tx_l_rqst_bclk,
    \data_tx_r_wen_bclk_reg[1]__0 ,
    data_tx_r_rqst_bclk,
    \data_in_reg[23] ,
    \data_in_reg[23]_0 );
  output [0:0]jc;
  output [0:0]E;
  output \data_tx_l_wen_bclk_reg[1] ;
  output \data_tx_r_wen_bclk_reg[1] ;
  output [23:0]D;
  input rst;
  input \cnt_reg[4]_0 ;
  input i2s_tx_lrc_d1_reg_0;
  input [23:0]Q;
  input \data_tx_l_wen_bclk_reg[1]__0 ;
  input data_tx_l_rqst_bclk;
  input \data_tx_r_wen_bclk_reg[1]__0 ;
  input data_tx_r_rqst_bclk;
  input [23:0]\data_in_reg[23] ;
  input [23:0]\data_in_reg[23]_0 ;

  wire [23:0]D;
  wire [0:0]E;
  wire [23:0]Q;
  wire cnt;
  wire [4:0]cnt0;
  wire \cnt[4]_i_1__0_n_0 ;
  wire \cnt_reg[4]_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire [23:0]\data_in_reg[23] ;
  wire [23:0]\data_in_reg[23]_0 ;
  wire \data_shift_reg[1]_i_1_n_0 ;
  wire \data_shift_reg[23]_i_1_n_0 ;
  wire \data_shift_reg_reg_n_0_[10] ;
  wire \data_shift_reg_reg_n_0_[11] ;
  wire \data_shift_reg_reg_n_0_[12] ;
  wire \data_shift_reg_reg_n_0_[13] ;
  wire \data_shift_reg_reg_n_0_[14] ;
  wire \data_shift_reg_reg_n_0_[15] ;
  wire \data_shift_reg_reg_n_0_[16] ;
  wire \data_shift_reg_reg_n_0_[17] ;
  wire \data_shift_reg_reg_n_0_[18] ;
  wire \data_shift_reg_reg_n_0_[19] ;
  wire \data_shift_reg_reg_n_0_[1] ;
  wire \data_shift_reg_reg_n_0_[20] ;
  wire \data_shift_reg_reg_n_0_[21] ;
  wire \data_shift_reg_reg_n_0_[22] ;
  wire \data_shift_reg_reg_n_0_[2] ;
  wire \data_shift_reg_reg_n_0_[3] ;
  wire \data_shift_reg_reg_n_0_[4] ;
  wire \data_shift_reg_reg_n_0_[5] ;
  wire \data_shift_reg_reg_n_0_[6] ;
  wire \data_shift_reg_reg_n_0_[7] ;
  wire \data_shift_reg_reg_n_0_[8] ;
  wire \data_shift_reg_reg_n_0_[9] ;
  wire data_tx_l_rqst_bclk;
  wire \data_tx_l_wen_bclk_reg[1] ;
  wire \data_tx_l_wen_bclk_reg[1]__0 ;
  wire data_tx_r_rqst_bclk;
  wire \data_tx_r_wen_bclk_reg[1] ;
  wire \data_tx_r_wen_bclk_reg[1]__0 ;
  wire do_shift_out_i_1_n_0;
  wire do_shift_out_i_2_n_0;
  wire do_shift_out_reg_n_0;
  wire i2s_tx_dat_i_1_n_0;
  wire i2s_tx_lrc_d1;
  wire i2s_tx_lrc_d1_reg_0;
  wire [0:0]jc;
  wire lrc_pulse_i_1_n_0;
  wire p_0_in;
  wire [23:2]p_1_in;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .O(cnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \cnt[3]_i_1 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(cnt0[3]));
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[4]_i_1__0 
       (.I0(i2s_tx_lrc_d1),
        .I1(i2s_tx_lrc_d1_reg_0),
        .I2(rst),
        .O(\cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \cnt[4]_i_2 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(rst),
        .O(cnt));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \cnt[4]_i_3 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(cnt0[4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[0] 
       (.C(\cnt_reg[4]_0 ),
        .CE(cnt),
        .D(cnt0[0]),
        .Q(\cnt_reg_n_0_[0] ),
        .R(\cnt[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[1] 
       (.C(\cnt_reg[4]_0 ),
        .CE(cnt),
        .D(cnt0[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\cnt[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[2] 
       (.C(\cnt_reg[4]_0 ),
        .CE(cnt),
        .D(cnt0[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[4]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[3] 
       (.C(\cnt_reg[4]_0 ),
        .CE(cnt),
        .D(cnt0[3]),
        .Q(\cnt_reg_n_0_[3] ),
        .S(\cnt[4]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[4] 
       (.C(\cnt_reg[4]_0 ),
        .CE(cnt),
        .D(cnt0[4]),
        .Q(\cnt_reg_n_0_[4] ),
        .S(\cnt[4]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[0]_i_1 
       (.I0(\data_in_reg[23] [0]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[10]_i_1 
       (.I0(\data_in_reg[23] [10]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[11]_i_1 
       (.I0(\data_in_reg[23] [11]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[12]_i_1 
       (.I0(\data_in_reg[23] [12]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[13]_i_1 
       (.I0(\data_in_reg[23] [13]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[14]_i_1 
       (.I0(\data_in_reg[23] [14]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[15]_i_1 
       (.I0(\data_in_reg[23] [15]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[16]_i_1 
       (.I0(\data_in_reg[23] [16]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[17]_i_1 
       (.I0(\data_in_reg[23] [17]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[18]_i_1 
       (.I0(\data_in_reg[23] [18]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[19]_i_1 
       (.I0(\data_in_reg[23] [19]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[1]_i_1 
       (.I0(\data_in_reg[23] [1]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[20]_i_1 
       (.I0(\data_in_reg[23] [20]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[21]_i_1 
       (.I0(\data_in_reg[23] [21]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[22]_i_1 
       (.I0(\data_in_reg[23] [22]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[23]_i_1 
       (.I0(\data_in_reg[23] [23]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[2]_i_1 
       (.I0(\data_in_reg[23] [2]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[3]_i_1 
       (.I0(\data_in_reg[23] [3]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[4]_i_1 
       (.I0(\data_in_reg[23] [4]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[5]_i_1 
       (.I0(\data_in_reg[23] [5]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[6]_i_1 
       (.I0(\data_in_reg[23] [6]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[7]_i_1 
       (.I0(\data_in_reg[23] [7]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[8]_i_1 
       (.I0(\data_in_reg[23] [8]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in[9]_i_1 
       (.I0(\data_in_reg[23] [9]),
        .I1(i2s_tx_lrc_d1),
        .I2(\data_in_reg[23]_0 [9]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[10]_i_1 
       (.I0(Q[9]),
        .I1(\data_shift_reg_reg_n_0_[9] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[11]_i_1 
       (.I0(Q[10]),
        .I1(\data_shift_reg_reg_n_0_[10] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[12]_i_1 
       (.I0(Q[11]),
        .I1(\data_shift_reg_reg_n_0_[11] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[13]_i_1 
       (.I0(Q[12]),
        .I1(\data_shift_reg_reg_n_0_[12] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[14]_i_1 
       (.I0(Q[13]),
        .I1(\data_shift_reg_reg_n_0_[13] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[15]_i_1 
       (.I0(Q[14]),
        .I1(\data_shift_reg_reg_n_0_[14] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[16]_i_1 
       (.I0(Q[15]),
        .I1(\data_shift_reg_reg_n_0_[15] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[16]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[17]_i_1 
       (.I0(Q[16]),
        .I1(\data_shift_reg_reg_n_0_[16] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[17]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[18]_i_1 
       (.I0(Q[17]),
        .I1(\data_shift_reg_reg_n_0_[17] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[18]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[19]_i_1 
       (.I0(Q[18]),
        .I1(\data_shift_reg_reg_n_0_[18] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_shift_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(i2s_tx_lrc_d1),
        .I2(i2s_tx_lrc_d1_reg_0),
        .O(\data_shift_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[20]_i_1 
       (.I0(Q[19]),
        .I1(\data_shift_reg_reg_n_0_[19] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[20]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[21]_i_1 
       (.I0(Q[20]),
        .I1(\data_shift_reg_reg_n_0_[20] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[21]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[22]_i_1 
       (.I0(Q[21]),
        .I1(\data_shift_reg_reg_n_0_[21] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[22]));
  LUT3 #(
    .INIT(8'hBE)) 
    \data_shift_reg[23]_i_1 
       (.I0(do_shift_out_reg_n_0),
        .I1(i2s_tx_lrc_d1),
        .I2(i2s_tx_lrc_d1_reg_0),
        .O(\data_shift_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[23]_i_2 
       (.I0(Q[22]),
        .I1(\data_shift_reg_reg_n_0_[22] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(\data_shift_reg_reg_n_0_[1] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[3]_i_1 
       (.I0(Q[2]),
        .I1(\data_shift_reg_reg_n_0_[2] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[4]_i_1 
       (.I0(Q[3]),
        .I1(\data_shift_reg_reg_n_0_[3] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[5]_i_1 
       (.I0(Q[4]),
        .I1(\data_shift_reg_reg_n_0_[4] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[6]_i_1 
       (.I0(Q[5]),
        .I1(\data_shift_reg_reg_n_0_[5] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[7]_i_1 
       (.I0(Q[6]),
        .I1(\data_shift_reg_reg_n_0_[6] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[8]_i_1 
       (.I0(Q[7]),
        .I1(\data_shift_reg_reg_n_0_[7] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \data_shift_reg[9]_i_1 
       (.I0(Q[8]),
        .I1(\data_shift_reg_reg_n_0_[8] ),
        .I2(i2s_tx_lrc_d1_reg_0),
        .I3(i2s_tx_lrc_d1),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[10] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\data_shift_reg_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[11] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\data_shift_reg_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[12] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\data_shift_reg_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[13] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\data_shift_reg_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[14] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\data_shift_reg_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[15] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(\data_shift_reg_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[16] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(\data_shift_reg_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[17] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(\data_shift_reg_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[18] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(\data_shift_reg_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[19] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(\data_shift_reg_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[1] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(\data_shift_reg[1]_i_1_n_0 ),
        .Q(\data_shift_reg_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[20] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(\data_shift_reg_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[21] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(\data_shift_reg_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[22] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(\data_shift_reg_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[23] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(p_0_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[2] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\data_shift_reg_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[3] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\data_shift_reg_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[4] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\data_shift_reg_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[5] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\data_shift_reg_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[6] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\data_shift_reg_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[7] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\data_shift_reg_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[8] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\data_shift_reg_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_shift_reg_reg[9] 
       (.C(\cnt_reg[4]_0 ),
        .CE(\data_shift_reg[23]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\data_shift_reg_reg_n_0_[9] ),
        .R(rst));
  LUT5 #(
    .INIT(32'hCC45CC44)) 
    data_tx_l_rqst_bclk_i_1
       (.I0(\data_tx_l_wen_bclk_reg[1]__0 ),
        .I1(data_tx_l_rqst_bclk),
        .I2(i2s_tx_lrc_d1),
        .I3(rst),
        .I4(E),
        .O(\data_tx_l_wen_bclk_reg[1] ));
  LUT5 #(
    .INIT(32'hC5C4C4C4)) 
    data_tx_r_rqst_bclk_i_1
       (.I0(\data_tx_r_wen_bclk_reg[1]__0 ),
        .I1(data_tx_r_rqst_bclk),
        .I2(rst),
        .I3(i2s_tx_lrc_d1),
        .I4(E),
        .O(\data_tx_r_wen_bclk_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFF666F66666)) 
    do_shift_out_i_1
       (.I0(i2s_tx_lrc_d1_reg_0),
        .I1(i2s_tx_lrc_d1),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(do_shift_out_i_2_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(do_shift_out_reg_n_0),
        .O(do_shift_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    do_shift_out_i_2
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(do_shift_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    do_shift_out_reg
       (.C(\cnt_reg[4]_0 ),
        .CE(1'b1),
        .D(do_shift_out_i_1_n_0),
        .Q(do_shift_out_reg_n_0),
        .R(rst));
  LUT5 #(
    .INIT(32'hEB282828)) 
    i2s_tx_dat_i_1
       (.I0(Q[23]),
        .I1(i2s_tx_lrc_d1_reg_0),
        .I2(i2s_tx_lrc_d1),
        .I3(p_0_in),
        .I4(do_shift_out_reg_n_0),
        .O(i2s_tx_dat_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    i2s_tx_dat_reg
       (.C(\cnt_reg[4]_0 ),
        .CE(1'b1),
        .D(i2s_tx_dat_i_1_n_0),
        .Q(jc),
        .R(rst));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    i2s_tx_lrc_d1_reg
       (.C(\cnt_reg[4]_0 ),
        .CE(1'b1),
        .D(i2s_tx_lrc_d1_reg_0),
        .Q(i2s_tx_lrc_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    lrc_pulse_i_1
       (.I0(i2s_tx_lrc_d1),
        .I1(i2s_tx_lrc_d1_reg_0),
        .O(lrc_pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    lrc_pulse_reg
       (.C(\cnt_reg[4]_0 ),
        .CE(1'b1),
        .D(lrc_pulse_i_1_n_0),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Sine_Wave_Generator" *) 
module I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Sine_Wave_Generator
   (E,
    D,
    \smpl_data_reg[15]_0 ,
    \smpl_data_reg[15]_1 ,
    rst_0,
    smpl_dat_msb_reg,
    clk,
    Q,
    rst,
    do_sine,
    \data_tx_right_reg[23] ,
    \data_tx_left_reg[23] ,
    sw,
    smpl_dat_msb,
    audio_mute_n);
  output [0:0]E;
  output [15:0]D;
  output [0:0]\smpl_data_reg[15]_0 ;
  output [15:0]\smpl_data_reg[15]_1 ;
  output rst_0;
  output smpl_dat_msb_reg;
  input clk;
  input [9:0]Q;
  input rst;
  input do_sine;
  input [15:0]\data_tx_right_reg[23] ;
  input [15:0]\data_tx_left_reg[23] ;
  input [1:0]sw;
  input smpl_dat_msb;
  input audio_mute_n;

  wire [15:0]D;
  wire [0:0]E;
  wire [9:0]Q;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__2_n_1 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire audio_mute_n;
  wire clk;
  wire [15:0]\data_tx_left_reg[23] ;
  wire [15:0]\data_tx_right_reg[23] ;
  wire do_sine;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [15:0]p_0_in1_in;
  wire rst;
  wire rst_0;
  wire smpl_dat_msb;
  wire smpl_dat_msb_reg;
  wire [14:0]smpl_data;
  wire \smpl_data[0]_i_1_n_0 ;
  wire \smpl_data[0]_i_2_n_0 ;
  wire \smpl_data[0]_i_3_n_0 ;
  wire \smpl_data[0]_i_4_n_0 ;
  wire \smpl_data[0]_i_5_n_0 ;
  wire \smpl_data[0]_i_6_n_0 ;
  wire \smpl_data[0]_i_7_n_0 ;
  wire \smpl_data[0]_i_8_n_0 ;
  wire \smpl_data[10]_i_1_n_0 ;
  wire \smpl_data[10]_i_2_n_0 ;
  wire \smpl_data[10]_i_3_n_0 ;
  wire \smpl_data[10]_i_4_n_0 ;
  wire \smpl_data[10]_i_5_n_0 ;
  wire \smpl_data[10]_i_6_n_0 ;
  wire \smpl_data[10]_i_7_n_0 ;
  wire \smpl_data[10]_i_8_n_0 ;
  wire \smpl_data[11]_i_1_n_0 ;
  wire \smpl_data[11]_i_2_n_0 ;
  wire \smpl_data[11]_i_3_n_0 ;
  wire \smpl_data[11]_i_4_n_0 ;
  wire \smpl_data[11]_i_5_n_0 ;
  wire \smpl_data[11]_i_6_n_0 ;
  wire \smpl_data[11]_i_7_n_0 ;
  wire \smpl_data[11]_i_8_n_0 ;
  wire \smpl_data[12]_i_1_n_0 ;
  wire \smpl_data[12]_i_2_n_0 ;
  wire \smpl_data[12]_i_3_n_0 ;
  wire \smpl_data[12]_i_4_n_0 ;
  wire \smpl_data[12]_i_5_n_0 ;
  wire \smpl_data[12]_i_6_n_0 ;
  wire \smpl_data[12]_i_7_n_0 ;
  wire \smpl_data[13]_i_10_n_0 ;
  wire \smpl_data[13]_i_11_n_0 ;
  wire \smpl_data[13]_i_12_n_0 ;
  wire \smpl_data[13]_i_13_n_0 ;
  wire \smpl_data[13]_i_14_n_0 ;
  wire \smpl_data[13]_i_1_n_0 ;
  wire \smpl_data[13]_i_2_n_0 ;
  wire \smpl_data[13]_i_3_n_0 ;
  wire \smpl_data[13]_i_4_n_0 ;
  wire \smpl_data[13]_i_5_n_0 ;
  wire \smpl_data[13]_i_6_n_0 ;
  wire \smpl_data[13]_i_7_n_0 ;
  wire \smpl_data[13]_i_8_n_0 ;
  wire \smpl_data[13]_i_9_n_0 ;
  wire \smpl_data[14]_i_1_n_0 ;
  wire \smpl_data[14]_i_2_n_0 ;
  wire \smpl_data[14]_i_3_n_0 ;
  wire \smpl_data[14]_i_4_n_0 ;
  wire \smpl_data[14]_i_5_n_0 ;
  wire \smpl_data[14]_i_6_n_0 ;
  wire \smpl_data[14]_i_7_n_0 ;
  wire \smpl_data[15]_i_1_n_0 ;
  wire \smpl_data[1]_i_1_n_0 ;
  wire \smpl_data[1]_i_2_n_0 ;
  wire \smpl_data[1]_i_3_n_0 ;
  wire \smpl_data[1]_i_4_n_0 ;
  wire \smpl_data[1]_i_5_n_0 ;
  wire \smpl_data[1]_i_6_n_0 ;
  wire \smpl_data[1]_i_7_n_0 ;
  wire \smpl_data[1]_i_8_n_0 ;
  wire \smpl_data[2]_i_1_n_0 ;
  wire \smpl_data[2]_i_2_n_0 ;
  wire \smpl_data[2]_i_3_n_0 ;
  wire \smpl_data[2]_i_4_n_0 ;
  wire \smpl_data[2]_i_5_n_0 ;
  wire \smpl_data[2]_i_6_n_0 ;
  wire \smpl_data[2]_i_7_n_0 ;
  wire \smpl_data[2]_i_8_n_0 ;
  wire \smpl_data[3]_i_1_n_0 ;
  wire \smpl_data[3]_i_2_n_0 ;
  wire \smpl_data[3]_i_3_n_0 ;
  wire \smpl_data[3]_i_4_n_0 ;
  wire \smpl_data[3]_i_5_n_0 ;
  wire \smpl_data[3]_i_6_n_0 ;
  wire \smpl_data[3]_i_7_n_0 ;
  wire \smpl_data[3]_i_8_n_0 ;
  wire \smpl_data[4]_i_1_n_0 ;
  wire \smpl_data[4]_i_2_n_0 ;
  wire \smpl_data[4]_i_3_n_0 ;
  wire \smpl_data[4]_i_4_n_0 ;
  wire \smpl_data[4]_i_5_n_0 ;
  wire \smpl_data[4]_i_6_n_0 ;
  wire \smpl_data[4]_i_7_n_0 ;
  wire \smpl_data[4]_i_8_n_0 ;
  wire \smpl_data[5]_i_1_n_0 ;
  wire \smpl_data[5]_i_2_n_0 ;
  wire \smpl_data[5]_i_3_n_0 ;
  wire \smpl_data[5]_i_4_n_0 ;
  wire \smpl_data[5]_i_5_n_0 ;
  wire \smpl_data[5]_i_6_n_0 ;
  wire \smpl_data[5]_i_7_n_0 ;
  wire \smpl_data[5]_i_8_n_0 ;
  wire \smpl_data[6]_i_1_n_0 ;
  wire \smpl_data[6]_i_2_n_0 ;
  wire \smpl_data[6]_i_3_n_0 ;
  wire \smpl_data[6]_i_4_n_0 ;
  wire \smpl_data[6]_i_5_n_0 ;
  wire \smpl_data[6]_i_6_n_0 ;
  wire \smpl_data[6]_i_7_n_0 ;
  wire \smpl_data[6]_i_8_n_0 ;
  wire \smpl_data[7]_i_1_n_0 ;
  wire \smpl_data[7]_i_2_n_0 ;
  wire \smpl_data[7]_i_3_n_0 ;
  wire \smpl_data[7]_i_4_n_0 ;
  wire \smpl_data[7]_i_5_n_0 ;
  wire \smpl_data[7]_i_6_n_0 ;
  wire \smpl_data[7]_i_7_n_0 ;
  wire \smpl_data[7]_i_8_n_0 ;
  wire \smpl_data[8]_i_1_n_0 ;
  wire \smpl_data[8]_i_2_n_0 ;
  wire \smpl_data[8]_i_3_n_0 ;
  wire \smpl_data[8]_i_4_n_0 ;
  wire \smpl_data[8]_i_5_n_0 ;
  wire \smpl_data[8]_i_6_n_0 ;
  wire \smpl_data[8]_i_7_n_0 ;
  wire \smpl_data[8]_i_8_n_0 ;
  wire \smpl_data[9]_i_1_n_0 ;
  wire \smpl_data[9]_i_2_n_0 ;
  wire \smpl_data[9]_i_3_n_0 ;
  wire \smpl_data[9]_i_4_n_0 ;
  wire \smpl_data[9]_i_5_n_0 ;
  wire \smpl_data[9]_i_6_n_0 ;
  wire \smpl_data[9]_i_7_n_0 ;
  wire \smpl_data[9]_i_8_n_0 ;
  wire [0:0]\smpl_data_reg[15]_0 ;
  wire [15:0]\smpl_data_reg[15]_1 ;
  wire [9:0]smpl_phase_reg;
  wire smpl_phase_reg_reg_rep_n_0;
  wire smpl_phase_reg_reg_rep_n_1;
  wire smpl_phase_reg_reg_rep_n_10;
  wire smpl_phase_reg_reg_rep_n_11;
  wire smpl_phase_reg_reg_rep_n_12;
  wire smpl_phase_reg_reg_rep_n_13;
  wire smpl_phase_reg_reg_rep_n_14;
  wire smpl_phase_reg_reg_rep_n_15;
  wire smpl_phase_reg_reg_rep_n_2;
  wire smpl_phase_reg_reg_rep_n_3;
  wire smpl_phase_reg_reg_rep_n_4;
  wire smpl_phase_reg_reg_rep_n_5;
  wire smpl_phase_reg_reg_rep_n_6;
  wire smpl_phase_reg_reg_rep_n_7;
  wire smpl_phase_reg_reg_rep_n_8;
  wire smpl_phase_reg_reg_rep_n_9;
  wire [1:0]sw;
  wire [3:3]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [15:0]NLW_smpl_phase_reg_reg_rep_DOBDO_UNCONNECTED;
  wire [1:0]NLW_smpl_phase_reg_reg_rep_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_smpl_phase_reg_reg_rep_DOPBDOP_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(p_0_in1_in[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3],\_inferred__0/i__carry__2_n_1 ,\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'hF9F0)) 
    audio_mute_n_i_1
       (.I0(smpl_dat_msb),
        .I1(\smpl_data_reg[15]_0 ),
        .I2(sw[0]),
        .I3(audio_mute_n),
        .O(smpl_dat_msb_reg));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[10]_i_1 
       (.I0(smpl_data[2]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [2]),
        .O(\smpl_data_reg[15]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[11]_i_1 
       (.I0(smpl_data[3]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [3]),
        .O(\smpl_data_reg[15]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[12]_i_1 
       (.I0(smpl_data[4]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [4]),
        .O(\smpl_data_reg[15]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[13]_i_1 
       (.I0(smpl_data[5]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [5]),
        .O(\smpl_data_reg[15]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[14]_i_1 
       (.I0(smpl_data[6]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [6]),
        .O(\smpl_data_reg[15]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[15]_i_1 
       (.I0(smpl_data[7]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [7]),
        .O(\smpl_data_reg[15]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[16]_i_1 
       (.I0(smpl_data[8]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [8]),
        .O(\smpl_data_reg[15]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[17]_i_1 
       (.I0(smpl_data[9]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [9]),
        .O(\smpl_data_reg[15]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[18]_i_1 
       (.I0(smpl_data[10]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [10]),
        .O(\smpl_data_reg[15]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[19]_i_1 
       (.I0(smpl_data[11]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [11]),
        .O(\smpl_data_reg[15]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[20]_i_1 
       (.I0(smpl_data[12]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [12]),
        .O(\smpl_data_reg[15]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[21]_i_1 
       (.I0(smpl_data[13]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [13]),
        .O(\smpl_data_reg[15]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[22]_i_1 
       (.I0(smpl_data[14]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [14]),
        .O(\smpl_data_reg[15]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[23]_i_2 
       (.I0(\smpl_data_reg[15]_0 ),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [15]),
        .O(\smpl_data_reg[15]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[8]_i_1 
       (.I0(smpl_data[0]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [0]),
        .O(\smpl_data_reg[15]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_left[9]_i_1 
       (.I0(smpl_data[1]),
        .I1(do_sine),
        .I2(\data_tx_left_reg[23] [1]),
        .O(\smpl_data_reg[15]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[10]_i_1 
       (.I0(smpl_data[2]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[11]_i_1 
       (.I0(smpl_data[3]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[12]_i_1 
       (.I0(smpl_data[4]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[13]_i_1 
       (.I0(smpl_data[5]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[14]_i_1 
       (.I0(smpl_data[6]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[15]_i_1 
       (.I0(smpl_data[7]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[16]_i_1 
       (.I0(smpl_data[8]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[17]_i_1 
       (.I0(smpl_data[9]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[18]_i_1 
       (.I0(smpl_data[10]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[19]_i_1 
       (.I0(smpl_data[11]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[20]_i_1 
       (.I0(smpl_data[12]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[21]_i_1 
       (.I0(smpl_data[13]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[22]_i_1 
       (.I0(smpl_data[14]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[23]_i_2 
       (.I0(\smpl_data_reg[15]_0 ),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[8]_i_1 
       (.I0(smpl_data[0]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx_right[9]_i_1 
       (.I0(smpl_data[1]),
        .I1(do_sine),
        .I2(\data_tx_right_reg[23] [1]),
        .O(D[1]));
  LUT1 #(
    .INIT(2'h1)) 
    data_tx_right_rdy_pulse_i_1
       (.I0(rst),
        .O(E));
  LUT5 #(
    .INIT(32'hDCCDCCCC)) 
    do_sine_i_1
       (.I0(rst),
        .I1(sw[1]),
        .I2(smpl_dat_msb),
        .I3(\smpl_data_reg[15]_0 ),
        .I4(do_sine),
        .O(rst_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__0_i_1
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[7]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_8),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__0_i_2
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[6]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_9),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__0_i_3
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[5]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_10),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__0_i_4
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[4]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_11),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__1_i_1
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[11]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_4),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__1_i_2
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[10]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_5),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__1_i_3
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[9]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_6),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__1_i_4
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[8]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_7),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__2_i_1
       (.I0(smpl_phase_reg[8]),
        .I1(smpl_phase_reg_reg_rep_n_0),
        .O(i__carry__2_i_1_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__2_i_2
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(i__carry__2_i_5_n_0),
        .I3(smpl_phase_reg_reg_rep_n_1),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__2_i_3
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_2),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry__2_i_4
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[12]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_3),
        .I4(smpl_phase_reg[8]),
        .O(i__carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEAA0000)) 
    i__carry__2_i_5
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_14_n_0 ),
        .I2(i__carry__2_i_6_n_0),
        .I3(\smpl_data[13]_i_12_n_0 ),
        .I4(\smpl_data[14]_i_6_n_0 ),
        .I5(\smpl_data[14]_i_7_n_0 ),
        .O(i__carry__2_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h14)) 
    i__carry__2_i_6
       (.I0(smpl_phase_reg[2]),
        .I1(smpl_phase_reg[1]),
        .I2(smpl_phase_reg[0]),
        .O(i__carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry_i_1
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[3]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_12),
        .I4(smpl_phase_reg[8]),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry_i_2
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[2]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_13),
        .I4(smpl_phase_reg[8]),
        .O(i__carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h474700FF)) 
    i__carry_i_3
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[1]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_14),
        .I4(smpl_phase_reg[8]),
        .O(i__carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    i__carry_i_4
       (.I0(\smpl_data[13]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[0]_i_2_n_0 ),
        .I3(smpl_phase_reg_reg_rep_n_15),
        .I4(smpl_phase_reg[8]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[0]_i_1 
       (.I0(\smpl_data[0]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[0]_i_3_n_0 ),
        .I5(\smpl_data[0]_i_4_n_0 ),
        .O(\smpl_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[0]_i_2 
       (.I0(\smpl_data[0]_i_5_n_0 ),
        .I1(\smpl_data[0]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[0]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[0]_i_8_n_0 ),
        .O(\smpl_data[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[0]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_15),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[0]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[0]),
        .O(\smpl_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF1A5B2FE2839F34B)) 
    \smpl_data[0]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[0]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h17E2A46F122DF6A9)) 
    \smpl_data[0]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[2]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h11982A13E4CDF3F6)) 
    \smpl_data[0]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[2]),
        .O(\smpl_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4FBA27FFEDA8224A)) 
    \smpl_data[0]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(smpl_phase_reg[2]),
        .I2(\smpl_data[13]_i_12_n_0 ),
        .I3(smpl_phase_reg[1]),
        .I4(\smpl_data[13]_i_14_n_0 ),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[10]_i_1 
       (.I0(\smpl_data[10]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[10]_i_3_n_0 ),
        .I5(\smpl_data[10]_i_4_n_0 ),
        .O(\smpl_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[10]_i_2 
       (.I0(\smpl_data[10]_i_5_n_0 ),
        .I1(\smpl_data[10]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[10]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[10]_i_8_n_0 ),
        .O(\smpl_data[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[10]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_5),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[10]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[10]),
        .O(\smpl_data[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA5455)) 
    \smpl_data[10]_i_5 
       (.I0(\smpl_data[13]_i_14_n_0 ),
        .I1(smpl_phase_reg[2]),
        .I2(smpl_phase_reg[1]),
        .I3(smpl_phase_reg[0]),
        .I4(\smpl_data[13]_i_12_n_0 ),
        .I5(\smpl_data[14]_i_4_n_0 ),
        .O(\smpl_data[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB6A46D69A46449B6)) 
    \smpl_data[10]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[2]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0C3C7C7878770)) 
    \smpl_data[10]_i_7 
       (.I0(\smpl_data[13]_i_12_n_0 ),
        .I1(\smpl_data[14]_i_4_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[2]),
        .O(\smpl_data[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3CC2CC23DCC3C63C)) 
    \smpl_data[10]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[11]_i_1 
       (.I0(\smpl_data[11]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[11]_i_3_n_0 ),
        .I5(\smpl_data[11]_i_4_n_0 ),
        .O(\smpl_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[11]_i_2 
       (.I0(\smpl_data[11]_i_5_n_0 ),
        .I1(\smpl_data[11]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[11]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[11]_i_8_n_0 ),
        .O(\smpl_data[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[11]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_4),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[11]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[11]),
        .O(\smpl_data[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAE)) 
    \smpl_data[11]_i_5 
       (.I0(\smpl_data[13]_i_12_n_0 ),
        .I1(smpl_phase_reg[0]),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(\smpl_data[13]_i_14_n_0 ),
        .I5(\smpl_data[14]_i_4_n_0 ),
        .O(\smpl_data[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2B393BB246626264)) 
    \smpl_data[11]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[0]),
        .I5(\smpl_data[13]_i_14_n_0 ),
        .O(\smpl_data[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3664364333333333)) 
    \smpl_data[11]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[1]),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[0]),
        .I5(\smpl_data[13]_i_14_n_0 ),
        .O(\smpl_data[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA995899A6A6A6AE6)) 
    \smpl_data[11]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[0]),
        .I5(\smpl_data[13]_i_14_n_0 ),
        .O(\smpl_data[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[12]_i_1 
       (.I0(\smpl_data[12]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[12]_i_3_n_0 ),
        .I5(\smpl_data[12]_i_4_n_0 ),
        .O(\smpl_data[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \smpl_data[12]_i_2 
       (.I0(\smpl_data[12]_i_5_n_0 ),
        .I1(\smpl_data[14]_i_6_n_0 ),
        .I2(\smpl_data[12]_i_6_n_0 ),
        .I3(\smpl_data[14]_i_7_n_0 ),
        .I4(\smpl_data[12]_i_7_n_0 ),
        .O(\smpl_data[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[12]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_3),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[12]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[12]),
        .O(\smpl_data[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBAAB555555D5)) 
    \smpl_data[12]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_14_n_0 ),
        .I2(smpl_phase_reg[0]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[2]),
        .I5(\smpl_data[13]_i_12_n_0 ),
        .O(\smpl_data[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA55191195)) 
    \smpl_data[12]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_14_n_0 ),
        .I2(smpl_phase_reg[0]),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[1]),
        .I5(\smpl_data[13]_i_12_n_0 ),
        .O(\smpl_data[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h445544D4A222222A)) 
    \smpl_data[12]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_14_n_0 ),
        .I2(smpl_phase_reg[0]),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[1]),
        .I5(\smpl_data[13]_i_12_n_0 ),
        .O(\smpl_data[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[13]_i_1 
       (.I0(\smpl_data[13]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[13]_i_6_n_0 ),
        .I5(\smpl_data[13]_i_7_n_0 ),
        .O(\smpl_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3BBBBBB33BBBBBBC)) 
    \smpl_data[13]_i_10 
       (.I0(\smpl_data[13]_i_14_n_0 ),
        .I1(smpl_phase_reg[4]),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[0]),
        .I5(smpl_phase_reg[3]),
        .O(\smpl_data[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \smpl_data[13]_i_11 
       (.I0(smpl_phase_reg[4]),
        .I1(smpl_phase_reg[2]),
        .I2(smpl_phase_reg[1]),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[3]),
        .I5(smpl_phase_reg[5]),
        .O(\smpl_data[13]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \smpl_data[13]_i_12 
       (.I0(smpl_phase_reg[3]),
        .I1(smpl_phase_reg[0]),
        .I2(smpl_phase_reg[1]),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[4]),
        .O(\smpl_data[13]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \smpl_data[13]_i_13 
       (.I0(smpl_phase_reg[1]),
        .I1(smpl_phase_reg[2]),
        .I2(smpl_phase_reg[0]),
        .O(\smpl_data[13]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h01FE)) 
    \smpl_data[13]_i_14 
       (.I0(smpl_phase_reg[2]),
        .I1(smpl_phase_reg[1]),
        .I2(smpl_phase_reg[0]),
        .I3(smpl_phase_reg[3]),
        .O(\smpl_data[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FF00FC88FC88)) 
    \smpl_data[13]_i_2 
       (.I0(\smpl_data[13]_i_8_n_0 ),
        .I1(\smpl_data[14]_i_6_n_0 ),
        .I2(\smpl_data[13]_i_9_n_0 ),
        .I3(\smpl_data[14]_i_7_n_0 ),
        .I4(\smpl_data[13]_i_10_n_0 ),
        .I5(\smpl_data[14]_i_4_n_0 ),
        .O(\smpl_data[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \smpl_data[13]_i_3 
       (.I0(smpl_phase_reg[6]),
        .I1(\smpl_data[13]_i_11_n_0 ),
        .I2(smpl_phase_reg[7]),
        .O(\smpl_data[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \smpl_data[13]_i_4 
       (.I0(\smpl_data[14]_i_7_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_13_n_0 ),
        .I3(\smpl_data[13]_i_14_n_0 ),
        .I4(\smpl_data[14]_i_4_n_0 ),
        .I5(\smpl_data[14]_i_6_n_0 ),
        .O(\smpl_data[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \smpl_data[13]_i_5 
       (.I0(smpl_phase_reg[8]),
        .I1(smpl_phase_reg[9]),
        .O(\smpl_data[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[13]_i_6 
       (.I0(smpl_phase_reg_reg_rep_n_2),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[13]_i_7 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[13]),
        .O(\smpl_data[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDDDCDCDDDDDCDCD7)) 
    \smpl_data[13]_i_8 
       (.I0(\smpl_data[13]_i_14_n_0 ),
        .I1(smpl_phase_reg[4]),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[0]),
        .I5(smpl_phase_reg[3]),
        .O(\smpl_data[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3BBB3BB33BBB3BBC)) 
    \smpl_data[13]_i_9 
       (.I0(\smpl_data[13]_i_14_n_0 ),
        .I1(smpl_phase_reg[4]),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[0]),
        .I5(smpl_phase_reg[3]),
        .O(\smpl_data[13]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hF0AAF0CC)) 
    \smpl_data[14]_i_1 
       (.I0(\smpl_data[14]_i_2_n_0 ),
        .I1(smpl_phase_reg_reg_rep_n_1),
        .I2(p_0_in1_in[14]),
        .I3(smpl_phase_reg[9]),
        .I4(smpl_phase_reg[8]),
        .O(\smpl_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333333333300808)) 
    \smpl_data[14]_i_2 
       (.I0(\smpl_data[14]_i_3_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[14]_i_4_n_0 ),
        .I3(\smpl_data[14]_i_5_n_0 ),
        .I4(\smpl_data[14]_i_6_n_0 ),
        .I5(\smpl_data[14]_i_7_n_0 ),
        .O(\smpl_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000001)) 
    \smpl_data[14]_i_3 
       (.I0(\smpl_data[13]_i_14_n_0 ),
        .I1(smpl_phase_reg[4]),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[0]),
        .I5(smpl_phase_reg[3]),
        .O(\smpl_data[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \smpl_data[14]_i_4 
       (.I0(smpl_phase_reg[4]),
        .I1(smpl_phase_reg[2]),
        .I2(smpl_phase_reg[1]),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[3]),
        .I5(smpl_phase_reg[5]),
        .O(\smpl_data[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2223232222232328)) 
    \smpl_data[14]_i_5 
       (.I0(\smpl_data[13]_i_14_n_0 ),
        .I1(smpl_phase_reg[4]),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[0]),
        .I5(smpl_phase_reg[3]),
        .O(\smpl_data[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \smpl_data[14]_i_6 
       (.I0(\smpl_data[13]_i_11_n_0 ),
        .I1(smpl_phase_reg[6]),
        .O(\smpl_data[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \smpl_data[14]_i_7 
       (.I0(smpl_phase_reg[6]),
        .I1(\smpl_data[13]_i_11_n_0 ),
        .I2(smpl_phase_reg[7]),
        .O(\smpl_data[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hC0CA)) 
    \smpl_data[15]_i_1 
       (.I0(smpl_phase_reg_reg_rep_n_0),
        .I1(p_0_in1_in[15]),
        .I2(smpl_phase_reg[9]),
        .I3(smpl_phase_reg[8]),
        .O(\smpl_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[1]_i_1 
       (.I0(\smpl_data[1]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[1]_i_3_n_0 ),
        .I5(\smpl_data[1]_i_4_n_0 ),
        .O(\smpl_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[1]_i_2 
       (.I0(\smpl_data[1]_i_5_n_0 ),
        .I1(\smpl_data[1]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[1]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[1]_i_8_n_0 ),
        .O(\smpl_data[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[1]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_14),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[1]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[1]),
        .O(\smpl_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h140C7F494323C300)) 
    \smpl_data[1]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[2]),
        .O(\smpl_data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDE010BED8936A07D)) 
    \smpl_data[1]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[2]),
        .O(\smpl_data[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC11FE2ADB6697359)) 
    \smpl_data[1]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h41262F3F16F37AE0)) 
    \smpl_data[1]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[2]),
        .I3(\smpl_data[13]_i_14_n_0 ),
        .I4(smpl_phase_reg[0]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[2]_i_1 
       (.I0(\smpl_data[2]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[2]_i_3_n_0 ),
        .I5(\smpl_data[2]_i_4_n_0 ),
        .O(\smpl_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[2]_i_2 
       (.I0(\smpl_data[2]_i_5_n_0 ),
        .I1(\smpl_data[2]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[2]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[2]_i_8_n_0 ),
        .O(\smpl_data[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[2]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_13),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[2]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[2]),
        .O(\smpl_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1D6C4AAB2E8EB634)) 
    \smpl_data[2]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[2]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1D650373D1C137E6)) 
    \smpl_data[2]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h539BED8D064DE8D2)) 
    \smpl_data[2]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[0]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE664CA09ABE13384)) 
    \smpl_data[2]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[2]),
        .O(\smpl_data[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[3]_i_1 
       (.I0(\smpl_data[3]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[3]_i_3_n_0 ),
        .I5(\smpl_data[3]_i_4_n_0 ),
        .O(\smpl_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[3]_i_2 
       (.I0(\smpl_data[3]_i_5_n_0 ),
        .I1(\smpl_data[3]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[3]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[3]_i_8_n_0 ),
        .O(\smpl_data[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[3]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_12),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[3]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[3]),
        .O(\smpl_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h61D53237D2C3AFE6)) 
    \smpl_data[3]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[2]),
        .O(\smpl_data[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD21082628677FB93)) 
    \smpl_data[3]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(\smpl_data[13]_i_14_n_0 ),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h935B3D49CF463462)) 
    \smpl_data[3]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF48080F593D7D70A)) 
    \smpl_data[3]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(smpl_phase_reg[2]),
        .I2(smpl_phase_reg[1]),
        .I3(\smpl_data[13]_i_12_n_0 ),
        .I4(\smpl_data[13]_i_14_n_0 ),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[4]_i_1 
       (.I0(\smpl_data[4]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[4]_i_3_n_0 ),
        .I5(\smpl_data[4]_i_4_n_0 ),
        .O(\smpl_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[4]_i_2 
       (.I0(\smpl_data[4]_i_5_n_0 ),
        .I1(\smpl_data[4]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[4]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[4]_i_8_n_0 ),
        .O(\smpl_data[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[4]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_11),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[4]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[4]),
        .O(\smpl_data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6C2888EAEA36F734)) 
    \smpl_data[4]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[1]),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[2]),
        .I5(\smpl_data[13]_i_14_n_0 ),
        .O(\smpl_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4A1BDE0283466BFF)) 
    \smpl_data[4]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[2]),
        .I3(\smpl_data[13]_i_14_n_0 ),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h36E9C116EA29DC94)) 
    \smpl_data[4]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[2]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8D58CD57D007A202)) 
    \smpl_data[4]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(smpl_phase_reg[2]),
        .I2(\smpl_data[13]_i_12_n_0 ),
        .I3(\smpl_data[13]_i_14_n_0 ),
        .I4(smpl_phase_reg[0]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[5]_i_1 
       (.I0(\smpl_data[5]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[5]_i_3_n_0 ),
        .I5(\smpl_data[5]_i_4_n_0 ),
        .O(\smpl_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[5]_i_2 
       (.I0(\smpl_data[5]_i_5_n_0 ),
        .I1(\smpl_data[5]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[5]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[5]_i_8_n_0 ),
        .O(\smpl_data[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[5]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_10),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[5]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[5]),
        .O(\smpl_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAEC8EC4EB77419C)) 
    \smpl_data[5]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[2]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[0]),
        .I5(\smpl_data[13]_i_14_n_0 ),
        .O(\smpl_data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7148A5DC5FB662B9)) 
    \smpl_data[5]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h24541DB2FF57D28E)) 
    \smpl_data[5]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[2]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0A083C7D7D7D690A)) 
    \smpl_data[5]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[2]),
        .O(\smpl_data[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[6]_i_1 
       (.I0(\smpl_data[6]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[6]_i_3_n_0 ),
        .I5(\smpl_data[6]_i_4_n_0 ),
        .O(\smpl_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[6]_i_2 
       (.I0(\smpl_data[6]_i_5_n_0 ),
        .I1(\smpl_data[6]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[6]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[6]_i_8_n_0 ),
        .O(\smpl_data[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[6]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_9),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[6]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[6]),
        .O(\smpl_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEB778322BA805FDD)) 
    \smpl_data[6]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(smpl_phase_reg[1]),
        .I2(smpl_phase_reg[2]),
        .I3(\smpl_data[13]_i_12_n_0 ),
        .I4(\smpl_data[13]_i_14_n_0 ),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h75BCA4680CFCB1F5)) 
    \smpl_data[6]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[1]),
        .I3(smpl_phase_reg[2]),
        .I4(\smpl_data[13]_i_14_n_0 ),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5933B1D7E6CC47FE)) 
    \smpl_data[6]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[0]),
        .I3(smpl_phase_reg[1]),
        .I4(smpl_phase_reg[2]),
        .I5(\smpl_data[13]_i_14_n_0 ),
        .O(\smpl_data[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAABDFFB55550002)) 
    \smpl_data[6]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[1]),
        .I3(smpl_phase_reg[2]),
        .I4(\smpl_data[13]_i_14_n_0 ),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[7]_i_1 
       (.I0(\smpl_data[7]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[7]_i_3_n_0 ),
        .I5(\smpl_data[7]_i_4_n_0 ),
        .O(\smpl_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[7]_i_2 
       (.I0(\smpl_data[7]_i_5_n_0 ),
        .I1(\smpl_data[7]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[7]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[7]_i_8_n_0 ),
        .O(\smpl_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[7]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_8),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[7]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[7]),
        .O(\smpl_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAD7DE8B8E8FDE782)) 
    \smpl_data[7]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(smpl_phase_reg[2]),
        .I2(\smpl_data[13]_i_12_n_0 ),
        .I3(\smpl_data[13]_i_14_n_0 ),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8B5DB02274A3DB1)) 
    \smpl_data[7]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(smpl_phase_reg[2]),
        .I3(\smpl_data[13]_i_14_n_0 ),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h23282AA85FD7D75D)) 
    \smpl_data[7]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(smpl_phase_reg[1]),
        .I2(smpl_phase_reg[2]),
        .I3(\smpl_data[13]_i_14_n_0 ),
        .I4(\smpl_data[13]_i_12_n_0 ),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFAAF0540AFAF5052)) 
    \smpl_data[7]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(smpl_phase_reg[2]),
        .I2(\smpl_data[13]_i_12_n_0 ),
        .I3(\smpl_data[13]_i_14_n_0 ),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[8]_i_1 
       (.I0(\smpl_data[8]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[8]_i_3_n_0 ),
        .I5(\smpl_data[8]_i_4_n_0 ),
        .O(\smpl_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[8]_i_2 
       (.I0(\smpl_data[8]_i_5_n_0 ),
        .I1(\smpl_data[8]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[8]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[8]_i_8_n_0 ),
        .O(\smpl_data[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[8]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_7),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[8]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[8]),
        .O(\smpl_data[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A9A9FBDFDEDEC8A)) 
    \smpl_data[8]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[2]),
        .O(\smpl_data[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1F64CB9EE4E11FCA)) 
    \smpl_data[8]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7D753A0A7F5DA0A0)) 
    \smpl_data[8]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(smpl_phase_reg[2]),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(\smpl_data[13]_i_12_n_0 ),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFE1101EEEA5511A8)) 
    \smpl_data[8]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[2]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    \smpl_data[9]_i_1 
       (.I0(\smpl_data[9]_i_2_n_0 ),
        .I1(\smpl_data[13]_i_3_n_0 ),
        .I2(\smpl_data[13]_i_4_n_0 ),
        .I3(\smpl_data[13]_i_5_n_0 ),
        .I4(\smpl_data[9]_i_3_n_0 ),
        .I5(\smpl_data[9]_i_4_n_0 ),
        .O(\smpl_data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \smpl_data[9]_i_2 
       (.I0(\smpl_data[9]_i_5_n_0 ),
        .I1(\smpl_data[9]_i_6_n_0 ),
        .I2(\smpl_data[14]_i_6_n_0 ),
        .I3(\smpl_data[9]_i_7_n_0 ),
        .I4(\smpl_data[14]_i_7_n_0 ),
        .I5(\smpl_data[9]_i_8_n_0 ),
        .O(\smpl_data[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \smpl_data[9]_i_3 
       (.I0(smpl_phase_reg_reg_rep_n_6),
        .I1(smpl_phase_reg[9]),
        .I2(smpl_phase_reg[8]),
        .O(\smpl_data[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \smpl_data[9]_i_4 
       (.I0(smpl_phase_reg[9]),
        .I1(p_0_in1_in[9]),
        .O(\smpl_data[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hADAFADBEADBFAFAD)) 
    \smpl_data[9]_i_5 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[2]),
        .I4(smpl_phase_reg[1]),
        .I5(smpl_phase_reg[0]),
        .O(\smpl_data[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD2C93632ED2D5312)) 
    \smpl_data[9]_i_6 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[2]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F28200A2835D7)) 
    \smpl_data[9]_i_7 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_14_n_0 ),
        .I2(\smpl_data[13]_i_12_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[2]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF01EF1F00FA51EF0)) 
    \smpl_data[9]_i_8 
       (.I0(\smpl_data[14]_i_4_n_0 ),
        .I1(\smpl_data[13]_i_12_n_0 ),
        .I2(\smpl_data[13]_i_14_n_0 ),
        .I3(smpl_phase_reg[0]),
        .I4(smpl_phase_reg[2]),
        .I5(smpl_phase_reg[1]),
        .O(\smpl_data[9]_i_8_n_0 ));
  FDRE \smpl_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[0]_i_1_n_0 ),
        .Q(smpl_data[0]),
        .R(rst));
  FDRE \smpl_data_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[10]_i_1_n_0 ),
        .Q(smpl_data[10]),
        .R(rst));
  FDRE \smpl_data_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[11]_i_1_n_0 ),
        .Q(smpl_data[11]),
        .R(rst));
  FDRE \smpl_data_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[12]_i_1_n_0 ),
        .Q(smpl_data[12]),
        .R(rst));
  FDRE \smpl_data_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[13]_i_1_n_0 ),
        .Q(smpl_data[13]),
        .R(rst));
  FDRE \smpl_data_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[14]_i_1_n_0 ),
        .Q(smpl_data[14]),
        .R(rst));
  FDRE \smpl_data_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[15]_i_1_n_0 ),
        .Q(\smpl_data_reg[15]_0 ),
        .R(rst));
  FDRE \smpl_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[1]_i_1_n_0 ),
        .Q(smpl_data[1]),
        .R(rst));
  FDRE \smpl_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[2]_i_1_n_0 ),
        .Q(smpl_data[2]),
        .R(rst));
  FDRE \smpl_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[3]_i_1_n_0 ),
        .Q(smpl_data[3]),
        .R(rst));
  FDRE \smpl_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[4]_i_1_n_0 ),
        .Q(smpl_data[4]),
        .R(rst));
  FDRE \smpl_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[5]_i_1_n_0 ),
        .Q(smpl_data[5]),
        .R(rst));
  FDRE \smpl_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[6]_i_1_n_0 ),
        .Q(smpl_data[6]),
        .R(rst));
  FDRE \smpl_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[7]_i_1_n_0 ),
        .Q(smpl_data[7]),
        .R(rst));
  FDRE \smpl_data_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[8]_i_1_n_0 ),
        .Q(smpl_data[8]),
        .R(rst));
  FDRE \smpl_data_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\smpl_data[9]_i_1_n_0 ),
        .Q(smpl_data[9]),
        .R(rst));
  FDRE \smpl_phase_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .D(Q[0]),
        .Q(smpl_phase_reg[0]),
        .R(1'b0));
  FDRE \smpl_phase_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .D(Q[1]),
        .Q(smpl_phase_reg[1]),
        .R(1'b0));
  FDRE \smpl_phase_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .D(Q[2]),
        .Q(smpl_phase_reg[2]),
        .R(1'b0));
  FDRE \smpl_phase_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .D(Q[3]),
        .Q(smpl_phase_reg[3]),
        .R(1'b0));
  FDRE \smpl_phase_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .D(Q[4]),
        .Q(smpl_phase_reg[4]),
        .R(1'b0));
  FDRE \smpl_phase_reg_reg[5] 
       (.C(clk),
        .CE(E),
        .D(Q[5]),
        .Q(smpl_phase_reg[5]),
        .R(1'b0));
  FDRE \smpl_phase_reg_reg[6] 
       (.C(clk),
        .CE(E),
        .D(Q[6]),
        .Q(smpl_phase_reg[6]),
        .R(1'b0));
  FDRE \smpl_phase_reg_reg[7] 
       (.C(clk),
        .CE(E),
        .D(Q[7]),
        .Q(smpl_phase_reg[7]),
        .R(1'b0));
  FDRE \smpl_phase_reg_reg[8] 
       (.C(clk),
        .CE(E),
        .D(Q[8]),
        .Q(smpl_phase_reg[8]),
        .R(1'b0));
  FDRE \smpl_phase_reg_reg[9] 
       (.C(clk),
        .CE(E),
        .D(Q[9]),
        .Q(smpl_phase_reg[9]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/nolabel_line138/smpl_phase_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0BC40AFB0A33096A08A207D907110648057F04B603ED0324025B019200C90000),
    .INIT_01(256'h1833176E16A815E2151C1455138F12C81201113A10720FAB0EE30E1C0D540C8C),
    .INIT_02(256'h246723A622E522232161209F1FDD1F1A1E571D931CCF1C0B1B471A8219BE18F9),
    .INIT_03(256'h30412F872ECC2E112D552C992BDC2B1F2A6129A328E52826276726A825E82528),
    .INIT_04(256'h3BA53AF23A40398C38D93824376F36BA3604354D349633DF3326326E31B530FB),
    .INIT_05(256'h467545CD4524447A43D04325427A41CE412140733FC53F173E683DB83D073C56),
    .INIT_06(256'h50974FFB4F5D4EBF4E204D814CE04C3F4B9D4AFB4A5849B4490F486947C3471C),
    .INIT_07(256'h59F3596458D3584257B0571D568A55F5556054C95432539B5302526851CE5133),
    .INIT_08(256'h627161F0616E60EB60685FE35F5D5ED75E4F5DC75D3E5CB35C285B9C5B0F5A82),
    .INIT_09(256'h69FD698B691968A6683267BC674666CF665665DD656364E8646C63EE637062F1),
    .INIT_0A(256'h708370226FC16F5E6EFB6E966E306DC96D616CF86C8E6C236BB76B4A6ADC6A6D),
    .INIT_0B(256'h75F375A57555750474B2745F740A73B5735E730772AE725471F9719D714070E2),
    .INIT_0C(256'h7A417A0579C87989794A790978C77884783F77FA77B3776B772276D8768D7641),
    .INIT_0D(256'h7D627D397D0E7CE37CB67C887C597C297BF87BC57B917B5C7B267AEE7AB67A7C),
    .INIT_0E(256'h7F4D7F377F217F097EEF7ED57EB97E9C7E7E7E5F7E3E7E1D7DFA7DD57DB07D89),
    .INIT_0F(256'h7FFE7FFD7FF97FF57FF07FE97FE17FD87FCD7FC17FB47FA67F977F867F747F61),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000007FFF),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    smpl_phase_reg_reg_rep
       (.ADDRARDADDR({1'b0,Q[8:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({smpl_phase_reg_reg_rep_n_0,smpl_phase_reg_reg_rep_n_1,smpl_phase_reg_reg_rep_n_2,smpl_phase_reg_reg_rep_n_3,smpl_phase_reg_reg_rep_n_4,smpl_phase_reg_reg_rep_n_5,smpl_phase_reg_reg_rep_n_6,smpl_phase_reg_reg_rep_n_7,smpl_phase_reg_reg_rep_n_8,smpl_phase_reg_reg_rep_n_9,smpl_phase_reg_reg_rep_n_10,smpl_phase_reg_reg_rep_n_11,smpl_phase_reg_reg_rep_n_12,smpl_phase_reg_reg_rep_n_13,smpl_phase_reg_reg_rep_n_14,smpl_phase_reg_reg_rep_n_15}),
        .DOBDO(NLW_smpl_phase_reg_reg_rep_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_smpl_phase_reg_reg_rep_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_smpl_phase_reg_reg_rep_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(E),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
