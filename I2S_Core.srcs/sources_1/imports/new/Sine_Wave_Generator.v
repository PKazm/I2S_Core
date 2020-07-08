`timescale 1ns / 10ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2020 04:49:32 PM
// Design Name: 
// Module Name: Sine_Wave_Generator
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


module Sine_Wave_Generator #
    (
        parameter PHASE_WIDTH = 10,
        parameter SAMPLE_WIDTH = 16,
        parameter OFFSET_ENABLE = 0
    )
    (
        input wire clk,
        input wire rst,
        //input wire smpl_en,
        input wire [PHASE_WIDTH - 1 : 0] smpl_phase,
        //output reg smpl_valid,
        output reg [SAMPLE_WIDTH - 1 : 0] smpl_data
    );
    
    localparam TABLE_SIZE = 2 ** (PHASE_WIDTH - 2) + 1; // n * .25 + 1 allows full spectrum of values
    localparam PHASE_SIZE = 2 ** PHASE_WIDTH;
    localparam PI = 3.141592653589793;   // good enough for JPL high accuracy calcs

    reg [SAMPLE_WIDTH - 1 : 0] sine_table[TABLE_SIZE - 1 : 0];

    integer i;
    
    initial begin
        if(OFFSET_ENABLE == 0) begin
            // normal sine, -max to +max
            for (i = 0; i < TABLE_SIZE; i = i + 1) begin
                sine_table[i] = $sin(2 * PI * i / PHASE_SIZE) * (2 ** (SAMPLE_WIDTH - 1) - 1);
            end
        end
        else begin
            // offset sine 0 to +max
            for (i = 0; i < TABLE_SIZE; i = i + 1) begin
                sine_table[i] = ($sin(2 * PI * i / PHASE_SIZE) + 1) * (2 ** (SAMPLE_WIDTH - 1) - 1);
            end
        end
        //$readmemh("C:/Github_Repos/verilog-experiments/Python_Helpers/sine_LUT.hex", sine_table);
    end
    
    
    reg [PHASE_WIDTH - 1 : 0] smpl_phase_reg;
    reg [PHASE_WIDTH - 1 : 0] table_addr;
    reg [PHASE_WIDTH - 3 : 0] smpl_subphase;
    reg [SAMPLE_WIDTH - 1 : 0] table_data;
    
    always @(posedge clk) begin : p_get_sine

        if(rst == 1) begin
            smpl_data <= 0;
        end
        else begin
            smpl_phase_reg <= smpl_phase;
            smpl_subphase = smpl_phase_reg[PHASE_WIDTH - 3 : 0];
            case (smpl_phase_reg[PHASE_WIDTH - 1 : PHASE_WIDTH - 2])
                2'b00:  begin
                        // First quadrant, normal order values
                            table_addr = {1'b0, smpl_subphase};
                            table_data = sine_table[table_addr];
                        end
                2'b01:  begin
                        // Second quadrant, reverse order values
                            table_addr = {1'b1, {PHASE_WIDTH - 2{1'b0}}};
                            table_addr = table_addr - smpl_subphase;
                            table_data = sine_table[table_addr];
                        end
                2'b10:  begin
                        // Third quadrant, normal order negate values
                            table_addr = {1'b0, smpl_subphase};
                            if(OFFSET_ENABLE == 0) begin
                                table_data = -sine_table[table_addr];
                            end
                            else begin
                                table_data = {{SAMPLE_WIDTH - 1{1'b1}}, 1'b0} - sine_table[table_addr];
                            end
                        end
                2'b11:  begin
                        // Fourth quadrant, reverse order negate values
                            table_addr = {1'b1, {PHASE_WIDTH - 2{1'b0}}};
                            table_addr = table_addr - smpl_subphase;
                            if(OFFSET_ENABLE == 0) begin
                                table_data = -sine_table[table_addr];
                            end
                            else begin
                                table_data = {{SAMPLE_WIDTH - 1{1'b1}}, 1'b0} - sine_table[table_addr];
                            end
                        end
                default: table_data = {SAMPLE_WIDTH{1'b0}};
            endcase
            smpl_data <= table_data;
        end
    end
endmodule
