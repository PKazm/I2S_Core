`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2020 04:13:40 AM
// Design Name: 
// Module Name: I2C_Transmitter_tb
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


module I2C_Transmitter_tb();

    localparam SAMPLE_WIDTH = 8;
    localparam PRE_PAD = 1;
    localparam POST_PAD = 0;

    reg clk = 0;
    reg rst = 0;

    wire i2s_dat;
    reg i2s_lrc = 0;

    reg [SAMPLE_WIDTH - 1:0] data_in;
    wire data_rdy_pulse;
    wire data_lr_channel;

    I2S_Transmitter #(
        .SAMPLE_WIDTH(SAMPLE_WIDTH),
        .PRE_PAD(PRE_PAD)
    )
    DUT_I2S_Transmitter(
        .clk(clk),     // BCLK
        .rst(rst),

        .i2s_tx_dat(i2s_dat),
        .i2s_tx_lrc(i2s_lrc),

        .data_in(data_in),
        .data_rdy_pulse(data_rdy_pulse),
        .data_lr_channel(data_lr_channel)
    );

    localparam clk_per = 650;
    always #(clk_per/2) clk <= !clk;

    localparam PI = 3.141592653589793;   // good enough for JPL high accuracy calcs
    localparam PHASE_SIZE = 256;
    localparam LR_LEFT = 1;
    localparam LR_RIGHT = 0;

    reg [SAMPLE_WIDTH - 1:0] data_src, data_test_left, data_test_right;
    integer i, j, k;
    integer first_sent = 0;

    initial begin
        rst <= 1;
        first_sent <= 0;
        #(clk_per * 10);

        wait (clk == 1);
        wait (clk == 0);
        rst <= 0;

        #(clk_per * 2);

        
        for (i = 0; i < PHASE_SIZE * 2; i = i + 1) begin
            data_src = $sin(2 * PI * i / PHASE_SIZE) * (2 ** (SAMPLE_WIDTH - 1) - 1);
            for (j = 0; j < 2; j = j + 1) begin
                i2s_lrc = ~i2s_lrc; // Init = 0, first data = 1 (left)
                if(i2s_lrc == LR_LEFT) begin
                    data_test_left = data_src;
                end
                else begin
                    data_test_right = data_src;
                end
                data_in = data_src;
                //data_src = ~data_src;
                #(clk_per * (SAMPLE_WIDTH -4 + PRE_PAD + POST_PAD));
            end
            first_sent <= 1;
        end

        $display("DONE");
        $finish;
    end

endmodule
