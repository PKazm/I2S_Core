`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2020 04:18:58 AM
// Design Name: 
// Module Name: I2S_Core_TEST
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


module I2S_Core_TEST
    #(
        parameter SAMPLE_WIDTH = 24
    )
    (
        input wire clk,
        input wire rst,
        input wire mclk,

        output wire audio_mclk,

        output wire i2s_bclk,
        output wire i2s_pbdat,
        output wire i2s_pblrc,
        input wire i2s_recdat,
        output wire i2s_reclrc,

        output reg audio_mute_n,

        input wire [3:0] sw,
        
        output wire [7:0] jc
    );
    
    assign jc[0] = i2s_bclk;
    assign jc[1] = i2s_pbdat;
    assign jc[2] = i2s_pblrc;
    assign jc[3] = audio_mclk;
    assign jc[4] = i2s_bclk;
    assign jc[5] = i2s_recdat;
    assign jc[6] = i2s_reclrc;

    localparam MASTER_MODE = 1;
    localparam MCLK_HZ = 12288000;
    localparam SAMPLE_RATE_HZ = 48000;
    localparam PRE_PAD = 1;
    localparam POST_PAD = 1;


    wire bclk_o;
    wire i2s_tx_dat;
    wire i2s_tx_lrc_o;
    wire i2s_rx_dat;
    wire i2s_rx_lrc_o;

    reg [SAMPLE_WIDTH - 1 : 0] data_tx_left = 0;
    reg [SAMPLE_WIDTH - 1 : 0] data_tx_right = 0;
    wire data_tx_left_rdy_pulse;
    wire data_tx_right_rdy_pulse;

    wire [SAMPLE_WIDTH - 1 : 0] data_rx_left;
    wire [SAMPLE_WIDTH - 1 : 0] data_rx_right;
    wire data_rx_left_rdy_pulse;
    wire data_rx_right_rdy_pulse;

    I2S_Transceiver #(
        .MASTER_MODE(MASTER_MODE),
        .MCLK_HZ(MCLK_HZ),
        .SAMPLE_RATE_HZ(SAMPLE_RATE_HZ),
        .TX_SAMPLE_WIDTH(SAMPLE_WIDTH),
        .RX_SAMPLE_WIDTH(SAMPLE_WIDTH),
        .PRE_PAD(PRE_PAD),
        .POST_PAD(POST_PAD)
    )
    I2S_TRX(
        .clk(clk),
        .rst(rst),

        .mclk(mclk),
        .bclk_i(),      // ignored if MASTER_MODE = 1
        .bclk_o(bclk_o),     // ignored if MASTER_MODE = 0

        // external I2S signals for the Transmitter
        .i2s_tx_dat(i2s_tx_dat),
        .i2s_tx_lrc_i(),
        .i2s_tx_lrc_o(i2s_tx_lrc_o),

        // external I2S signals for the Receiver
        .i2s_rx_dat(i2s_rx_dat),
        .i2s_rx_lrc_i(),
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

    assign audio_mclk = mclk;
    assign i2s_bclk = bclk_o;
    assign i2s_pbdat = i2s_tx_dat;
    assign i2s_pblrc = i2s_tx_lrc_o;
    assign i2s_recdat = i2s_rx_dat;
    assign i2s_reclrc = i2s_rx_lrc_o;


    parameter PHASE_WIDTH = 10;
    localparam SAMPLE_WIDTH_SINE = 16;

    reg [PHASE_WIDTH - 1 : 0] smpl_phase = 0;
    wire [SAMPLE_WIDTH_SINE - 1 : 0] smpl_data;

    Sine_Wave_Generator #(
        .PHASE_WIDTH(PHASE_WIDTH),
        .SAMPLE_WIDTH(SAMPLE_WIDTH_SINE),
        .OFFSET_ENABLE(0)
    )
    (
        .clk(clk),
        .rst(rst),
        .smpl_phase(smpl_phase),
        .smpl_data(smpl_data)
    );

    always @(posedge clk) begin : p_audio_control

        reg do_sine;
        reg smpl_dat_msb;

        smpl_dat_msb <= smpl_data[SAMPLE_WIDTH_SINE - 1];

        if(rst == 1) begin
            do_sine <= 0;
            smpl_phase <= 0;
            data_tx_left <= 0;
            data_tx_right <= 0;
        end
        else begin
            if(do_sine == 1) begin
                if(data_tx_left_rdy_pulse == 1) begin
                    smpl_phase <= smpl_phase + 1 + {sw[3], sw[2]};
                    data_tx_left <= {smpl_data, {SAMPLE_WIDTH - SAMPLE_WIDTH_SINE{1'b0}}};
                end
                if(data_tx_right_rdy_pulse == 1) begin
                    data_tx_right <= {smpl_data, {SAMPLE_WIDTH - SAMPLE_WIDTH_SINE{1'b0}}};
                end
            end
            else begin
                data_tx_left <= data_rx_left;
                data_tx_right <= data_rx_right;
            end
        end

        case ({sw[1], sw[0]})
            0 : begin   // loopback, mute
                if(smpl_dat_msb != smpl_data[SAMPLE_WIDTH_SINE - 1]) begin
                    do_sine <= 0;
                    audio_mute_n <= 0;
                end
            end
            1 : begin   // Loopback
                if(smpl_dat_msb != smpl_data[SAMPLE_WIDTH_SINE - 1]) begin
                    do_sine <= 0;
                end
                audio_mute_n <= 1;
            end
            2 : begin   // sine, mute
                if(smpl_dat_msb != smpl_data[SAMPLE_WIDTH_SINE - 1]) begin
                    audio_mute_n <= 0;
                end
                do_sine <= 1;
            end
            3 : begin   // sine
                do_sine <= 1;
                audio_mute_n <= 1;
            end
            default : begin
                do_sine <= 0;
                audio_mute_n <= 0;
            end
        endcase
    end

endmodule
