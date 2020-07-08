`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2020 04:30:31 PM
// Design Name: 
// Module Name: I2C_BIBUF
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


module I2C_BIBUF
    (
        inout wire i2c_sda,
        inout wire i2c_scl,

        input wire i2c_sda_e,
        input wire i2c_sda_i,
        output wire i2c_sda_o,

        input wire i2c_scl_e,
        input wire i2c_scl_i,
        output wire i2c_scl_o
    );

    IOBUF #(
        .DRIVE(12),
        .IBUF_LOW_PWR("TRUE"),
        .IOSTANDARD("DEFAULT"),
        .SLEW("SLOW")
    )
    IOBUF_i2c_sda(
        .O(i2c_sda_o),
        .IO(i2c_sda),
        .I(i2c_sda_i),
        .T(i2c_sda_e)
    );

    IOBUF #(
        .DRIVE(12),
        .IBUF_LOW_PWR("TRUE"),
        .IOSTANDARD("DEFAULT"),
        .SLEW("SLOW")
    )
    IOBUF_i2c_scl(
        .O(i2c_scl_o),
        .IO(i2c_scl),
        .I(i2c_scl_i),
        .T(i2c_scl_e)
    );
endmodule
