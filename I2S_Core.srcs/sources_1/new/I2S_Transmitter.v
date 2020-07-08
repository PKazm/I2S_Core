`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2020 12:20:11 AM
// Design Name: 
// Module Name: I2S_Transmitter
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


module I2S_Transmitter
    #(
        parameter SAMPLE_WIDTH = 16,
        parameter PRE_PAD = 0
    )
    (
        input wire clk,     // BCLK
        input wire rst,

        output reg i2s_tx_dat,
        input wire i2s_tx_lrc,

        input wire [SAMPLE_WIDTH - 1:0] data_in,
        output wire data_rdy_pulse,
        output wire data_lr_channel,

        output wire [$clog2(SAMPLE_WIDTH + PRE_PAD) - 1 : 0] cnt_monitor
    );

    localparam lrc_left = 1'b1;
    localparam lrc_right = 1'b0;

    localparam CNT_MAX = SAMPLE_WIDTH + PRE_PAD;
    
    reg [$clog2(CNT_MAX) - 1 : 0] cnt = 0;
    assign cnt_monitor = cnt;
    reg [SAMPLE_WIDTH - 1 : 0] data_shift_reg = 0;
    reg do_shift_out = 0;

    reg i2s_tx_lrc_d1 = 0;
    reg lrc_pulse = 0;


    always @(negedge clk) begin : p_lrc_pulse_gen
        i2s_tx_lrc_d1 <= i2s_tx_lrc;
        lrc_pulse <= i2s_tx_lrc_d1 ^ i2s_tx_lrc;
    end

    assign data_rdy_pulse = lrc_pulse;
    assign data_lr_channel = ~i2s_tx_lrc_d1;

    always @(negedge clk) begin : p_data_transmitter
        if(rst == 1) begin
            i2s_tx_dat <= 0;
            data_shift_reg <= 0;
            do_shift_out <= PRE_PAD == 0 ? 1 : 0;
        end
        else begin


            if(do_shift_out == 1) begin
                i2s_tx_dat <= data_shift_reg[SAMPLE_WIDTH - 1];
                data_shift_reg <= data_shift_reg << 1;
            end
            else begin
                i2s_tx_dat <= 0;
            end

            if(cnt == 0) begin
                // This may be overwritten by a later IF block
                do_shift_out <= 0;
            end
            else begin
                if(cnt == SAMPLE_WIDTH) begin
                    do_shift_out <= 1;
                end
                cnt <= cnt - 1;
            end
            
            if(i2s_tx_lrc != i2s_tx_lrc_d1) begin
                // Load MSb to i2s_tx_dat immediately to accomodate PRE_PAD = 1
                if(PRE_PAD <= 1) begin
                    cnt <= CNT_MAX - 1;
                    i2s_tx_dat <= data_in[SAMPLE_WIDTH - 1];
                    data_shift_reg <= data_in << 1;
                end
                else if(PRE_PAD == 2) begin
                    cnt <= CNT_MAX - 3;
                    i2s_tx_dat <= 0;
                    data_shift_reg <= data_in;
                end
                else begin
                    cnt <= CNT_MAX - 3;
                    i2s_tx_dat <= 0;
                    data_shift_reg <= data_in;
                end
                //i2s_tx_dat <= PRE_PAD == 1 ? data_in[SAMPLE_WIDTH - 1] : 0;

                // flip-flop propogation delay requires this be set immediately if PRE_PAD <= 1
                do_shift_out <= PRE_PAD <= 2 ? 1 : 0;
            end
        end
    end

endmodule