`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2020 04:22:22 PM
// Design Name: 
// Module Name: Clock_Divider_PWM_Dynamic
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


module Clock_Divider_PWM_Dynamic
    # (
        parameter DIVIDER = 10000,
        parameter PWM_RESOLUTION = 8
    )
    (
        input wire clk_in,
        output reg clk_out,
        input wire rst,

        input wire [PWM_RESOLUTION - 1 : 0] pwm_val
    );

    localparam PWM_STEP = DIVIDER / 2**PWM_RESOLUTION;

    reg [$clog2(DIVIDER) - 1 : 0] cnt = 0;
    reg [$clog2(DIVIDER) - 1 : 0] cnt_high = 0;

    always @(posedge clk_in) begin
        if(rst == 1) begin
            clk_out <= 0;
            if(PWM_RESOLUTION == 0) begin
                cnt_high <= (DIVIDER / 2) - 1;
            end
            else begin
                cnt_high <= 0;
            end;
        end
        else begin
            if(cnt == DIVIDER - 1) begin
                clk_out = 1;
                cnt <= 0;
            end
            else begin
                if(cnt >= cnt_high) begin
                    clk_out = 0;
                end
                cnt <= cnt + 1;
            end

            if(PWM_RESOLUTION != 0) begin
                cnt_high <= pwm_val * PWM_STEP;
            end
            else begin
                cnt_high <= (DIVIDER / 2) - 1;
            end
        end
    end

endmodule
