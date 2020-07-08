`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2020 03:14:04 AM
// Design Name: 
// Module Name: I2S_Transceiver_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module I2S_Transceiver_tb();

    localparam MASTER_MODE = 1;
    //localparam MCLK_HZ = 12288000;
    localparam MCLK_HZ = 100000000;
    localparam SAMPLE_RATE_HZ = 48000;
    localparam TX_SAMPLE_WIDTH = 8;
    localparam RX_SAMPLE_WIDTH = 8;
    localparam PRE_PAD = 3;
    localparam POST_PAD = 0;

    localparam MAX_SAMPLE_WIDTH = TX_SAMPLE_WIDTH > RX_SAMPLE_WIDTH ? TX_SAMPLE_WIDTH : RX_SAMPLE_WIDTH;

    reg clk = 0;
    reg rst = 0;
    reg mclk = 0;
    reg bclk_i = 0;
    wire bclk_o;

    wire i2s_tx_dat;
    reg i2s_tx_lrc_i = 0;
    wire i2s_tx_lrc_o;

    wire i2s_rx_dat;
    reg i2s_rx_lrc_i = 0;
    wire i2s_rx_lrc_o;

    reg [TX_SAMPLE_WIDTH - 1 : 0] data_tx_left = 0;
    reg [TX_SAMPLE_WIDTH - 1 : 0] data_tx_right = 0;
    wire data_tx_left_rdy_pulse;
    wire data_tx_right_rdy_pulse;

    wire [RX_SAMPLE_WIDTH - 1 : 0] data_rx_left;
    wire [RX_SAMPLE_WIDTH - 1 : 0] data_rx_right;
    wire data_rx_left_rdy_pulse;
    wire data_rx_right_rdy_pulse;

    I2S_Transceiver #(
        .MASTER_MODE(MASTER_MODE),
        .MCLK_HZ(MCLK_HZ),
        .SAMPLE_RATE_HZ(SAMPLE_RATE_HZ),
        .TX_SAMPLE_WIDTH(TX_SAMPLE_WIDTH),
        .RX_SAMPLE_WIDTH(RX_SAMPLE_WIDTH),
        .PRE_PAD(PRE_PAD),
        .POST_PAD(POST_PAD)
    )
    DUT_I2S_Transceiver(
        .clk(clk),
        .rst(rst),

        .mclk(mclk),
        .bclk_i(bclk_i),      // ignored if MASTER_MODE = 1
        .bclk_o(bclk_o),     // ignored if MASTER_MODE = 0

        // I2S signals for the Transmitter
        .i2s_tx_dat(i2s_tx_dat),
        .i2s_tx_lrc_i(i2s_tx_lrc_i),
        .i2s_tx_lrc_o(i2s_tx_lrc_o),

        // I2S signals for the Receiver
        .i2s_rx_dat(i2s_rx_dat),
        .i2s_rx_lrc_i(i2s_rx_lrc_i),
        .i2s_rx_lrc_o(i2s_rx_lrc_o),

        // internal connections for the Transmitter
        .data_tx_left(data_tx_left),
        .data_tx_right(data_tx_right),
        .data_tx_left_rdy_pulse(data_tx_left_rdy_pulse),
        .data_tx_right_rdy_pulse(data_tx_right_rdy_pulse),

        // internal connections for the Receiver
        .data_rx_left(data_rx_left),
        .data_rx_right(data_rx_right),
        .data_rx_left_rdy_pulse(data_rx_left_rdy_pulse),
        .data_rx_right_rdy_pulse(data_rx_right_rdy_pulse)
    );

    localparam clk_per = 10;
    localparam mclk_per = 80;
    localparam bclk_per = 650;

    always #(clk_per/2) clk <= !clk;
    always #(mclk_per/2) mclk <= !mclk;
    always #(bclk_per/2) bclk_i <= !bclk_i;

    localparam PI = 3.141592653589793;   // good enough for JPL high accuracy calcs
    localparam PHASE_SIZE = 256;
    localparam LR_LEFT = 1;
    localparam LR_RIGHT = 0;

    reg [TX_SAMPLE_WIDTH - 1:0] data_src;
    integer i, j, k;

    initial begin
        rst <= 1;
        #(bclk_per * 10);

        rst <= 0;

        #(bclk_per * 2);

        for (i = 0; i < PHASE_SIZE * 2; i = i + 1) begin
            data_src = $sin(2 * PI * i / PHASE_SIZE) * (2 ** (TX_SAMPLE_WIDTH - 1) - 1);
            data_tx_right = data_src;
            data_tx_left = data_src;
            wait (i2s_tx_lrc_o == LR_RIGHT);
            #(bclk_per);
            wait (i2s_tx_lrc_o == LR_LEFT);
            #(bclk_per);
        end

        $display("DONE");
        $finish;
    end

    assign i2s_rx_dat = i2s_tx_dat;

endmodule
