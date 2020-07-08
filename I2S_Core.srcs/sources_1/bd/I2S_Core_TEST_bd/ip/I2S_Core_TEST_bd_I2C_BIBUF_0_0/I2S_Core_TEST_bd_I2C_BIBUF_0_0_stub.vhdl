-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Jul  6 14:13:51 2020
-- Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Github_Repos/I2S_Core/I2S_Core.srcs/sources_1/bd/I2S_Core_TEST_bd/ip/I2S_Core_TEST_bd_I2C_BIBUF_0_0/I2S_Core_TEST_bd_I2C_BIBUF_0_0_stub.vhdl
-- Design      : I2S_Core_TEST_bd_I2C_BIBUF_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2S_Core_TEST_bd_I2C_BIBUF_0_0 is
  Port ( 
    i2c_sda : inout STD_LOGIC;
    i2c_scl : inout STD_LOGIC;
    i2c_sda_e : in STD_LOGIC;
    i2c_sda_i : in STD_LOGIC;
    i2c_sda_o : out STD_LOGIC;
    i2c_scl_e : in STD_LOGIC;
    i2c_scl_i : in STD_LOGIC;
    i2c_scl_o : out STD_LOGIC
  );

end I2S_Core_TEST_bd_I2C_BIBUF_0_0;

architecture stub of I2S_Core_TEST_bd_I2C_BIBUF_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i2c_sda,i2c_scl,i2c_sda_e,i2c_sda_i,i2c_sda_o,i2c_scl_e,i2c_scl_i,i2c_scl_o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "I2C_BIBUF,Vivado 2020.1";
begin
end;
