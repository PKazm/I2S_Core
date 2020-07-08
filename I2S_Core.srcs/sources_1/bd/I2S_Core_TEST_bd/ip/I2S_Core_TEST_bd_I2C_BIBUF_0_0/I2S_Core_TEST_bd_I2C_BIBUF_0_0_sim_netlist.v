// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Jul  6 14:13:51 2020
// Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Github_Repos/I2S_Core/I2S_Core.srcs/sources_1/bd/I2S_Core_TEST_bd/ip/I2S_Core_TEST_bd_I2C_BIBUF_0_0/I2S_Core_TEST_bd_I2C_BIBUF_0_0_sim_netlist.v
// Design      : I2S_Core_TEST_bd_I2C_BIBUF_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2S_Core_TEST_bd_I2C_BIBUF_0_0,I2C_BIBUF,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "I2C_BIBUF,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module I2S_Core_TEST_bd_I2C_BIBUF_0_0
   (i2c_sda,
    i2c_scl,
    i2c_sda_e,
    i2c_sda_i,
    i2c_sda_o,
    i2c_scl_e,
    i2c_scl_i,
    i2c_scl_o);
  inout i2c_sda;
  inout i2c_scl;
  input i2c_sda_e;
  input i2c_sda_i;
  output i2c_sda_o;
  input i2c_scl_e;
  input i2c_scl_i;
  output i2c_scl_o;

  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire i2c_scl;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire i2c_scl_e;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire i2c_scl_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire i2c_scl_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire i2c_sda;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire i2c_sda_e;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire i2c_sda_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire i2c_sda_o;

  I2S_Core_TEST_bd_I2C_BIBUF_0_0_I2C_BIBUF inst
       (.i2c_scl(i2c_scl),
        .i2c_scl_e(i2c_scl_e),
        .i2c_scl_i(i2c_scl_i),
        .i2c_scl_o(i2c_scl_o),
        .i2c_sda(i2c_sda),
        .i2c_sda_e(i2c_sda_e),
        .i2c_sda_i(i2c_sda_i),
        .i2c_sda_o(i2c_sda_o));
endmodule

(* ORIG_REF_NAME = "I2C_BIBUF" *) 
module I2S_Core_TEST_bd_I2C_BIBUF_0_0_I2C_BIBUF
   (i2c_sda_o,
    i2c_scl_o,
    i2c_sda,
    i2c_scl,
    i2c_sda_i,
    i2c_sda_e,
    i2c_scl_i,
    i2c_scl_e);
  output i2c_sda_o;
  output i2c_scl_o;
  inout i2c_sda;
  inout i2c_scl;
  input i2c_sda_i;
  input i2c_sda_e;
  input i2c_scl_i;
  input i2c_scl_e;

  wire i2c_scl;
  wire i2c_scl_e;
  wire i2c_scl_i;
  wire i2c_scl_o;
  wire i2c_sda;
  wire i2c_sda_e;
  wire i2c_sda_i;
  wire i2c_sda_o;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    IOBUF_i2c_scl
       (.I(i2c_scl_i),
        .IO(i2c_scl),
        .O(i2c_scl_o),
        .T(i2c_scl_e));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    IOBUF_i2c_sda
       (.I(i2c_sda_i),
        .IO(i2c_sda),
        .O(i2c_sda_o),
        .T(i2c_sda_e));
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
