-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Jul  6 14:13:51 2020
-- Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Github_Repos/I2S_Core/I2S_Core.srcs/sources_1/bd/I2S_Core_TEST_bd/ip/I2S_Core_TEST_bd_I2C_BIBUF_0_0/I2S_Core_TEST_bd_I2C_BIBUF_0_0_sim_netlist.vhdl
-- Design      : I2S_Core_TEST_bd_I2C_BIBUF_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Core_TEST_bd_I2C_BIBUF_0_0_I2C_BIBUF is
  port (
    i2c_sda_o : out STD_LOGIC;
    i2c_scl_o : out STD_LOGIC;
    i2c_sda : inout STD_LOGIC;
    i2c_scl : inout STD_LOGIC;
    i2c_sda_i : in STD_LOGIC;
    i2c_sda_e : in STD_LOGIC;
    i2c_scl_i : in STD_LOGIC;
    i2c_scl_e : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2S_Core_TEST_bd_I2C_BIBUF_0_0_I2C_BIBUF : entity is "I2C_BIBUF";
end I2S_Core_TEST_bd_I2C_BIBUF_0_0_I2C_BIBUF;

architecture STRUCTURE of I2S_Core_TEST_bd_I2C_BIBUF_0_0_I2C_BIBUF is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IOBUF_i2c_scl : label is "PRIMITIVE";
  attribute BOX_TYPE of IOBUF_i2c_sda : label is "PRIMITIVE";
begin
IOBUF_i2c_scl: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => i2c_scl_i,
      IO => i2c_scl,
      O => i2c_scl_o,
      T => i2c_scl_e
    );
IOBUF_i2c_sda: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => i2c_sda_i,
      IO => i2c_sda,
      O => i2c_sda_o,
      T => i2c_sda_e
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Core_TEST_bd_I2C_BIBUF_0_0 is
  port (
    i2c_sda : inout STD_LOGIC;
    i2c_scl : inout STD_LOGIC;
    i2c_sda_e : in STD_LOGIC;
    i2c_sda_i : in STD_LOGIC;
    i2c_sda_o : out STD_LOGIC;
    i2c_scl_e : in STD_LOGIC;
    i2c_scl_i : in STD_LOGIC;
    i2c_scl_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2S_Core_TEST_bd_I2C_BIBUF_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2S_Core_TEST_bd_I2C_BIBUF_0_0 : entity is "I2S_Core_TEST_bd_I2C_BIBUF_0_0,I2C_BIBUF,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of I2S_Core_TEST_bd_I2C_BIBUF_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of I2S_Core_TEST_bd_I2C_BIBUF_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of I2S_Core_TEST_bd_I2C_BIBUF_0_0 : entity is "I2C_BIBUF,Vivado 2020.1";
end I2S_Core_TEST_bd_I2C_BIBUF_0_0;

architecture STRUCTURE of I2S_Core_TEST_bd_I2C_BIBUF_0_0 is
begin
inst: entity work.I2S_Core_TEST_bd_I2C_BIBUF_0_0_I2C_BIBUF
     port map (
      i2c_scl => i2c_scl,
      i2c_scl_e => i2c_scl_e,
      i2c_scl_i => i2c_scl_i,
      i2c_scl_o => i2c_scl_o,
      i2c_sda => i2c_sda,
      i2c_sda_e => i2c_sda_e,
      i2c_sda_i => i2c_sda_i,
      i2c_sda_o => i2c_sda_o
    );
end STRUCTURE;
