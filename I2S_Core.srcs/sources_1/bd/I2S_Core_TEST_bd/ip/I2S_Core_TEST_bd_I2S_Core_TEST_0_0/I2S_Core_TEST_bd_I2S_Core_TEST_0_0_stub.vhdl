-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Jul  7 15:28:14 2020
-- Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Github_Repos/I2S_Core/I2S_Core.srcs/sources_1/bd/I2S_Core_TEST_bd/ip/I2S_Core_TEST_bd_I2S_Core_TEST_0_0/I2S_Core_TEST_bd_I2S_Core_TEST_0_0_stub.vhdl
-- Design      : I2S_Core_TEST_bd_I2S_Core_TEST_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2S_Core_TEST_bd_I2S_Core_TEST_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    mclk : in STD_LOGIC;
    audio_mclk : out STD_LOGIC;
    i2s_bclk : out STD_LOGIC;
    i2s_pbdat : out STD_LOGIC;
    i2s_pblrc : out STD_LOGIC;
    i2s_recdat : in STD_LOGIC;
    i2s_reclrc : out STD_LOGIC;
    audio_mute_n : out STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    jc : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end I2S_Core_TEST_bd_I2S_Core_TEST_0_0;

architecture stub of I2S_Core_TEST_bd_I2S_Core_TEST_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,mclk,audio_mclk,i2s_bclk,i2s_pbdat,i2s_pblrc,i2s_recdat,i2s_reclrc,audio_mute_n,sw[3:0],jc[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "I2S_Core_TEST,Vivado 2020.1";
begin
end;
