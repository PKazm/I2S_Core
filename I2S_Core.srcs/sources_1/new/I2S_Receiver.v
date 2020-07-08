`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2020 12:20:11 AM
// Design Name: 
// Module Name: I2S_Receiver
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


module I2S_Receiver
    #(
        parameter SAMPLE_WIDTH = 16,
        parameter PRE_PAD = 1
    )
    (
        input wire clk,     // BCLK
        input wire rst,

        input wire i2s_rx_dat,
        input wire i2s_rx_lrc,

        output reg [SAMPLE_WIDTH - 1:0] data_out,
        output wire data_rdy_pulse,
        output wire data_lr_channel,

        output wire [$clog2(SAMPLE_WIDTH + PRE_PAD) - 1 : 0] cnt_monitor
    );

    localparam lrc_left = 1'b1;
    localparam lrc_right = 1'b0;

    localparam CNT_MAX = SAMPLE_WIDTH + PRE_PAD;
    
    reg [$clog2(CNT_MAX) - 1 : 0] cnt = 0;
    assign cnt_monitor = cnt;
    reg [SAMPLE_WIDTH - 1 : 0] data_store_reg = 0;
    reg do_store = 0;

    reg i2s_rx_lrc_d1 = 0;
    reg lrc_pulse = 0;

    always @(posedge clk) begin : p_lrc_pulse_gen
        i2s_rx_lrc_d1 <= i2s_rx_lrc;
        lrc_pulse <= i2s_rx_lrc_d1 ^ i2s_rx_lrc;
    end

    assign data_rdy_pulse = lrc_pulse;
    assign data_lr_channel = ~i2s_rx_lrc_d1;


    always @(posedge clk) begin : p_data_rxeiver
        if(rst == 1) begin
            cnt <= 0;

            do_store <= PRE_PAD == 0 ? 1 : 0;

            data_out <= 0;
        end
        else begin

            if(do_store == 1) begin
                data_store_reg[cnt] <= i2s_rx_dat;
            end

            if(cnt == 0) begin
                // This may be overwritten by a later IF block
                do_store <= 0;
            end
            else begin
                if(cnt == SAMPLE_WIDTH) begin
                    do_store <= 1;
                end
                cnt <= cnt - 1;
            end

            if(i2s_rx_lrc != i2s_rx_lrc_d1) begin
                // Load MSb with i2s_rx_dat immediately to accomodate PRE_PAD = 0
                //data_store_reg <= PRE_PAD <= 0 ? {i2s_rx_dat, {SAMPLE_WIDTH - 1{1'b0}}} : 0;
                if(PRE_PAD == 0) begin
                    cnt <= CNT_MAX - 1;
                    data_store_reg <= 0;
                    data_out <= {data_store_reg[SAMPLE_WIDTH - 1:1], i2s_rx_dat};
                end
                else if(PRE_PAD == 1) begin
                    cnt <= CNT_MAX - 2;
                    data_store_reg <= {i2s_rx_dat, {SAMPLE_WIDTH - 1{1'b0}}};
                    data_out <= data_store_reg;
                end
                else begin
                    cnt <= CNT_MAX - 2;
                    data_store_reg <= 0;
                    data_out <= data_store_reg;
                end

                // flip-flop propogation delay requires this be set immediately if PRE_PAD <= 1
                do_store <= PRE_PAD <= 1 ? 1 : 0;
            end
        end
    end

endmodule
