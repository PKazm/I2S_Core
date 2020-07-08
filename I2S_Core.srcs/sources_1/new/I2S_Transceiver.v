`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2020 12:20:11 AM
// Design Name: 
// Module Name: I2S_Transceiver
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


module I2S_Transceiver
    #(
        parameter MASTER_MODE = 1,
        parameter MCLK_HZ = 12288000,
        parameter SAMPLE_RATE_HZ = 48000,
        parameter TX_SAMPLE_WIDTH = 16,
        parameter RX_SAMPLE_WIDTH = 16,
        parameter PRE_PAD = 1,
        parameter POST_PAD = 0
    )
    (
        input wire clk,
        input wire rst,

        input wire mclk,
        input wire bclk_i,      // ignored if MASTER_MODE = 1
        output wire bclk_o,     // ignored if MASTER_MODE = 0

        // I2S signals for the Transmitter
        output wire i2s_tx_dat,
        input wire i2s_tx_lrc_i,    // ignored if MASTER_MODE = 1
        output wire i2s_tx_lrc_o,   // ignored if MASTER_MODE = 0

        // I2S signals for the Receiver
        input wire i2s_rx_dat,
        input wire i2s_rx_lrc_i,    // ignored if MASTER_MODE = 1
        output wire i2s_rx_lrc_o,   // ignored if MASTER_MODE = 0

        // internal connections for the Transmitter
        input wire [TX_SAMPLE_WIDTH - 1 : 0] data_tx_left,
        input wire [TX_SAMPLE_WIDTH - 1 : 0] data_tx_right,

        output reg data_tx_left_rdy_pulse,
        output reg data_tx_right_rdy_pulse,

        output wire [RX_SAMPLE_WIDTH - 1 : 0] data_rx_left,
        output wire [RX_SAMPLE_WIDTH - 1 : 0] data_rx_right,

        output reg data_rx_left_rdy_pulse,
        output reg data_rx_right_rdy_pulse
    );

    localparam CNT_MAX_TX_MONITOR = TX_SAMPLE_WIDTH + PRE_PAD;
    localparam CNT_MAX_RX_MONITOR = RX_SAMPLE_WIDTH + PRE_PAD;

    wire [$clog2(CNT_MAX_TX_MONITOR) - 1 : 0] tx_cnt_monitor;
    wire [$clog2(CNT_MAX_RX_MONITOR) - 1 : 0] rx_cnt_monitor;

    //localparam TX_SAMPLE_WIDTH = SAMPLE_WIDTH;
    //localparam RX_SAMPLE_WIDTH = SAMPLE_WIDTH;

    localparam LRC_LEFT = 1'b1;
    localparam LRC_RIGHT = 1'b0;

    wire bclk;
    wire i2s_rx_lrc, i2s_tx_lrc;

    reg [TX_SAMPLE_WIDTH - 1:0] data_in;
    wire data_i_rdy_pulse;
    wire data_i_lr_channel;

    I2S_Transmitter #(
        .SAMPLE_WIDTH(TX_SAMPLE_WIDTH),
        .PRE_PAD(PRE_PAD)
    )
    I2S_TX(
        .clk(bclk),     // BCLK
        .rst(rst),

        .i2s_tx_dat(i2s_tx_dat),
        .i2s_tx_lrc(i2s_tx_lrc),

        .data_in(data_in),
        .data_rdy_pulse(data_i_rdy_pulse),
        .data_lr_channel(data_i_lr_channel),

        .cnt_monitor(tx_cnt_monitor)
    );

    wire [RX_SAMPLE_WIDTH - 1:0] data_out;
    wire data_o_rdy_pulse;
    wire data_o_lr_channel;

    I2S_Receiver #(
        .SAMPLE_WIDTH(RX_SAMPLE_WIDTH),
        .PRE_PAD(PRE_PAD)
    )
    I2S_RX(
        .clk(bclk),     // BCLK
        .rst(rst),

        .i2s_rx_dat(i2s_rx_dat),
        .i2s_rx_lrc(i2s_rx_lrc),

        .data_out(data_out),
        .data_rdy_pulse(data_o_rdy_pulse),
        .data_lr_channel(data_o_lr_channel),

        .cnt_monitor(rx_cnt_monitor)
    );

    generate
        if(MASTER_MODE == 1) begin
            // Master Mode
            // BCLK sourced internally
            // LRC sourced internally

            // bclk = 48khz * 16 * 2 = 12.288Mhz / 8
            localparam SAMPLE_WIDTH_MAX = TX_SAMPLE_WIDTH > RX_SAMPLE_WIDTH ? TX_SAMPLE_WIDTH : RX_SAMPLE_WIDTH;
            localparam BCLK_DIVIDER = $rtoi($floor(MCLK_HZ / (SAMPLE_RATE_HZ * (SAMPLE_WIDTH_MAX + PRE_PAD + POST_PAD) * 2)));
            Clock_Divider_PWM_Dynamic #(
                .DIVIDER(BCLK_DIVIDER),
                .PWM_RESOLUTION(0)
            )
            bclk_div (
                .clk_in(mclk),
                .clk_out(bclk),
                .rst(rst),
                .pwm_val()
            );

            assign bclk_o = bclk;
            assign i2s_tx_lrc_o = i2s_tx_lrc;
            assign i2s_rx_lrc_o = i2s_rx_lrc;

            reg tx_lrc = 0, rx_lrc = 0;
            assign i2s_tx_lrc = tx_lrc;
            assign i2s_rx_lrc = rx_lrc;

            localparam CNT_MAX = SAMPLE_WIDTH_MAX + PRE_PAD + POST_PAD;
            reg [$clog2(CNT_MAX) - 1 : 0] cnt = 0;

            always @(negedge bclk) begin : p_gen_LRC_cnt
                if(rst == 1) begin
                    cnt <= 0;
                    tx_lrc <= 0;
                    rx_lrc <= 0;
                end
                else begin
                    if(cnt == CNT_MAX - 1) begin
                        cnt <= 0;
                        tx_lrc <= ~tx_lrc;
                        rx_lrc <= ~rx_lrc;
                    end
                    else begin
                        cnt <= cnt + 1;
                    end
                end
            end

            //if(POST_PAD == 99) begin
            //    // use transmitter and/or receiver cnt_monitors to generate LRC
            //    always @(negedge bclk) begin : p_gen_LRC_cnt
            //        if(rst == 1) begin
            //            tx_lrc <= 0;
            //            rx_lrc <= 0;
            //        end
            //        else begin
            //            if(tx_cnt_monitor == 0) begin
            //                tx_lrc <= ~tx_lrc;
            //                rx_lrc <= ~rx_lrc;
            //            end
            //        end
            //    end
            //end
            //else begin
            //    // use cnt to ctrl LRC
            //end
        end
        else begin
            // Slave mode
            // BCLK sourced externally
            // LRC sourced externally

            assign bclk = bclk_i;
            assign i2s_tx_lrc = i2s_tx_lrc_i;
            assign i2s_rx_lrc = i2s_rx_lrc_i;

            
        end
    endgenerate


    //=========================================================================

    // clk domain registers/wires
    reg [TX_SAMPLE_WIDTH - 1 : 0] data_tx_l_clk = 0;
    reg [TX_SAMPLE_WIDTH - 1 : 0] data_tx_r_clk = 0;
    reg data_tx_l_wen_clk = 0;
    reg data_tx_r_wen_clk = 0;
    reg data_tx_l_rqst_clk[2:0];    // 2FF sync + edge detect
    reg data_tx_r_rqst_clk[2:0];    // 2FF sync + edge detect
    
    reg [RX_SAMPLE_WIDTH - 1 : 0] data_rx_l_clk = 0;
    reg [RX_SAMPLE_WIDTH - 1 : 0] data_rx_r_clk = 0;
    reg data_rx_l_rdy_clk[2:0];     // 2FF sync + edge detect
    reg data_rx_r_rdy_clk[2:0];     // 2FF sync + edge detect


    // bclk domain registers/wires
    reg [TX_SAMPLE_WIDTH - 1 : 0] data_tx_l_bclk = 0;
    reg [TX_SAMPLE_WIDTH - 1 : 0] data_tx_r_bclk = 0;
    reg data_tx_l_wen_bclk[1:0];    // 2FF sync
    reg data_tx_r_wen_bclk[1:0];    // 2FF sync
    reg data_tx_l_rqst_bclk = 0;
    reg data_tx_r_rqst_bclk = 0;

    reg [RX_SAMPLE_WIDTH - 1 : 0] data_rx_l_bclk = 0;
    reg [RX_SAMPLE_WIDTH - 1 : 0] data_rx_r_bclk = 0;
    reg data_rx_l_rdy_bclk = 0;
    reg data_rx_r_rdy_bclk = 0;


    integer i;
    initial begin
       for (i = 0; i < 2; i=i+1) begin
            data_tx_l_wen_bclk[i] = 0;
            data_tx_r_wen_bclk[i] = 0;
        end
        for (i = 0; i < 3; i=i+1) begin
            data_tx_l_rqst_clk[i] = 0;
            data_tx_r_rqst_clk[i] = 0;
            data_rx_l_rdy_clk[i] = 0;
            data_rx_r_rdy_clk[i] = 0;
        end
    end

    //=========================================================================

    // clk domain
    always @(posedge clk) begin : p_clk_cdc_sync
        if(rst == 1) begin
            data_tx_l_rqst_clk[0] <= 0;
            data_tx_l_rqst_clk[1] <= 0;
            data_tx_l_rqst_clk[2] <= 0;
            data_tx_r_rqst_clk[0] <= 0;
            data_tx_r_rqst_clk[1] <= 0;
            data_tx_r_rqst_clk[2] <= 0;
            data_rx_l_rdy_clk[0] <= 0;
            data_rx_l_rdy_clk[1] <= 0;
            data_rx_l_rdy_clk[2] <= 0;
            data_rx_r_rdy_clk[0] <= 0;
            data_rx_r_rdy_clk[1] <= 0;
            data_rx_r_rdy_clk[2] <= 0;
        end
        else begin
            data_tx_l_rqst_clk[0] <= data_tx_l_rqst_bclk;
            data_tx_l_rqst_clk[1] <= data_tx_l_rqst_clk[0];
            data_tx_l_rqst_clk[2] <= data_tx_l_rqst_clk[1];

            data_tx_r_rqst_clk[0] <= data_tx_r_rqst_bclk;
            data_tx_r_rqst_clk[1] <= data_tx_r_rqst_clk[0];
            data_tx_r_rqst_clk[2] <= data_tx_r_rqst_clk[1];

            data_rx_l_rdy_clk[0] <= data_rx_l_rdy_bclk;
            data_rx_l_rdy_clk[1] <= data_rx_l_rdy_clk[0];
            data_rx_l_rdy_clk[2] <= data_rx_l_rdy_clk[1];

            data_rx_r_rdy_clk[0] <= data_rx_r_rdy_bclk;
            data_rx_r_rdy_clk[1] <= data_rx_r_rdy_clk[0];
            data_rx_r_rdy_clk[2] <= data_rx_r_rdy_clk[1];
        end
    end

    always @(posedge clk) begin : p_clk_domain_data_in



        if(rst == 1) begin
            data_tx_l_clk <= 0;
            data_tx_r_clk <= 0;
            
            data_tx_l_wen_clk <= 0;
            data_tx_r_wen_clk <= 0;

            data_rx_l_clk <= 0;
            data_rx_r_clk <= 0;
        end
        else begin


            if(data_tx_l_rqst_clk[1] == 1) begin
                data_tx_l_wen_clk <= 1;
            end
            else begin
                data_tx_l_clk <= data_tx_left;
                data_tx_l_wen_clk <= 0;
            end

            if(data_tx_r_rqst_clk[1] == 1) begin
                data_tx_r_wen_clk <= 1;
            end
            else begin
                data_tx_r_clk <= data_tx_right;
                data_tx_r_wen_clk <= 0;
            end

            if(data_tx_l_rqst_clk[1] == 0 && data_tx_l_rqst_clk[2] == 1) begin
                data_tx_left_rdy_pulse <= 1;
            end
            else begin
                data_tx_left_rdy_pulse <= 0;
            end

            if(data_tx_r_rqst_clk[1] == 0 && data_tx_r_rqst_clk[2] == 1) begin
                data_tx_right_rdy_pulse <= 1;
            end
            else begin
                data_tx_right_rdy_pulse <= 0;
            end

            

            // Read on falling edge of ready pulse, gives maximum leeway for metastability
            // Costs 1 BCLK period of latency, but no reduction in throughput
            if(data_rx_l_rdy_clk[1] == 0 && data_rx_l_rdy_clk[2] == 1) begin
                data_rx_l_clk <= data_rx_l_bclk;
                data_rx_left_rdy_pulse <= 1;
            end
            else begin
                data_rx_left_rdy_pulse <= 0;
            end
            if(data_rx_r_rdy_clk[1] == 0 && data_rx_r_rdy_clk[2] == 1) begin
                data_rx_r_clk <= data_rx_r_bclk;
                data_rx_right_rdy_pulse <= 1;
            end
            else begin
                data_rx_right_rdy_pulse <= 0;
            end
        end
    end

    assign data_rx_left = data_rx_l_clk;
    assign data_rx_right = data_rx_r_clk;

    //=========================================================================

    // bclk domain
    always @(posedge bclk) begin : p_bclk_cdc_sync
        if(rst == 1) begin
            data_tx_l_wen_bclk[0] <= 0;
            data_tx_l_wen_bclk[1] <= 0;
            data_tx_r_wen_bclk[0] <= 0;
            data_tx_r_wen_bclk[1] <= 0;
        end
        else begin
            data_tx_l_wen_bclk[0] <= data_tx_l_wen_clk;
            data_tx_l_wen_bclk[1] <= data_tx_l_wen_bclk[0];

            data_tx_r_wen_bclk[0] <= data_tx_r_wen_clk;
            data_tx_r_wen_bclk[1] <= data_tx_r_wen_bclk[0];
        end
    end

    always @(posedge bclk) begin : p_bclk_domain_data_out
        if(rst == 1) begin
            data_in <= 0;
            data_rx_l_bclk <= 0;
            data_rx_r_bclk <= 0;
            data_rx_l_rdy_bclk <= 0;
            data_rx_r_rdy_bclk <= 0;
        end
        else begin
            
            // Handle data received from I2S_RX
            if(data_o_rdy_pulse == 1) begin
                if(data_o_lr_channel == LRC_LEFT) begin
                    data_rx_l_bclk <= data_out;
                    data_rx_l_rdy_bclk <= 1;
                end
                else begin
                    data_rx_r_bclk <= data_out;
                    data_rx_r_rdy_bclk <= 1;
                end
            end
            else begin
                data_rx_l_rdy_bclk <= 0;
                data_rx_r_rdy_bclk <= 0;
            end

            // Handle data requests from I2S_TX
            if(data_i_rdy_pulse == 1) begin
                if(data_i_lr_channel == LRC_LEFT) begin
                    data_in <= data_tx_l_bclk;
                    data_tx_l_rqst_bclk <= 1;
                end
                else begin
                    data_in <= data_tx_r_bclk;
                    data_tx_r_rqst_bclk <= 1;
                end
            end

            if(data_tx_l_wen_bclk[1] == 1) begin
                data_tx_l_bclk <= data_tx_l_clk;
                data_tx_l_rqst_bclk <= 0;
            end

            if(data_tx_r_wen_bclk[1] == 1) begin
                data_tx_r_bclk <= data_tx_r_clk;
                data_tx_r_rqst_bclk <= 0;
            end
        end
    end

endmodule