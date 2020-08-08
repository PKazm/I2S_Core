`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2020 03:15:48 AM
// Design Name: 
// Module Name: I2S_Core_AXI_tb
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


import axi_vip_pkg::*;
import I2S_AXI_test_axi_vip_0_0_pkg::*;


bit[31:0]  addr, dataw, datar, stat, base_addr = 32'h0000_0000, switch_state;
xil_axi_resp_t resp;

module I2S_Core_AXI_tb();

    
    I2S_AXI_test_axi_vip_0_0_mst_t      master_agent;
    
    
    localparam CLK_PER = 10;
    localparam MCLK_PER = 81;

    reg clk = 0;
    reg mclk = 0;
    reg rst = 0;
    wire rstn;

    always #(CLK_PER/2) clk <= !clk;
    always #(MCLK_PER/2) mclk <= !mclk;
    assign rstn = ~rst;

    wire audio_mclk;
    wire interrupt;

    wire i2s_bclk_i;
    wire i2s_bclk_o;
    wire i2s_tx_dat;
    wire i2s_rx_lrc_i;
    wire i2s_rx_lrc_o;
    reg i2s_rx_dat = 0;
    wire i2s_tx_lrc_i;
    wire i2s_tx_lrc_o;
    wire audio_mute_n;

    I2S_AXI_test_wrapper UUT_I2S_AXI_test_wrapper
       (
        .clk(clk),
        .mclk(mclk),
        .rst(rst),
        .rstn(rstn),

        .interrupt(interrupt),

        .audio_mclk(audio_mclk),
        .bclk_i(i2s_bclk_i),
        .bclk_o(i2s_bclk_o),
        .i2s_rx_dat(i2s_rx_dat),
        .i2s_rx_lrc_i(i2s_rx_lrc_i),
        .i2s_rx_lrc_o(i2s_rx_lrc_o),
        .i2s_tx_dat(i2s_tx_dat),
        .i2s_tx_lrc_i(i2s_tx_lrc_i),
        .i2s_tx_lrc_o(i2s_tx_lrc_o)
        );


    localparam CTRL_REG_ADR = 4'h0;
    localparam STAT_REG_ADR = 4'h1;
    localparam DTXL_REG_ADR = 4'h2;
    localparam DTXR_REG_ADR = 4'h3;
    localparam DRXL_REG_ADR = 4'h4;
    localparam DRXR_REG_ADR = 4'h5;

    integer i;

    initial begin : pi_the_test

        $display("loading master");

        master_agent = new("master vip agent",UUT_I2S_AXI_test_wrapper.I2S_AXI_test_i.axi_vip_0.inst.IF);

        master_agent.set_verbosity(400);
        // Step 5 - Start the agent
        master_agent.start_master();

        i2s_rx_dat = 0;
        rst = 1;

        #(CLK_PER * 10);

        rst = 0;

        $display("starting");

        #(CLK_PER * 10);


        dataw = 8'hAA;
        for (i = 0; i < 8; i = i + 1) begin
            addr = i;
            master_agent.AXI4LITE_WRITE_BURST(base_addr + addr, 0, dataw, resp);
        end

        datar = 0;
        master_agent.AXI4LITE_READ_BURST(base_addr + addr, 0, datar, resp);
        addr = 4;
        datar = 0;
        master_agent.AXI4LITE_READ_BURST(base_addr + addr, 0, datar, resp);
        addr = 5;
        datar = 0;
        master_agent.AXI4LITE_READ_BURST(base_addr + addr, 0, datar, resp);


        dataw = 1;

        for (i = 0; i < 16; i = i + 1) begin
            @(posedge interrupt);

            addr = 1;
            stat = 0;
            master_agent.AXI4LITE_READ_BURST(base_addr + addr, 0, stat, resp);
            if(stat[4] == 1) begin
                // tx_left
                $display("tx_left interrupt");
                addr = 2;
                dataw = dataw + 1;
                master_agent.AXI4LITE_WRITE_BURST(base_addr + addr, 0, dataw, resp);
            end
            if(stat[5] == 1) begin
                // tx_right
                $display("tx_right interrupt");
                addr = 3;
                dataw = dataw + 1;
                master_agent.AXI4LITE_WRITE_BURST(base_addr + addr, 0, dataw, resp);
            end
            if(stat[6] == 1) begin
                // rx_left
                $display("rx_right interrupt");
                addr = 4;
                datar = 0;
                master_agent.AXI4LITE_READ_BURST(base_addr + addr, 0, datar, resp);
            end
            if(stat[7] == 1) begin
                // rx_right
                $display("rx_right interrupt");
                addr = 5;
                datar = 0;
                master_agent.AXI4LITE_READ_BURST(base_addr + addr, 0, datar, resp);
            end
        end

        #(CLK_PER * 10);

        $display("DONE!");
        $finish;
    end

endmodule
