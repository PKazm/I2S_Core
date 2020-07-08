-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Jul  7 15:28:14 2020
-- Host        : Phoenix136DESKY running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Github_Repos/I2S_Core/I2S_Core.srcs/sources_1/bd/I2S_Core_TEST_bd/ip/I2S_Core_TEST_bd_I2S_Core_TEST_0_0/I2S_Core_TEST_bd_I2S_Core_TEST_0_0_sim_netlist.vhdl
-- Design      : I2S_Core_TEST_bd_I2S_Core_TEST_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Clock_Divider_PWM_Dynamic is
  port (
    clk_out_reg_0 : out STD_LOGIC;
    mclk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Clock_Divider_PWM_Dynamic : entity is "Clock_Divider_PWM_Dynamic";
end I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Clock_Divider_PWM_Dynamic;

architecture STRUCTURE of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Clock_Divider_PWM_Dynamic is
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal \^clk_out_reg_0\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal cnt_high : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_out_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair26";
begin
  clk_out_reg_0 <= \^clk_out_reg_0\;
clk_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F008"
    )
        port map (
      I0 => \^clk_out_reg_0\,
      I1 => cnt_high(0),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => rst,
      O => clk_out_i_1_n_0
    );
clk_out_reg: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => '1',
      D => clk_out_i_1_n_0,
      Q => \^clk_out_reg_0\,
      R => '0'
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rst,
      I1 => cnt(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => cnt(0),
      I1 => rst,
      I2 => cnt(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt_high_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => '1',
      Q => cnt_high(0),
      R => '0'
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => cnt(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Receiver is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    lrc_pulse_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    i2s_rx_lrc_d1_reg_0 : out STD_LOGIC;
    i2s_rx_lrc_d1_reg_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    i2s_rx_lrc_d1_reg_2 : in STD_LOGIC;
    \data_store_reg_reg[23]_0\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    i2s_recdat : in STD_LOGIC;
    data_rx_l_rdy_bclk : in STD_LOGIC;
    data_rx_r_rdy_bclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Receiver : entity is "I2S_Receiver";
end I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Receiver;

architecture STRUCTURE of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Receiver is
  signal \cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal data_o_rdy_pulse : STD_LOGIC;
  signal \data_out[23]_i_1_n_0\ : STD_LOGIC;
  signal data_store_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \data_store_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_store_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_store_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \data_store_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \data_store_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \data_store_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \data_store_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_store_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal do_store_i_1_n_0 : STD_LOGIC;
  signal do_store_reg_n_0 : STD_LOGIC;
  signal i2s_rx_lrc_d1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_rx_l_bclk[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of data_rx_l_rdy_bclk_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_rx_r_bclk[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_store_reg[13]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_store_reg[13]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_store_reg[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_store_reg[15]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_store_reg[16]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_store_reg[16]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_store_reg[17]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_store_reg[19]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_store_reg[20]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_store_reg[21]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_store_reg[21]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_store_reg[22]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_store_reg[23]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_store_reg[23]_i_3\ : label is "soft_lutpair6";
begin
\cnt[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => i2s_rx_lrc_d1_reg_2,
      I1 => i2s_rx_lrc_d1,
      I2 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_1__0_n_0\
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9FF9"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => i2s_rx_lrc_d1_reg_2,
      I3 => i2s_rx_lrc_d1,
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFFFE1"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => i2s_rx_lrc_d1_reg_2,
      I4 => i2s_rx_lrc_d1,
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4140000000004140"
    )
        port map (
      I0 => rst,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \data_store_reg[16]_i_3_n_0\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => i2s_rx_lrc_d1_reg_2,
      I5 => i2s_rx_lrc_d1,
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => \data_out[23]_i_1_n_0\,
      O => \cnt[4]_i_1_n_0\
    );
\cnt[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0001"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[4]\,
      I5 => \data_out[23]_i_1_n_0\,
      O => \cnt[4]_i_2__0_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \cnt[4]_i_1_n_0\,
      D => \cnt[0]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => rst
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \cnt[4]_i_1_n_0\,
      D => \cnt[1]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => rst
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \cnt[4]_i_1_n_0\,
      D => \cnt[2]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[2]\,
      R => rst
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \cnt[3]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[3]\,
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \cnt[4]_i_1_n_0\,
      D => \cnt[4]_i_2__0_n_0\,
      Q => \cnt_reg_n_0_[4]\,
      R => rst
    );
\data_out[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2s_rx_lrc_d1,
      I1 => i2s_rx_lrc_d1_reg_2,
      O => \data_out[23]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(0),
      Q => Q(0),
      R => rst
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(10),
      Q => Q(10),
      R => rst
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(11),
      Q => Q(11),
      R => rst
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(12),
      Q => Q(12),
      R => rst
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(13),
      Q => Q(13),
      R => rst
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(14),
      Q => Q(14),
      R => rst
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(15),
      Q => Q(15),
      R => rst
    );
\data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(16),
      Q => Q(16),
      R => rst
    );
\data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(17),
      Q => Q(17),
      R => rst
    );
\data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(18),
      Q => Q(18),
      R => rst
    );
\data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(19),
      Q => Q(19),
      R => rst
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(1),
      Q => Q(1),
      R => rst
    );
\data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(20),
      Q => Q(20),
      R => rst
    );
\data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(21),
      Q => Q(21),
      R => rst
    );
\data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(22),
      Q => Q(22),
      R => rst
    );
\data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(23),
      Q => Q(23),
      R => rst
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(2),
      Q => Q(2),
      R => rst
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(3),
      Q => Q(3),
      R => rst
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(4),
      Q => Q(4),
      R => rst
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(5),
      Q => Q(5),
      R => rst
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(6),
      Q => Q(6),
      R => rst
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(7),
      Q => Q(7),
      R => rst
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(8),
      Q => Q(8),
      R => rst
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \data_store_reg_reg[23]_0\,
      CE => \data_out[23]_i_1_n_0\,
      D => data_store_reg(9),
      Q => Q(9),
      R => rst
    );
\data_rx_l_bclk[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_o_rdy_pulse,
      I1 => i2s_rx_lrc_d1,
      O => E(0)
    );
data_rx_l_rdy_bclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => i2s_rx_lrc_d1,
      I1 => data_o_rdy_pulse,
      I2 => data_rx_l_rdy_bclk,
      O => i2s_rx_lrc_d1_reg_0
    );
\data_rx_r_bclk[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_o_rdy_pulse,
      I1 => i2s_rx_lrc_d1,
      O => lrc_pulse_reg_0(0)
    );
data_rx_r_rdy_bclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => i2s_rx_lrc_d1,
      I1 => data_o_rdy_pulse,
      I2 => data_rx_r_rdy_bclk,
      O => i2s_rx_lrc_d1_reg_1
    );
\data_store_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFBAAAA0008"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[16]_i_2_n_0\,
      I2 => \data_store_reg[16]_i_3_n_0\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(0),
      O => \data_store_reg[0]_i_1_n_0\
    );
\data_store_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[15]_i_2_n_0\,
      I2 => \data_store_reg[14]_i_2_n_0\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(10),
      O => \data_store_reg[10]_i_1_n_0\
    );
\data_store_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[15]_i_2_n_0\,
      I2 => \data_store_reg[15]_i_3_n_0\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(11),
      O => \data_store_reg[11]_i_1_n_0\
    );
\data_store_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3030BB88000088"
    )
        port map (
      I0 => i2s_recdat,
      I1 => \data_store_reg[12]_i_2_n_0\,
      I2 => rst,
      I3 => i2s_rx_lrc_d1,
      I4 => i2s_rx_lrc_d1_reg_2,
      I5 => data_store_reg(12),
      O => \data_store_reg[12]_i_1_n_0\
    );
\data_store_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \data_store_reg[20]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => do_store_reg_n_0,
      I5 => rst,
      O => \data_store_reg[12]_i_2_n_0\
    );
\data_store_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[13]_i_2_n_0\,
      I2 => \data_store_reg[13]_i_3_n_0\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(13),
      O => \data_store_reg[13]_i_1_n_0\
    );
\data_store_reg[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      O => \data_store_reg[13]_i_2_n_0\
    );
\data_store_reg[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => do_store_reg_n_0,
      I2 => \cnt_reg_n_0_[3]\,
      O => \data_store_reg[13]_i_3_n_0\
    );
\data_store_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[15]_i_2_n_0\,
      I2 => \data_store_reg[14]_i_2_n_0\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(14),
      O => \data_store_reg[14]_i_1_n_0\
    );
\data_store_reg[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[4]\,
      O => \data_store_reg[14]_i_2_n_0\
    );
\data_store_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[15]_i_2_n_0\,
      I2 => \data_store_reg[15]_i_3_n_0\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(15),
      O => \data_store_reg[15]_i_1_n_0\
    );
\data_store_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => do_store_reg_n_0,
      I2 => rst,
      I3 => \cnt_reg_n_0_[1]\,
      O => \data_store_reg[15]_i_2_n_0\
    );
\data_store_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[4]\,
      O => \data_store_reg[15]_i_3_n_0\
    );
\data_store_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[16]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \data_store_reg[16]_i_3_n_0\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(16),
      O => \data_store_reg[16]_i_1_n_0\
    );
\data_store_reg[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => do_store_reg_n_0,
      I2 => \cnt_reg_n_0_[3]\,
      O => \data_store_reg[16]_i_2_n_0\
    );
\data_store_reg[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      O => \data_store_reg[16]_i_3_n_0\
    );
\data_store_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3030BB88000088"
    )
        port map (
      I0 => i2s_recdat,
      I1 => \data_store_reg[17]_i_2_n_0\,
      I2 => rst,
      I3 => i2s_rx_lrc_d1,
      I4 => i2s_rx_lrc_d1_reg_2,
      I5 => data_store_reg(17),
      O => \data_store_reg[17]_i_1_n_0\
    );
\data_store_reg[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_store_reg[16]_i_2_n_0\,
      O => \data_store_reg[17]_i_2_n_0\
    );
\data_store_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[19]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(18),
      O => \data_store_reg[18]_i_1_n_0\
    );
\data_store_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \data_store_reg[19]_i_2_n_0\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(19),
      O => \data_store_reg[19]_i_1_n_0\
    );
\data_store_reg[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => rst,
      I2 => do_store_reg_n_0,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[2]\,
      O => \data_store_reg[19]_i_2_n_0\
    );
\data_store_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[13]_i_2_n_0\,
      I2 => \data_store_reg[16]_i_2_n_0\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(1),
      O => \data_store_reg[1]_i_1_n_0\
    );
\data_store_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[21]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \data_store_reg[20]_i_2_n_0\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(20),
      O => \data_store_reg[20]_i_1_n_0\
    );
\data_store_reg[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \data_store_reg[20]_i_2_n_0\
    );
\data_store_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[21]_i_2_n_0\,
      I2 => \data_store_reg[21]_i_3_n_0\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(21),
      O => \data_store_reg[21]_i_1_n_0\
    );
\data_store_reg[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => do_store_reg_n_0,
      I2 => rst,
      I3 => \cnt_reg_n_0_[2]\,
      O => \data_store_reg[21]_i_2_n_0\
    );
\data_store_reg[21]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[4]\,
      O => \data_store_reg[21]_i_3_n_0\
    );
\data_store_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[23]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(22),
      O => \data_store_reg[22]_i_1_n_0\
    );
\data_store_reg[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => i2s_recdat,
      I1 => i2s_rx_lrc_d1_reg_2,
      I2 => i2s_rx_lrc_d1,
      O => \data_store_reg[22]_i_2_n_0\
    );
\data_store_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => i2s_recdat,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \data_store_reg[23]_i_2_n_0\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(23),
      O => \data_store_reg[23]_i_1_n_0\
    );
\data_store_reg[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => rst,
      I2 => do_store_reg_n_0,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[2]\,
      O => \data_store_reg[23]_i_2_n_0\
    );
\data_store_reg[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => i2s_rx_lrc_d1_reg_2,
      I1 => i2s_rx_lrc_d1,
      I2 => rst,
      O => \data_store_reg[23]_i_3_n_0\
    );
\data_store_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEFFAAAA0200"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \data_store_reg[19]_i_2_n_0\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(2),
      O => \data_store_reg[2]_i_1_n_0\
    );
\data_store_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFBFFAAAA0800"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \data_store_reg[19]_i_2_n_0\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(3),
      O => \data_store_reg[3]_i_1_n_0\
    );
\data_store_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFBAAAA0008"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[21]_i_2_n_0\,
      I2 => \data_store_reg[20]_i_2_n_0\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(4),
      O => \data_store_reg[4]_i_1_n_0\
    );
\data_store_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[13]_i_2_n_0\,
      I2 => \data_store_reg[16]_i_2_n_0\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(5),
      O => \data_store_reg[5]_i_1_n_0\
    );
\data_store_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEFFAAAA0200"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \data_store_reg[23]_i_2_n_0\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(6),
      O => \data_store_reg[6]_i_1_n_0\
    );
\data_store_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFBFFAAAA0800"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \data_store_reg[23]_i_2_n_0\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(7),
      O => \data_store_reg[7]_i_1_n_0\
    );
\data_store_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFBAAAA0008"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[13]_i_3_n_0\,
      I2 => \data_store_reg[16]_i_3_n_0\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(8),
      O => \data_store_reg[8]_i_1_n_0\
    );
\data_store_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \data_store_reg[22]_i_2_n_0\,
      I1 => \data_store_reg[13]_i_2_n_0\,
      I2 => \data_store_reg[13]_i_3_n_0\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_store_reg[23]_i_3_n_0\,
      I5 => data_store_reg(9),
      O => \data_store_reg[9]_i_1_n_0\
    );
\data_store_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[0]_i_1_n_0\,
      Q => data_store_reg(0),
      R => '0'
    );
\data_store_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[10]_i_1_n_0\,
      Q => data_store_reg(10),
      R => '0'
    );
\data_store_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[11]_i_1_n_0\,
      Q => data_store_reg(11),
      R => '0'
    );
\data_store_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[12]_i_1_n_0\,
      Q => data_store_reg(12),
      R => '0'
    );
\data_store_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[13]_i_1_n_0\,
      Q => data_store_reg(13),
      R => '0'
    );
\data_store_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[14]_i_1_n_0\,
      Q => data_store_reg(14),
      R => '0'
    );
\data_store_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[15]_i_1_n_0\,
      Q => data_store_reg(15),
      R => '0'
    );
\data_store_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[16]_i_1_n_0\,
      Q => data_store_reg(16),
      R => '0'
    );
\data_store_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[17]_i_1_n_0\,
      Q => data_store_reg(17),
      R => '0'
    );
\data_store_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[18]_i_1_n_0\,
      Q => data_store_reg(18),
      R => '0'
    );
\data_store_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[19]_i_1_n_0\,
      Q => data_store_reg(19),
      R => '0'
    );
\data_store_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[1]_i_1_n_0\,
      Q => data_store_reg(1),
      R => '0'
    );
\data_store_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[20]_i_1_n_0\,
      Q => data_store_reg(20),
      R => '0'
    );
\data_store_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[21]_i_1_n_0\,
      Q => data_store_reg(21),
      R => '0'
    );
\data_store_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[22]_i_1_n_0\,
      Q => data_store_reg(22),
      R => '0'
    );
\data_store_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[23]_i_1_n_0\,
      Q => data_store_reg(23),
      R => '0'
    );
\data_store_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[2]_i_1_n_0\,
      Q => data_store_reg(2),
      R => '0'
    );
\data_store_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[3]_i_1_n_0\,
      Q => data_store_reg(3),
      R => '0'
    );
\data_store_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[4]_i_1_n_0\,
      Q => data_store_reg(4),
      R => '0'
    );
\data_store_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[5]_i_1_n_0\,
      Q => data_store_reg(5),
      R => '0'
    );
\data_store_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[6]_i_1_n_0\,
      Q => data_store_reg(6),
      R => '0'
    );
\data_store_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[7]_i_1_n_0\,
      Q => data_store_reg(7),
      R => '0'
    );
\data_store_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[8]_i_1_n_0\,
      Q => data_store_reg(8),
      R => '0'
    );
\data_store_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_store_reg[9]_i_1_n_0\,
      Q => data_store_reg(9),
      R => '0'
    );
do_store_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF666F66666"
    )
        port map (
      I0 => i2s_rx_lrc_d1,
      I1 => i2s_rx_lrc_d1_reg_2,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \data_store_reg[16]_i_3_n_0\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => do_store_reg_n_0,
      O => do_store_i_1_n_0
    );
do_store_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => do_store_i_1_n_0,
      Q => do_store_reg_n_0,
      R => rst
    );
i2s_rx_lrc_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => i2s_rx_lrc_d1_reg_2,
      Q => i2s_rx_lrc_d1,
      R => '0'
    );
lrc_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \data_store_reg_reg[23]_0\,
      CE => '1',
      D => \data_out[23]_i_1_n_0\,
      Q => data_o_rdy_pulse,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transmitter is
  port (
    jc : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_tx_l_wen_bclk_reg[1]\ : out STD_LOGIC;
    \data_tx_r_wen_bclk_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rst : in STD_LOGIC;
    \cnt_reg[4]_0\ : in STD_LOGIC;
    i2s_tx_lrc_d1_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \data_tx_l_wen_bclk_reg[1]__0\ : in STD_LOGIC;
    data_tx_l_rqst_bclk : in STD_LOGIC;
    \data_tx_r_wen_bclk_reg[1]__0\ : in STD_LOGIC;
    data_tx_r_rqst_bclk : in STD_LOGIC;
    \data_in_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \data_in_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transmitter : entity is "I2S_Transmitter";
end I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transmitter;

architecture STRUCTURE of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transmitter is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt : STD_LOGIC;
  signal cnt0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_shift_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal do_shift_out_i_1_n_0 : STD_LOGIC;
  signal do_shift_out_i_2_n_0 : STD_LOGIC;
  signal do_shift_out_reg_n_0 : STD_LOGIC;
  signal i2s_tx_dat_i_1_n_0 : STD_LOGIC;
  signal i2s_tx_lrc_d1 : STD_LOGIC;
  signal lrc_pulse_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[4]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_in[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_in[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_in[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_in[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_in[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_in[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_in[16]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_in[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_in[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_in[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_in[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_in[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_in[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_in[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_in[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_in[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_in[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_in[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_in[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_in[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_in[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_in[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_in[9]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_shift_reg[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_shift_reg[23]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of do_shift_out_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of lrc_pulse_i_1 : label is "soft_lutpair13";
begin
  E(0) <= \^e\(0);
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => cnt0(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      O => cnt0(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      O => cnt0(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[2]\,
      O => cnt0(3)
    );
\cnt[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => i2s_tx_lrc_d1,
      I1 => i2s_tx_lrc_d1_reg_0,
      I2 => rst,
      O => \cnt[4]_i_1__0_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => rst,
      O => cnt
    );
\cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[3]\,
      O => cnt0(4)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => cnt,
      D => cnt0(0),
      Q => \cnt_reg_n_0_[0]\,
      R => \cnt[4]_i_1__0_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => cnt,
      D => cnt0(1),
      Q => \cnt_reg_n_0_[1]\,
      R => \cnt[4]_i_1__0_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => cnt,
      D => cnt0(2),
      Q => \cnt_reg_n_0_[2]\,
      R => \cnt[4]_i_1__0_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => cnt,
      D => cnt0(3),
      Q => \cnt_reg_n_0_[3]\,
      S => \cnt[4]_i_1__0_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => cnt,
      D => cnt0(4),
      Q => \cnt_reg_n_0_[4]\,
      S => \cnt[4]_i_1__0_n_0\
    );
\data_in[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(0),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(0),
      O => D(0)
    );
\data_in[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(10),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(10),
      O => D(10)
    );
\data_in[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(11),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(11),
      O => D(11)
    );
\data_in[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(12),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(12),
      O => D(12)
    );
\data_in[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(13),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(13),
      O => D(13)
    );
\data_in[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(14),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(14),
      O => D(14)
    );
\data_in[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(15),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(15),
      O => D(15)
    );
\data_in[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(16),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(16),
      O => D(16)
    );
\data_in[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(17),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(17),
      O => D(17)
    );
\data_in[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(18),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(18),
      O => D(18)
    );
\data_in[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(19),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(19),
      O => D(19)
    );
\data_in[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(1),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(1),
      O => D(1)
    );
\data_in[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(20),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(20),
      O => D(20)
    );
\data_in[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(21),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(21),
      O => D(21)
    );
\data_in[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(22),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(22),
      O => D(22)
    );
\data_in[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(23),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(23),
      O => D(23)
    );
\data_in[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(2),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(2),
      O => D(2)
    );
\data_in[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(3),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(3),
      O => D(3)
    );
\data_in[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(4),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(4),
      O => D(4)
    );
\data_in[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(5),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(5),
      O => D(5)
    );
\data_in[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(6),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(6),
      O => D(6)
    );
\data_in[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(7),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(7),
      O => D(7)
    );
\data_in[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(8),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(8),
      O => D(8)
    );
\data_in[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg[23]\(9),
      I1 => i2s_tx_lrc_d1,
      I2 => \data_in_reg[23]_0\(9),
      O => D(9)
    );
\data_shift_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(9),
      I1 => \data_shift_reg_reg_n_0_[9]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(10)
    );
\data_shift_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(10),
      I1 => \data_shift_reg_reg_n_0_[10]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(11)
    );
\data_shift_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(11),
      I1 => \data_shift_reg_reg_n_0_[11]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(12)
    );
\data_shift_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(12),
      I1 => \data_shift_reg_reg_n_0_[12]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(13)
    );
\data_shift_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(13),
      I1 => \data_shift_reg_reg_n_0_[13]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(14)
    );
\data_shift_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(14),
      I1 => \data_shift_reg_reg_n_0_[14]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(15)
    );
\data_shift_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(15),
      I1 => \data_shift_reg_reg_n_0_[15]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(16)
    );
\data_shift_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(16),
      I1 => \data_shift_reg_reg_n_0_[16]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(17)
    );
\data_shift_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(17),
      I1 => \data_shift_reg_reg_n_0_[17]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(18)
    );
\data_shift_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(18),
      I1 => \data_shift_reg_reg_n_0_[18]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(19)
    );
\data_shift_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Q(0),
      I1 => i2s_tx_lrc_d1,
      I2 => i2s_tx_lrc_d1_reg_0,
      O => \data_shift_reg[1]_i_1_n_0\
    );
\data_shift_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(19),
      I1 => \data_shift_reg_reg_n_0_[19]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(20)
    );
\data_shift_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(20),
      I1 => \data_shift_reg_reg_n_0_[20]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(21)
    );
\data_shift_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(21),
      I1 => \data_shift_reg_reg_n_0_[21]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(22)
    );
\data_shift_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => do_shift_out_reg_n_0,
      I1 => i2s_tx_lrc_d1,
      I2 => i2s_tx_lrc_d1_reg_0,
      O => \data_shift_reg[23]_i_1_n_0\
    );
\data_shift_reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(22),
      I1 => \data_shift_reg_reg_n_0_[22]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(23)
    );
\data_shift_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(1),
      I1 => \data_shift_reg_reg_n_0_[1]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(2)
    );
\data_shift_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(2),
      I1 => \data_shift_reg_reg_n_0_[2]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(3)
    );
\data_shift_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(3),
      I1 => \data_shift_reg_reg_n_0_[3]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(4)
    );
\data_shift_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(4),
      I1 => \data_shift_reg_reg_n_0_[4]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(5)
    );
\data_shift_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(5),
      I1 => \data_shift_reg_reg_n_0_[5]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(6)
    );
\data_shift_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(6),
      I1 => \data_shift_reg_reg_n_0_[6]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(7)
    );
\data_shift_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(7),
      I1 => \data_shift_reg_reg_n_0_[7]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(8)
    );
\data_shift_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => Q(8),
      I1 => \data_shift_reg_reg_n_0_[8]\,
      I2 => i2s_tx_lrc_d1_reg_0,
      I3 => i2s_tx_lrc_d1,
      O => p_1_in(9)
    );
\data_shift_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(10),
      Q => \data_shift_reg_reg_n_0_[10]\,
      R => rst
    );
\data_shift_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(11),
      Q => \data_shift_reg_reg_n_0_[11]\,
      R => rst
    );
\data_shift_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(12),
      Q => \data_shift_reg_reg_n_0_[12]\,
      R => rst
    );
\data_shift_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(13),
      Q => \data_shift_reg_reg_n_0_[13]\,
      R => rst
    );
\data_shift_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(14),
      Q => \data_shift_reg_reg_n_0_[14]\,
      R => rst
    );
\data_shift_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(15),
      Q => \data_shift_reg_reg_n_0_[15]\,
      R => rst
    );
\data_shift_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(16),
      Q => \data_shift_reg_reg_n_0_[16]\,
      R => rst
    );
\data_shift_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(17),
      Q => \data_shift_reg_reg_n_0_[17]\,
      R => rst
    );
\data_shift_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(18),
      Q => \data_shift_reg_reg_n_0_[18]\,
      R => rst
    );
\data_shift_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(19),
      Q => \data_shift_reg_reg_n_0_[19]\,
      R => rst
    );
\data_shift_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => \data_shift_reg[1]_i_1_n_0\,
      Q => \data_shift_reg_reg_n_0_[1]\,
      R => rst
    );
\data_shift_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(20),
      Q => \data_shift_reg_reg_n_0_[20]\,
      R => rst
    );
\data_shift_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(21),
      Q => \data_shift_reg_reg_n_0_[21]\,
      R => rst
    );
\data_shift_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(22),
      Q => \data_shift_reg_reg_n_0_[22]\,
      R => rst
    );
\data_shift_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(23),
      Q => p_0_in,
      R => rst
    );
\data_shift_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(2),
      Q => \data_shift_reg_reg_n_0_[2]\,
      R => rst
    );
\data_shift_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(3),
      Q => \data_shift_reg_reg_n_0_[3]\,
      R => rst
    );
\data_shift_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(4),
      Q => \data_shift_reg_reg_n_0_[4]\,
      R => rst
    );
\data_shift_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(5),
      Q => \data_shift_reg_reg_n_0_[5]\,
      R => rst
    );
\data_shift_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(6),
      Q => \data_shift_reg_reg_n_0_[6]\,
      R => rst
    );
\data_shift_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(7),
      Q => \data_shift_reg_reg_n_0_[7]\,
      R => rst
    );
\data_shift_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(8),
      Q => \data_shift_reg_reg_n_0_[8]\,
      R => rst
    );
\data_shift_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => \data_shift_reg[23]_i_1_n_0\,
      D => p_1_in(9),
      Q => \data_shift_reg_reg_n_0_[9]\,
      R => rst
    );
data_tx_l_rqst_bclk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC45CC44"
    )
        port map (
      I0 => \data_tx_l_wen_bclk_reg[1]__0\,
      I1 => data_tx_l_rqst_bclk,
      I2 => i2s_tx_lrc_d1,
      I3 => rst,
      I4 => \^e\(0),
      O => \data_tx_l_wen_bclk_reg[1]\
    );
data_tx_r_rqst_bclk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5C4C4C4"
    )
        port map (
      I0 => \data_tx_r_wen_bclk_reg[1]__0\,
      I1 => data_tx_r_rqst_bclk,
      I2 => rst,
      I3 => i2s_tx_lrc_d1,
      I4 => \^e\(0),
      O => \data_tx_r_wen_bclk_reg[1]\
    );
do_shift_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF666F66666"
    )
        port map (
      I0 => i2s_tx_lrc_d1_reg_0,
      I1 => i2s_tx_lrc_d1,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => do_shift_out_i_2_n_0,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => do_shift_out_reg_n_0,
      O => do_shift_out_i_1_n_0
    );
do_shift_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      O => do_shift_out_i_2_n_0
    );
do_shift_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => '1',
      D => do_shift_out_i_1_n_0,
      Q => do_shift_out_reg_n_0,
      R => rst
    );
i2s_tx_dat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EB282828"
    )
        port map (
      I0 => Q(23),
      I1 => i2s_tx_lrc_d1_reg_0,
      I2 => i2s_tx_lrc_d1,
      I3 => p_0_in,
      I4 => do_shift_out_reg_n_0,
      O => i2s_tx_dat_i_1_n_0
    );
i2s_tx_dat_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => '1',
      D => i2s_tx_dat_i_1_n_0,
      Q => jc(0),
      R => rst
    );
i2s_tx_lrc_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => '1',
      D => i2s_tx_lrc_d1_reg_0,
      Q => i2s_tx_lrc_d1,
      R => '0'
    );
lrc_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2s_tx_lrc_d1,
      I1 => i2s_tx_lrc_d1_reg_0,
      O => lrc_pulse_i_1_n_0
    );
lrc_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \cnt_reg[4]_0\,
      CE => '1',
      D => lrc_pulse_i_1_n_0,
      Q => \^e\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Sine_Wave_Generator is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \smpl_data_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \smpl_data_reg[15]_1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_0 : out STD_LOGIC;
    smpl_dat_msb_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC;
    do_sine : in STD_LOGIC;
    \data_tx_right_reg[23]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_tx_left_reg[23]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    smpl_dat_msb : in STD_LOGIC;
    audio_mute_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Sine_Wave_Generator : entity is "Sine_Wave_Generator";
end I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Sine_Wave_Generator;

architecture STRUCTURE of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Sine_Wave_Generator is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal smpl_data : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \smpl_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[0]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[10]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[10]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[10]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[10]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[10]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[11]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[11]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[11]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[11]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[11]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[12]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[12]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[12]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[12]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[12]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_10_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_11_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_12_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_13_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_14_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[13]_i_9_n_0\ : STD_LOGIC;
  signal \smpl_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[14]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[14]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[14]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[14]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[14]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[1]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[1]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[2]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[2]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[2]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[3]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[3]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[4]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[4]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[4]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[5]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[5]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[5]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[6]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[6]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[6]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[7]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[7]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[8]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[8]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[8]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[8]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[8]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[8]_i_8_n_0\ : STD_LOGIC;
  signal \smpl_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_data[9]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_data[9]_i_3_n_0\ : STD_LOGIC;
  signal \smpl_data[9]_i_4_n_0\ : STD_LOGIC;
  signal \smpl_data[9]_i_5_n_0\ : STD_LOGIC;
  signal \smpl_data[9]_i_6_n_0\ : STD_LOGIC;
  signal \smpl_data[9]_i_7_n_0\ : STD_LOGIC;
  signal \smpl_data[9]_i_8_n_0\ : STD_LOGIC;
  signal \^smpl_data_reg[15]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smpl_phase_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal smpl_phase_reg_reg_rep_n_0 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_1 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_10 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_11 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_12 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_13 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_14 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_15 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_2 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_3 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_4 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_5 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_6 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_7 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_8 : STD_LOGIC;
  signal smpl_phase_reg_reg_rep_n_9 : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_smpl_phase_reg_reg_rep_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_smpl_phase_reg_reg_rep_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smpl_phase_reg_reg_rep_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_tx_left[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \data_tx_left[11]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \data_tx_left[12]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \data_tx_left[13]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \data_tx_left[14]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \data_tx_left[15]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \data_tx_left[16]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \data_tx_left[17]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \data_tx_left[18]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \data_tx_left[19]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \data_tx_left[20]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_tx_left[21]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_tx_left[22]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_tx_left[23]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_tx_left[8]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \data_tx_left[9]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \data_tx_right[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \data_tx_right[11]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \data_tx_right[12]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \data_tx_right[13]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \data_tx_right[14]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \data_tx_right[15]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \data_tx_right[16]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \data_tx_right[17]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \data_tx_right[18]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \data_tx_right[19]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \data_tx_right[20]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_tx_right[21]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_tx_right[22]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_tx_right[23]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_tx_right[8]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \data_tx_right[9]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \i__carry__2_i_6\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \smpl_data[0]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \smpl_data[0]_i_4\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \smpl_data[10]_i_3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \smpl_data[10]_i_4\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \smpl_data[11]_i_3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \smpl_data[11]_i_4\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \smpl_data[12]_i_3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \smpl_data[12]_i_4\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \smpl_data[13]_i_13\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \smpl_data[13]_i_5\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \smpl_data[13]_i_6\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \smpl_data[13]_i_7\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \smpl_data[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \smpl_data[14]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \smpl_data[14]_i_7\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \smpl_data[15]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \smpl_data[1]_i_3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \smpl_data[2]_i_3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \smpl_data[2]_i_4\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \smpl_data[3]_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \smpl_data[3]_i_4\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \smpl_data[4]_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \smpl_data[4]_i_4\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \smpl_data[5]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \smpl_data[5]_i_4\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \smpl_data[6]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \smpl_data[6]_i_4\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \smpl_data[7]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \smpl_data[7]_i_4\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \smpl_data[8]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \smpl_data[8]_i_4\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \smpl_data[9]_i_3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \smpl_data[9]_i_4\ : label is "soft_lutpair68";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of smpl_phase_reg_reg_rep : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of smpl_phase_reg_reg_rep : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of smpl_phase_reg_reg_rep : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of smpl_phase_reg_reg_rep : label is "inst/nolabel_line138/smpl_phase_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of smpl_phase_reg_reg_rep : label is "RAM_SP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of smpl_phase_reg_reg_rep : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of smpl_phase_reg_reg_rep : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of smpl_phase_reg_reg_rep : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of smpl_phase_reg_reg_rep : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of smpl_phase_reg_reg_rep : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of smpl_phase_reg_reg_rep : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of smpl_phase_reg_reg_rep : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of smpl_phase_reg_reg_rep : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of smpl_phase_reg_reg_rep : label is 15;
begin
  E(0) <= \^e\(0);
  \smpl_data_reg[15]_0\(0) <= \^smpl_data_reg[15]_0\(0);
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => p_0_in1_in(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in1_in(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3) => \_inferred__0/i__carry__1_n_0\,
      CO(2) => \_inferred__0/i__carry__1_n_1\,
      CO(1) => \_inferred__0/i__carry__1_n_2\,
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in1_in(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__0/i__carry__2_n_1\,
      CO(1) => \_inferred__0/i__carry__2_n_2\,
      CO(0) => \_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in1_in(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
audio_mute_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9F0"
    )
        port map (
      I0 => smpl_dat_msb,
      I1 => \^smpl_data_reg[15]_0\(0),
      I2 => sw(0),
      I3 => audio_mute_n,
      O => smpl_dat_msb_reg
    );
\data_tx_left[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(2),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(2),
      O => \smpl_data_reg[15]_1\(2)
    );
\data_tx_left[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(3),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(3),
      O => \smpl_data_reg[15]_1\(3)
    );
\data_tx_left[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(4),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(4),
      O => \smpl_data_reg[15]_1\(4)
    );
\data_tx_left[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(5),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(5),
      O => \smpl_data_reg[15]_1\(5)
    );
\data_tx_left[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(6),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(6),
      O => \smpl_data_reg[15]_1\(6)
    );
\data_tx_left[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(7),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(7),
      O => \smpl_data_reg[15]_1\(7)
    );
\data_tx_left[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(8),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(8),
      O => \smpl_data_reg[15]_1\(8)
    );
\data_tx_left[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(9),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(9),
      O => \smpl_data_reg[15]_1\(9)
    );
\data_tx_left[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(10),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(10),
      O => \smpl_data_reg[15]_1\(10)
    );
\data_tx_left[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(11),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(11),
      O => \smpl_data_reg[15]_1\(11)
    );
\data_tx_left[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(12),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(12),
      O => \smpl_data_reg[15]_1\(12)
    );
\data_tx_left[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(13),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(13),
      O => \smpl_data_reg[15]_1\(13)
    );
\data_tx_left[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(14),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(14),
      O => \smpl_data_reg[15]_1\(14)
    );
\data_tx_left[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^smpl_data_reg[15]_0\(0),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(15),
      O => \smpl_data_reg[15]_1\(15)
    );
\data_tx_left[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(0),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(0),
      O => \smpl_data_reg[15]_1\(0)
    );
\data_tx_left[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(1),
      I1 => do_sine,
      I2 => \data_tx_left_reg[23]\(1),
      O => \smpl_data_reg[15]_1\(1)
    );
\data_tx_right[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(2),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(2),
      O => D(2)
    );
\data_tx_right[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(3),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(3),
      O => D(3)
    );
\data_tx_right[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(4),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(4),
      O => D(4)
    );
\data_tx_right[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(5),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(5),
      O => D(5)
    );
\data_tx_right[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(6),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(6),
      O => D(6)
    );
\data_tx_right[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(7),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(7),
      O => D(7)
    );
\data_tx_right[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(8),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(8),
      O => D(8)
    );
\data_tx_right[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(9),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(9),
      O => D(9)
    );
\data_tx_right[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(10),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(10),
      O => D(10)
    );
\data_tx_right[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(11),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(11),
      O => D(11)
    );
\data_tx_right[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(12),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(12),
      O => D(12)
    );
\data_tx_right[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(13),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(13),
      O => D(13)
    );
\data_tx_right[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(14),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(14),
      O => D(14)
    );
\data_tx_right[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^smpl_data_reg[15]_0\(0),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(15),
      O => D(15)
    );
\data_tx_right[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(0),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(0),
      O => D(0)
    );
\data_tx_right[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => smpl_data(1),
      I1 => do_sine,
      I2 => \data_tx_right_reg[23]\(1),
      O => D(1)
    );
data_tx_right_rdy_pulse_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \^e\(0)
    );
do_sine_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCCDCCCC"
    )
        port map (
      I0 => rst,
      I1 => sw(1),
      I2 => smpl_dat_msb,
      I3 => \^smpl_data_reg[15]_0\(0),
      I4 => do_sine,
      O => rst_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[7]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_8,
      I4 => smpl_phase_reg(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[6]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_9,
      I4 => smpl_phase_reg(8),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[5]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_10,
      I4 => smpl_phase_reg(8),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[4]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_11,
      I4 => smpl_phase_reg(8),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[11]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_4,
      I4 => smpl_phase_reg(8),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[10]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_5,
      I4 => smpl_phase_reg(8),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[9]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_6,
      I4 => smpl_phase_reg(8),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[8]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_7,
      I4 => smpl_phase_reg(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smpl_phase_reg(8),
      I1 => smpl_phase_reg_reg_rep_n_0,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \i__carry__2_i_5_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_1,
      I4 => smpl_phase_reg(8),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_2,
      I4 => smpl_phase_reg(8),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[12]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_3,
      I4 => smpl_phase_reg(8),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEAA0000"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_14_n_0\,
      I2 => \i__carry__2_i_6_n_0\,
      I3 => \smpl_data[13]_i_12_n_0\,
      I4 => \smpl_data[14]_i_6_n_0\,
      I5 => \smpl_data[14]_i_7_n_0\,
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => smpl_phase_reg(2),
      I1 => smpl_phase_reg(1),
      I2 => smpl_phase_reg(0),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[3]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_12,
      I4 => smpl_phase_reg(8),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[2]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_13,
      I4 => smpl_phase_reg(8),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[1]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_14,
      I4 => smpl_phase_reg(8),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \smpl_data[13]_i_4_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[0]_i_2_n_0\,
      I3 => smpl_phase_reg_reg_rep_n_15,
      I4 => smpl_phase_reg(8),
      O => \i__carry_i_4_n_0\
    );
\smpl_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[0]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[0]_i_3_n_0\,
      I5 => \smpl_data[0]_i_4_n_0\,
      O => \smpl_data[0]_i_1_n_0\
    );
\smpl_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[0]_i_5_n_0\,
      I1 => \smpl_data[0]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[0]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[0]_i_8_n_0\,
      O => \smpl_data[0]_i_2_n_0\
    );
\smpl_data[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_15,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[0]_i_3_n_0\
    );
\smpl_data[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(0),
      O => \smpl_data[0]_i_4_n_0\
    );
\smpl_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1A5B2FE2839F34B"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(0),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[0]_i_5_n_0\
    );
\smpl_data[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E2A46F122DF6A9"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(2),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[0]_i_6_n_0\
    );
\smpl_data[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11982A13E4CDF3F6"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(2),
      O => \smpl_data[0]_i_7_n_0\
    );
\smpl_data[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FBA27FFEDA8224A"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => smpl_phase_reg(2),
      I2 => \smpl_data[13]_i_12_n_0\,
      I3 => smpl_phase_reg(1),
      I4 => \smpl_data[13]_i_14_n_0\,
      I5 => smpl_phase_reg(0),
      O => \smpl_data[0]_i_8_n_0\
    );
\smpl_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[10]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[10]_i_3_n_0\,
      I5 => \smpl_data[10]_i_4_n_0\,
      O => \smpl_data[10]_i_1_n_0\
    );
\smpl_data[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[10]_i_5_n_0\,
      I1 => \smpl_data[10]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[10]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[10]_i_8_n_0\,
      O => \smpl_data[10]_i_2_n_0\
    );
\smpl_data[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_5,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[10]_i_3_n_0\
    );
\smpl_data[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(10),
      O => \smpl_data[10]_i_4_n_0\
    );
\smpl_data[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA5455"
    )
        port map (
      I0 => \smpl_data[13]_i_14_n_0\,
      I1 => smpl_phase_reg(2),
      I2 => smpl_phase_reg(1),
      I3 => smpl_phase_reg(0),
      I4 => \smpl_data[13]_i_12_n_0\,
      I5 => \smpl_data[14]_i_4_n_0\,
      O => \smpl_data[10]_i_5_n_0\
    );
\smpl_data[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B6A46D69A46449B6"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(2),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[10]_i_6_n_0\
    );
\smpl_data[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0C3C7C7878770"
    )
        port map (
      I0 => \smpl_data[13]_i_12_n_0\,
      I1 => \smpl_data[14]_i_4_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(2),
      O => \smpl_data[10]_i_7_n_0\
    );
\smpl_data[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC2CC23DCC3C63C"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[10]_i_8_n_0\
    );
\smpl_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[11]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[11]_i_3_n_0\,
      I5 => \smpl_data[11]_i_4_n_0\,
      O => \smpl_data[11]_i_1_n_0\
    );
\smpl_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[11]_i_5_n_0\,
      I1 => \smpl_data[11]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[11]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[11]_i_8_n_0\,
      O => \smpl_data[11]_i_2_n_0\
    );
\smpl_data[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_4,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[11]_i_3_n_0\
    );
\smpl_data[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(11),
      O => \smpl_data[11]_i_4_n_0\
    );
\smpl_data[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAAE"
    )
        port map (
      I0 => \smpl_data[13]_i_12_n_0\,
      I1 => smpl_phase_reg(0),
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => \smpl_data[13]_i_14_n_0\,
      I5 => \smpl_data[14]_i_4_n_0\,
      O => \smpl_data[11]_i_5_n_0\
    );
\smpl_data[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B393BB246626264"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(0),
      I5 => \smpl_data[13]_i_14_n_0\,
      O => \smpl_data[11]_i_6_n_0\
    );
\smpl_data[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3664364333333333"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(1),
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(0),
      I5 => \smpl_data[13]_i_14_n_0\,
      O => \smpl_data[11]_i_7_n_0\
    );
\smpl_data[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995899A6A6A6AE6"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(0),
      I5 => \smpl_data[13]_i_14_n_0\,
      O => \smpl_data[11]_i_8_n_0\
    );
\smpl_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[12]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[12]_i_3_n_0\,
      I5 => \smpl_data[12]_i_4_n_0\,
      O => \smpl_data[12]_i_1_n_0\
    );
\smpl_data[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \smpl_data[12]_i_5_n_0\,
      I1 => \smpl_data[14]_i_6_n_0\,
      I2 => \smpl_data[12]_i_6_n_0\,
      I3 => \smpl_data[14]_i_7_n_0\,
      I4 => \smpl_data[12]_i_7_n_0\,
      O => \smpl_data[12]_i_2_n_0\
    );
\smpl_data[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_3,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[12]_i_3_n_0\
    );
\smpl_data[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(12),
      O => \smpl_data[12]_i_4_n_0\
    );
\smpl_data[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBAAB555555D5"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_14_n_0\,
      I2 => smpl_phase_reg(0),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(2),
      I5 => \smpl_data[13]_i_12_n_0\,
      O => \smpl_data[12]_i_5_n_0\
    );
\smpl_data[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55191195"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_14_n_0\,
      I2 => smpl_phase_reg(0),
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(1),
      I5 => \smpl_data[13]_i_12_n_0\,
      O => \smpl_data[12]_i_6_n_0\
    );
\smpl_data[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"445544D4A222222A"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_14_n_0\,
      I2 => smpl_phase_reg(0),
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(1),
      I5 => \smpl_data[13]_i_12_n_0\,
      O => \smpl_data[12]_i_7_n_0\
    );
\smpl_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[13]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[13]_i_6_n_0\,
      I5 => \smpl_data[13]_i_7_n_0\,
      O => \smpl_data[13]_i_1_n_0\
    );
\smpl_data[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3BBBBBB33BBBBBBC"
    )
        port map (
      I0 => \smpl_data[13]_i_14_n_0\,
      I1 => smpl_phase_reg(4),
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(0),
      I5 => smpl_phase_reg(3),
      O => \smpl_data[13]_i_10_n_0\
    );
\smpl_data[13]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => smpl_phase_reg(4),
      I1 => smpl_phase_reg(2),
      I2 => smpl_phase_reg(1),
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(3),
      I5 => smpl_phase_reg(5),
      O => \smpl_data[13]_i_11_n_0\
    );
\smpl_data[13]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => smpl_phase_reg(3),
      I1 => smpl_phase_reg(0),
      I2 => smpl_phase_reg(1),
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(4),
      O => \smpl_data[13]_i_12_n_0\
    );
\smpl_data[13]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => smpl_phase_reg(1),
      I1 => smpl_phase_reg(2),
      I2 => smpl_phase_reg(0),
      O => \smpl_data[13]_i_13_n_0\
    );
\smpl_data[13]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => smpl_phase_reg(2),
      I1 => smpl_phase_reg(1),
      I2 => smpl_phase_reg(0),
      I3 => smpl_phase_reg(3),
      O => \smpl_data[13]_i_14_n_0\
    );
\smpl_data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FF00FC88FC88"
    )
        port map (
      I0 => \smpl_data[13]_i_8_n_0\,
      I1 => \smpl_data[14]_i_6_n_0\,
      I2 => \smpl_data[13]_i_9_n_0\,
      I3 => \smpl_data[14]_i_7_n_0\,
      I4 => \smpl_data[13]_i_10_n_0\,
      I5 => \smpl_data[14]_i_4_n_0\,
      O => \smpl_data[13]_i_2_n_0\
    );
\smpl_data[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => smpl_phase_reg(6),
      I1 => \smpl_data[13]_i_11_n_0\,
      I2 => smpl_phase_reg(7),
      O => \smpl_data[13]_i_3_n_0\
    );
\smpl_data[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \smpl_data[14]_i_7_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_13_n_0\,
      I3 => \smpl_data[13]_i_14_n_0\,
      I4 => \smpl_data[14]_i_4_n_0\,
      I5 => \smpl_data[14]_i_6_n_0\,
      O => \smpl_data[13]_i_4_n_0\
    );
\smpl_data[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => smpl_phase_reg(8),
      I1 => smpl_phase_reg(9),
      O => \smpl_data[13]_i_5_n_0\
    );
\smpl_data[13]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_2,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[13]_i_6_n_0\
    );
\smpl_data[13]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(13),
      O => \smpl_data[13]_i_7_n_0\
    );
\smpl_data[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDCDCDDDDDCDCD7"
    )
        port map (
      I0 => \smpl_data[13]_i_14_n_0\,
      I1 => smpl_phase_reg(4),
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(0),
      I5 => smpl_phase_reg(3),
      O => \smpl_data[13]_i_8_n_0\
    );
\smpl_data[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3BBB3BB33BBB3BBC"
    )
        port map (
      I0 => \smpl_data[13]_i_14_n_0\,
      I1 => smpl_phase_reg(4),
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(0),
      I5 => smpl_phase_reg(3),
      O => \smpl_data[13]_i_9_n_0\
    );
\smpl_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AAF0CC"
    )
        port map (
      I0 => \smpl_data[14]_i_2_n_0\,
      I1 => smpl_phase_reg_reg_rep_n_1,
      I2 => p_0_in1_in(14),
      I3 => smpl_phase_reg(9),
      I4 => smpl_phase_reg(8),
      O => \smpl_data[14]_i_1_n_0\
    );
\smpl_data[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333333300808"
    )
        port map (
      I0 => \smpl_data[14]_i_3_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[14]_i_4_n_0\,
      I3 => \smpl_data[14]_i_5_n_0\,
      I4 => \smpl_data[14]_i_6_n_0\,
      I5 => \smpl_data[14]_i_7_n_0\,
      O => \smpl_data[14]_i_2_n_0\
    );
\smpl_data[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000001"
    )
        port map (
      I0 => \smpl_data[13]_i_14_n_0\,
      I1 => smpl_phase_reg(4),
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(0),
      I5 => smpl_phase_reg(3),
      O => \smpl_data[14]_i_3_n_0\
    );
\smpl_data[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => smpl_phase_reg(4),
      I1 => smpl_phase_reg(2),
      I2 => smpl_phase_reg(1),
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(3),
      I5 => smpl_phase_reg(5),
      O => \smpl_data[14]_i_4_n_0\
    );
\smpl_data[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2223232222232328"
    )
        port map (
      I0 => \smpl_data[13]_i_14_n_0\,
      I1 => smpl_phase_reg(4),
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(0),
      I5 => smpl_phase_reg(3),
      O => \smpl_data[14]_i_5_n_0\
    );
\smpl_data[14]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \smpl_data[13]_i_11_n_0\,
      I1 => smpl_phase_reg(6),
      O => \smpl_data[14]_i_6_n_0\
    );
\smpl_data[14]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => smpl_phase_reg(6),
      I1 => \smpl_data[13]_i_11_n_0\,
      I2 => smpl_phase_reg(7),
      O => \smpl_data[14]_i_7_n_0\
    );
\smpl_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CA"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_0,
      I1 => p_0_in1_in(15),
      I2 => smpl_phase_reg(9),
      I3 => smpl_phase_reg(8),
      O => \smpl_data[15]_i_1_n_0\
    );
\smpl_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[1]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[1]_i_3_n_0\,
      I5 => \smpl_data[1]_i_4_n_0\,
      O => \smpl_data[1]_i_1_n_0\
    );
\smpl_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[1]_i_5_n_0\,
      I1 => \smpl_data[1]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[1]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[1]_i_8_n_0\,
      O => \smpl_data[1]_i_2_n_0\
    );
\smpl_data[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_14,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[1]_i_3_n_0\
    );
\smpl_data[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(1),
      O => \smpl_data[1]_i_4_n_0\
    );
\smpl_data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"140C7F494323C300"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(2),
      O => \smpl_data[1]_i_5_n_0\
    );
\smpl_data[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DE010BED8936A07D"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(2),
      O => \smpl_data[1]_i_6_n_0\
    );
\smpl_data[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C11FE2ADB6697359"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[1]_i_7_n_0\
    );
\smpl_data[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41262F3F16F37AE0"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(2),
      I3 => \smpl_data[13]_i_14_n_0\,
      I4 => smpl_phase_reg(0),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[1]_i_8_n_0\
    );
\smpl_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[2]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[2]_i_3_n_0\,
      I5 => \smpl_data[2]_i_4_n_0\,
      O => \smpl_data[2]_i_1_n_0\
    );
\smpl_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[2]_i_5_n_0\,
      I1 => \smpl_data[2]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[2]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[2]_i_8_n_0\,
      O => \smpl_data[2]_i_2_n_0\
    );
\smpl_data[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_13,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[2]_i_3_n_0\
    );
\smpl_data[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(2),
      O => \smpl_data[2]_i_4_n_0\
    );
\smpl_data[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D6C4AAB2E8EB634"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(2),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[2]_i_5_n_0\
    );
\smpl_data[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D650373D1C137E6"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[2]_i_6_n_0\
    );
\smpl_data[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"539BED8D064DE8D2"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(0),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[2]_i_7_n_0\
    );
\smpl_data[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E664CA09ABE13384"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(2),
      O => \smpl_data[2]_i_8_n_0\
    );
\smpl_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[3]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[3]_i_3_n_0\,
      I5 => \smpl_data[3]_i_4_n_0\,
      O => \smpl_data[3]_i_1_n_0\
    );
\smpl_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[3]_i_5_n_0\,
      I1 => \smpl_data[3]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[3]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[3]_i_8_n_0\,
      O => \smpl_data[3]_i_2_n_0\
    );
\smpl_data[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_12,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[3]_i_3_n_0\
    );
\smpl_data[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(3),
      O => \smpl_data[3]_i_4_n_0\
    );
\smpl_data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"61D53237D2C3AFE6"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(2),
      O => \smpl_data[3]_i_5_n_0\
    );
\smpl_data[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D21082628677FB93"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => \smpl_data[13]_i_14_n_0\,
      I5 => smpl_phase_reg(0),
      O => \smpl_data[3]_i_6_n_0\
    );
\smpl_data[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"935B3D49CF463462"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[3]_i_7_n_0\
    );
\smpl_data[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F48080F593D7D70A"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => smpl_phase_reg(2),
      I2 => smpl_phase_reg(1),
      I3 => \smpl_data[13]_i_12_n_0\,
      I4 => \smpl_data[13]_i_14_n_0\,
      I5 => smpl_phase_reg(0),
      O => \smpl_data[3]_i_8_n_0\
    );
\smpl_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[4]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[4]_i_3_n_0\,
      I5 => \smpl_data[4]_i_4_n_0\,
      O => \smpl_data[4]_i_1_n_0\
    );
\smpl_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[4]_i_5_n_0\,
      I1 => \smpl_data[4]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[4]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[4]_i_8_n_0\,
      O => \smpl_data[4]_i_2_n_0\
    );
\smpl_data[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_11,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[4]_i_3_n_0\
    );
\smpl_data[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(4),
      O => \smpl_data[4]_i_4_n_0\
    );
\smpl_data[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C2888EAEA36F734"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(1),
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(2),
      I5 => \smpl_data[13]_i_14_n_0\,
      O => \smpl_data[4]_i_5_n_0\
    );
\smpl_data[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A1BDE0283466BFF"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(2),
      I3 => \smpl_data[13]_i_14_n_0\,
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[4]_i_6_n_0\
    );
\smpl_data[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36E9C116EA29DC94"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(2),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[4]_i_7_n_0\
    );
\smpl_data[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8D58CD57D007A202"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => smpl_phase_reg(2),
      I2 => \smpl_data[13]_i_12_n_0\,
      I3 => \smpl_data[13]_i_14_n_0\,
      I4 => smpl_phase_reg(0),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[4]_i_8_n_0\
    );
\smpl_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[5]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[5]_i_3_n_0\,
      I5 => \smpl_data[5]_i_4_n_0\,
      O => \smpl_data[5]_i_1_n_0\
    );
\smpl_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[5]_i_5_n_0\,
      I1 => \smpl_data[5]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[5]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[5]_i_8_n_0\,
      O => \smpl_data[5]_i_2_n_0\
    );
\smpl_data[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_10,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[5]_i_3_n_0\
    );
\smpl_data[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(5),
      O => \smpl_data[5]_i_4_n_0\
    );
\smpl_data[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEC8EC4EB77419C"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(2),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(0),
      I5 => \smpl_data[13]_i_14_n_0\,
      O => \smpl_data[5]_i_5_n_0\
    );
\smpl_data[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7148A5DC5FB662B9"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[5]_i_6_n_0\
    );
\smpl_data[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24541DB2FF57D28E"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(2),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[5]_i_7_n_0\
    );
\smpl_data[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A083C7D7D7D690A"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(2),
      O => \smpl_data[5]_i_8_n_0\
    );
\smpl_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[6]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[6]_i_3_n_0\,
      I5 => \smpl_data[6]_i_4_n_0\,
      O => \smpl_data[6]_i_1_n_0\
    );
\smpl_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[6]_i_5_n_0\,
      I1 => \smpl_data[6]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[6]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[6]_i_8_n_0\,
      O => \smpl_data[6]_i_2_n_0\
    );
\smpl_data[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_9,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[6]_i_3_n_0\
    );
\smpl_data[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(6),
      O => \smpl_data[6]_i_4_n_0\
    );
\smpl_data[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB778322BA805FDD"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => smpl_phase_reg(1),
      I2 => smpl_phase_reg(2),
      I3 => \smpl_data[13]_i_12_n_0\,
      I4 => \smpl_data[13]_i_14_n_0\,
      I5 => smpl_phase_reg(0),
      O => \smpl_data[6]_i_5_n_0\
    );
\smpl_data[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75BCA4680CFCB1F5"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(1),
      I3 => smpl_phase_reg(2),
      I4 => \smpl_data[13]_i_14_n_0\,
      I5 => smpl_phase_reg(0),
      O => \smpl_data[6]_i_6_n_0\
    );
\smpl_data[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5933B1D7E6CC47FE"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(0),
      I3 => smpl_phase_reg(1),
      I4 => smpl_phase_reg(2),
      I5 => \smpl_data[13]_i_14_n_0\,
      O => \smpl_data[6]_i_7_n_0\
    );
\smpl_data[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABDFFB55550002"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(1),
      I3 => smpl_phase_reg(2),
      I4 => \smpl_data[13]_i_14_n_0\,
      I5 => smpl_phase_reg(0),
      O => \smpl_data[6]_i_8_n_0\
    );
\smpl_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[7]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[7]_i_3_n_0\,
      I5 => \smpl_data[7]_i_4_n_0\,
      O => \smpl_data[7]_i_1_n_0\
    );
\smpl_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[7]_i_5_n_0\,
      I1 => \smpl_data[7]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[7]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[7]_i_8_n_0\,
      O => \smpl_data[7]_i_2_n_0\
    );
\smpl_data[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_8,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[7]_i_3_n_0\
    );
\smpl_data[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(7),
      O => \smpl_data[7]_i_4_n_0\
    );
\smpl_data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD7DE8B8E8FDE782"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => smpl_phase_reg(2),
      I2 => \smpl_data[13]_i_12_n_0\,
      I3 => \smpl_data[13]_i_14_n_0\,
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[7]_i_5_n_0\
    );
\smpl_data[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8B5DB02274A3DB1"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => smpl_phase_reg(2),
      I3 => \smpl_data[13]_i_14_n_0\,
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[7]_i_6_n_0\
    );
\smpl_data[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23282AA85FD7D75D"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => smpl_phase_reg(1),
      I2 => smpl_phase_reg(2),
      I3 => \smpl_data[13]_i_14_n_0\,
      I4 => \smpl_data[13]_i_12_n_0\,
      I5 => smpl_phase_reg(0),
      O => \smpl_data[7]_i_7_n_0\
    );
\smpl_data[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAF0540AFAF5052"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => smpl_phase_reg(2),
      I2 => \smpl_data[13]_i_12_n_0\,
      I3 => \smpl_data[13]_i_14_n_0\,
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[7]_i_8_n_0\
    );
\smpl_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[8]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[8]_i_3_n_0\,
      I5 => \smpl_data[8]_i_4_n_0\,
      O => \smpl_data[8]_i_1_n_0\
    );
\smpl_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[8]_i_5_n_0\,
      I1 => \smpl_data[8]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[8]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[8]_i_8_n_0\,
      O => \smpl_data[8]_i_2_n_0\
    );
\smpl_data[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_7,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[8]_i_3_n_0\
    );
\smpl_data[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(8),
      O => \smpl_data[8]_i_4_n_0\
    );
\smpl_data[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A9A9FBDFDEDEC8A"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(2),
      O => \smpl_data[8]_i_5_n_0\
    );
\smpl_data[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F64CB9EE4E11FCA"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[8]_i_6_n_0\
    );
\smpl_data[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7D753A0A7F5DA0A0"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => smpl_phase_reg(2),
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => \smpl_data[13]_i_12_n_0\,
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[8]_i_7_n_0\
    );
\smpl_data[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE1101EEEA5511A8"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(2),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[8]_i_8_n_0\
    );
\smpl_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \smpl_data[9]_i_2_n_0\,
      I1 => \smpl_data[13]_i_3_n_0\,
      I2 => \smpl_data[13]_i_4_n_0\,
      I3 => \smpl_data[13]_i_5_n_0\,
      I4 => \smpl_data[9]_i_3_n_0\,
      I5 => \smpl_data[9]_i_4_n_0\,
      O => \smpl_data[9]_i_1_n_0\
    );
\smpl_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \smpl_data[9]_i_5_n_0\,
      I1 => \smpl_data[9]_i_6_n_0\,
      I2 => \smpl_data[14]_i_6_n_0\,
      I3 => \smpl_data[9]_i_7_n_0\,
      I4 => \smpl_data[14]_i_7_n_0\,
      I5 => \smpl_data[9]_i_8_n_0\,
      O => \smpl_data[9]_i_2_n_0\
    );
\smpl_data[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => smpl_phase_reg_reg_rep_n_6,
      I1 => smpl_phase_reg(9),
      I2 => smpl_phase_reg(8),
      O => \smpl_data[9]_i_3_n_0\
    );
\smpl_data[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => smpl_phase_reg(9),
      I1 => p_0_in1_in(9),
      O => \smpl_data[9]_i_4_n_0\
    );
\smpl_data[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ADAFADBEADBFAFAD"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(2),
      I4 => smpl_phase_reg(1),
      I5 => smpl_phase_reg(0),
      O => \smpl_data[9]_i_5_n_0\
    );
\smpl_data[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2C93632ED2D5312"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(2),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[9]_i_6_n_0\
    );
\smpl_data[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F28200A2835D7"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_14_n_0\,
      I2 => \smpl_data[13]_i_12_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(2),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[9]_i_7_n_0\
    );
\smpl_data[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01EF1F00FA51EF0"
    )
        port map (
      I0 => \smpl_data[14]_i_4_n_0\,
      I1 => \smpl_data[13]_i_12_n_0\,
      I2 => \smpl_data[13]_i_14_n_0\,
      I3 => smpl_phase_reg(0),
      I4 => smpl_phase_reg(2),
      I5 => smpl_phase_reg(1),
      O => \smpl_data[9]_i_8_n_0\
    );
\smpl_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[0]_i_1_n_0\,
      Q => smpl_data(0),
      R => rst
    );
\smpl_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[10]_i_1_n_0\,
      Q => smpl_data(10),
      R => rst
    );
\smpl_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[11]_i_1_n_0\,
      Q => smpl_data(11),
      R => rst
    );
\smpl_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[12]_i_1_n_0\,
      Q => smpl_data(12),
      R => rst
    );
\smpl_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[13]_i_1_n_0\,
      Q => smpl_data(13),
      R => rst
    );
\smpl_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[14]_i_1_n_0\,
      Q => smpl_data(14),
      R => rst
    );
\smpl_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[15]_i_1_n_0\,
      Q => \^smpl_data_reg[15]_0\(0),
      R => rst
    );
\smpl_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[1]_i_1_n_0\,
      Q => smpl_data(1),
      R => rst
    );
\smpl_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[2]_i_1_n_0\,
      Q => smpl_data(2),
      R => rst
    );
\smpl_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[3]_i_1_n_0\,
      Q => smpl_data(3),
      R => rst
    );
\smpl_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[4]_i_1_n_0\,
      Q => smpl_data(4),
      R => rst
    );
\smpl_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[5]_i_1_n_0\,
      Q => smpl_data(5),
      R => rst
    );
\smpl_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[6]_i_1_n_0\,
      Q => smpl_data(6),
      R => rst
    );
\smpl_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[7]_i_1_n_0\,
      Q => smpl_data(7),
      R => rst
    );
\smpl_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[8]_i_1_n_0\,
      Q => smpl_data(8),
      R => rst
    );
\smpl_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \smpl_data[9]_i_1_n_0\,
      Q => smpl_data(9),
      R => rst
    );
\smpl_phase_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(0),
      Q => smpl_phase_reg(0),
      R => '0'
    );
\smpl_phase_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(1),
      Q => smpl_phase_reg(1),
      R => '0'
    );
\smpl_phase_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(2),
      Q => smpl_phase_reg(2),
      R => '0'
    );
\smpl_phase_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(3),
      Q => smpl_phase_reg(3),
      R => '0'
    );
\smpl_phase_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(4),
      Q => smpl_phase_reg(4),
      R => '0'
    );
\smpl_phase_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(5),
      Q => smpl_phase_reg(5),
      R => '0'
    );
\smpl_phase_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(6),
      Q => smpl_phase_reg(6),
      R => '0'
    );
\smpl_phase_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(7),
      Q => smpl_phase_reg(7),
      R => '0'
    );
\smpl_phase_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(8),
      Q => smpl_phase_reg(8),
      R => '0'
    );
\smpl_phase_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => Q(9),
      Q => smpl_phase_reg(9),
      R => '0'
    );
smpl_phase_reg_reg_rep: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0BC40AFB0A33096A08A207D907110648057F04B603ED0324025B019200C90000",
      INIT_01 => X"1833176E16A815E2151C1455138F12C81201113A10720FAB0EE30E1C0D540C8C",
      INIT_02 => X"246723A622E522232161209F1FDD1F1A1E571D931CCF1C0B1B471A8219BE18F9",
      INIT_03 => X"30412F872ECC2E112D552C992BDC2B1F2A6129A328E52826276726A825E82528",
      INIT_04 => X"3BA53AF23A40398C38D93824376F36BA3604354D349633DF3326326E31B530FB",
      INIT_05 => X"467545CD4524447A43D04325427A41CE412140733FC53F173E683DB83D073C56",
      INIT_06 => X"50974FFB4F5D4EBF4E204D814CE04C3F4B9D4AFB4A5849B4490F486947C3471C",
      INIT_07 => X"59F3596458D3584257B0571D568A55F5556054C95432539B5302526851CE5133",
      INIT_08 => X"627161F0616E60EB60685FE35F5D5ED75E4F5DC75D3E5CB35C285B9C5B0F5A82",
      INIT_09 => X"69FD698B691968A6683267BC674666CF665665DD656364E8646C63EE637062F1",
      INIT_0A => X"708370226FC16F5E6EFB6E966E306DC96D616CF86C8E6C236BB76B4A6ADC6A6D",
      INIT_0B => X"75F375A57555750474B2745F740A73B5735E730772AE725471F9719D714070E2",
      INIT_0C => X"7A417A0579C87989794A790978C77884783F77FA77B3776B772276D8768D7641",
      INIT_0D => X"7D627D397D0E7CE37CB67C887C597C297BF87BC57B917B5C7B267AEE7AB67A7C",
      INIT_0E => X"7F4D7F377F217F097EEF7ED57EB97E9C7E7E7E5F7E3E7E1D7DFA7DD57DB07D89",
      INIT_0F => X"7FFE7FFD7FF97FF57FF07FE97FE17FD87FCD7FC17FB47FA67F977F867F747F61",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000007FFF",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12 downto 4) => Q(8 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15) => smpl_phase_reg_reg_rep_n_0,
      DOADO(14) => smpl_phase_reg_reg_rep_n_1,
      DOADO(13) => smpl_phase_reg_reg_rep_n_2,
      DOADO(12) => smpl_phase_reg_reg_rep_n_3,
      DOADO(11) => smpl_phase_reg_reg_rep_n_4,
      DOADO(10) => smpl_phase_reg_reg_rep_n_5,
      DOADO(9) => smpl_phase_reg_reg_rep_n_6,
      DOADO(8) => smpl_phase_reg_reg_rep_n_7,
      DOADO(7) => smpl_phase_reg_reg_rep_n_8,
      DOADO(6) => smpl_phase_reg_reg_rep_n_9,
      DOADO(5) => smpl_phase_reg_reg_rep_n_10,
      DOADO(4) => smpl_phase_reg_reg_rep_n_11,
      DOADO(3) => smpl_phase_reg_reg_rep_n_12,
      DOADO(2) => smpl_phase_reg_reg_rep_n_13,
      DOADO(1) => smpl_phase_reg_reg_rep_n_14,
      DOADO(0) => smpl_phase_reg_reg_rep_n_15,
      DOBDO(15 downto 0) => NLW_smpl_phase_reg_reg_rep_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_smpl_phase_reg_reg_rep_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_smpl_phase_reg_reg_rep_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \^e\(0),
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transceiver is
  port (
    jc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_lrc_reg_0 : out STD_LOGIC;
    rx_lrc_reg_0 : out STD_LOGIC;
    data_tx_right_rdy_pulse_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_tx_left_rdy_pulse_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    do_sine_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    do_sine_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_rx_l_clk_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_rx_l_clk_reg[23]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    i2s_recdat : in STD_LOGIC;
    do_sine : in STD_LOGIC;
    \data_tx_r_clk_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \data_tx_l_clk_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transceiver : entity is "I2S_Transceiver";
end I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transceiver;

architecture STRUCTURE of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transceiver is
  signal I2S_RX_n_0 : STD_LOGIC;
  signal I2S_RX_n_2 : STD_LOGIC;
  signal I2S_RX_n_3 : STD_LOGIC;
  signal I2S_TX_n_10 : STD_LOGIC;
  signal I2S_TX_n_11 : STD_LOGIC;
  signal I2S_TX_n_12 : STD_LOGIC;
  signal I2S_TX_n_13 : STD_LOGIC;
  signal I2S_TX_n_14 : STD_LOGIC;
  signal I2S_TX_n_15 : STD_LOGIC;
  signal I2S_TX_n_16 : STD_LOGIC;
  signal I2S_TX_n_17 : STD_LOGIC;
  signal I2S_TX_n_18 : STD_LOGIC;
  signal I2S_TX_n_19 : STD_LOGIC;
  signal I2S_TX_n_2 : STD_LOGIC;
  signal I2S_TX_n_20 : STD_LOGIC;
  signal I2S_TX_n_21 : STD_LOGIC;
  signal I2S_TX_n_22 : STD_LOGIC;
  signal I2S_TX_n_23 : STD_LOGIC;
  signal I2S_TX_n_24 : STD_LOGIC;
  signal I2S_TX_n_25 : STD_LOGIC;
  signal I2S_TX_n_26 : STD_LOGIC;
  signal I2S_TX_n_27 : STD_LOGIC;
  signal I2S_TX_n_3 : STD_LOGIC;
  signal I2S_TX_n_4 : STD_LOGIC;
  signal I2S_TX_n_5 : STD_LOGIC;
  signal I2S_TX_n_6 : STD_LOGIC;
  signal I2S_TX_n_7 : STD_LOGIC;
  signal I2S_TX_n_8 : STD_LOGIC;
  signal I2S_TX_n_9 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__1_n_0\ : STD_LOGIC;
  signal data_i_rdy_pulse : STD_LOGIC;
  signal data_in : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \data_in_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[9]\ : STD_LOGIC;
  signal data_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data_rx_l_bclk : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data_rx_l_clk : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_rx_l_clk0 : STD_LOGIC;
  signal data_rx_l_rdy_bclk : STD_LOGIC;
  signal \data_rx_l_rdy_clk_reg[0]__0\ : STD_LOGIC;
  signal \data_rx_l_rdy_clk_reg[2]__0\ : STD_LOGIC;
  signal \data_rx_l_rdy_clk_reg_n_0_[1]\ : STD_LOGIC;
  signal data_rx_r_bclk : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data_rx_r_bclk_0 : STD_LOGIC;
  signal data_rx_r_clk : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_rx_r_clk0 : STD_LOGIC;
  signal data_rx_r_rdy_bclk : STD_LOGIC;
  signal \data_rx_r_rdy_clk_reg[0]__0\ : STD_LOGIC;
  signal \data_rx_r_rdy_clk_reg[2]__0\ : STD_LOGIC;
  signal \data_rx_r_rdy_clk_reg_n_0_[1]\ : STD_LOGIC;
  signal data_tx_l_bclk : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data_tx_l_bclk_2 : STD_LOGIC;
  signal data_tx_l_clk : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \data_tx_l_clk[23]_i_1_n_0\ : STD_LOGIC;
  signal data_tx_l_rqst_bclk : STD_LOGIC;
  signal \data_tx_l_rqst_clk_reg[0]__0\ : STD_LOGIC;
  signal \data_tx_l_rqst_clk_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_tx_l_wen_bclk_reg[0]__0\ : STD_LOGIC;
  signal \data_tx_l_wen_bclk_reg[1]__0\ : STD_LOGIC;
  signal data_tx_l_wen_clk : STD_LOGIC;
  signal data_tx_left_rdy_pulse : STD_LOGIC;
  signal data_tx_left_rdy_pulse0 : STD_LOGIC;
  signal data_tx_r_bclk : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data_tx_r_bclk_1 : STD_LOGIC;
  signal data_tx_r_clk : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \data_tx_r_clk[23]_i_1_n_0\ : STD_LOGIC;
  signal data_tx_r_rqst_bclk : STD_LOGIC;
  signal \data_tx_r_rqst_clk_reg[0]__0\ : STD_LOGIC;
  signal \data_tx_r_rqst_clk_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_tx_r_wen_bclk_reg[0]__0\ : STD_LOGIC;
  signal \data_tx_r_wen_bclk_reg[1]__0\ : STD_LOGIC;
  signal data_tx_r_wen_clk : STD_LOGIC;
  signal data_tx_right_rdy_pulse : STD_LOGIC;
  signal data_tx_right_rdy_pulse0 : STD_LOGIC;
  signal \^jc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_lrc_i_1_n_0 : STD_LOGIC;
  signal \^rx_lrc_reg_0\ : STD_LOGIC;
  signal tx_lrc_i_1_n_0 : STD_LOGIC;
  signal \^tx_lrc_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cnt[4]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_tx_left[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_tx_left[23]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_tx_left[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_tx_left[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_tx_left[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_tx_left[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_tx_left[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_tx_left[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_tx_left[7]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_tx_right[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_tx_right[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_tx_right[23]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_tx_right[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_tx_right[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_tx_right[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_tx_right[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_tx_right[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_tx_right[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_tx_right[7]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \smpl_phase[9]_i_1\ : label is "soft_lutpair31";
begin
  jc(1 downto 0) <= \^jc\(1 downto 0);
  rx_lrc_reg_0 <= \^rx_lrc_reg_0\;
  tx_lrc_reg_0 <= \^tx_lrc_reg_0\;
I2S_RX: entity work.I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Receiver
     port map (
      E(0) => I2S_RX_n_0,
      Q(23 downto 0) => data_out(23 downto 0),
      data_rx_l_rdy_bclk => data_rx_l_rdy_bclk,
      data_rx_r_rdy_bclk => data_rx_r_rdy_bclk,
      \data_store_reg_reg[23]_0\ => \^jc\(1),
      i2s_recdat => i2s_recdat,
      i2s_rx_lrc_d1_reg_0 => I2S_RX_n_2,
      i2s_rx_lrc_d1_reg_1 => I2S_RX_n_3,
      i2s_rx_lrc_d1_reg_2 => \^rx_lrc_reg_0\,
      lrc_pulse_reg_0(0) => data_rx_r_bclk_0,
      rst => rst
    );
I2S_TX: entity work.I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transmitter
     port map (
      D(23) => I2S_TX_n_4,
      D(22) => I2S_TX_n_5,
      D(21) => I2S_TX_n_6,
      D(20) => I2S_TX_n_7,
      D(19) => I2S_TX_n_8,
      D(18) => I2S_TX_n_9,
      D(17) => I2S_TX_n_10,
      D(16) => I2S_TX_n_11,
      D(15) => I2S_TX_n_12,
      D(14) => I2S_TX_n_13,
      D(13) => I2S_TX_n_14,
      D(12) => I2S_TX_n_15,
      D(11) => I2S_TX_n_16,
      D(10) => I2S_TX_n_17,
      D(9) => I2S_TX_n_18,
      D(8) => I2S_TX_n_19,
      D(7) => I2S_TX_n_20,
      D(6) => I2S_TX_n_21,
      D(5) => I2S_TX_n_22,
      D(4) => I2S_TX_n_23,
      D(3) => I2S_TX_n_24,
      D(2) => I2S_TX_n_25,
      D(1) => I2S_TX_n_26,
      D(0) => I2S_TX_n_27,
      E(0) => data_i_rdy_pulse,
      Q(23) => data_in(23),
      Q(22) => \data_in_reg_n_0_[22]\,
      Q(21) => \data_in_reg_n_0_[21]\,
      Q(20) => \data_in_reg_n_0_[20]\,
      Q(19) => \data_in_reg_n_0_[19]\,
      Q(18) => \data_in_reg_n_0_[18]\,
      Q(17) => \data_in_reg_n_0_[17]\,
      Q(16) => \data_in_reg_n_0_[16]\,
      Q(15) => \data_in_reg_n_0_[15]\,
      Q(14) => \data_in_reg_n_0_[14]\,
      Q(13) => \data_in_reg_n_0_[13]\,
      Q(12) => \data_in_reg_n_0_[12]\,
      Q(11) => \data_in_reg_n_0_[11]\,
      Q(10) => \data_in_reg_n_0_[10]\,
      Q(9) => \data_in_reg_n_0_[9]\,
      Q(8) => \data_in_reg_n_0_[8]\,
      Q(7) => \data_in_reg_n_0_[7]\,
      Q(6) => \data_in_reg_n_0_[6]\,
      Q(5) => \data_in_reg_n_0_[5]\,
      Q(4) => \data_in_reg_n_0_[4]\,
      Q(3) => \data_in_reg_n_0_[3]\,
      Q(2) => \data_in_reg_n_0_[2]\,
      Q(1) => \data_in_reg_n_0_[1]\,
      Q(0) => \data_in_reg_n_0_[0]\,
      \cnt_reg[4]_0\ => \^jc\(1),
      \data_in_reg[23]\(23 downto 0) => data_tx_r_bclk(23 downto 0),
      \data_in_reg[23]_0\(23 downto 0) => data_tx_l_bclk(23 downto 0),
      data_tx_l_rqst_bclk => data_tx_l_rqst_bclk,
      \data_tx_l_wen_bclk_reg[1]\ => I2S_TX_n_2,
      \data_tx_l_wen_bclk_reg[1]__0\ => \data_tx_l_wen_bclk_reg[1]__0\,
      data_tx_r_rqst_bclk => data_tx_r_rqst_bclk,
      \data_tx_r_wen_bclk_reg[1]\ => I2S_TX_n_3,
      \data_tx_r_wen_bclk_reg[1]__0\ => \data_tx_r_wen_bclk_reg[1]__0\,
      i2s_tx_lrc_d1_reg_0 => \^tx_lrc_reg_0\,
      jc(0) => \^jc\(0),
      rst => rst
    );
bclk_div: entity work.I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Clock_Divider_PWM_Dynamic
     port map (
      clk_out_reg_0 => \^jc\(1),
      mclk => mclk,
      rst => rst
    );
\cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => \cnt[0]_i_1__1_n_0\
    );
\cnt[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF070"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(3),
      I2 => cnt(0),
      I3 => cnt(2),
      I4 => cnt(1),
      O => \cnt[1]_i_1__1_n_0\
    );
\cnt[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(2),
      I2 => cnt(1),
      O => \cnt[2]_i_1__1_n_0\
    );
\cnt[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC4C"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(3),
      I2 => cnt(0),
      I3 => cnt(2),
      I4 => cnt(1),
      O => \cnt[3]_i_1__1_n_0\
    );
\cnt[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAA2A"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(3),
      I2 => cnt(0),
      I3 => cnt(2),
      I4 => cnt(1),
      O => \cnt[4]_i_1__1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => \cnt[0]_i_1__1_n_0\,
      Q => cnt(0),
      R => rst
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => \cnt[1]_i_1__1_n_0\,
      Q => cnt(1),
      R => rst
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => \cnt[2]_i_1__1_n_0\,
      Q => cnt(2),
      R => rst
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => \cnt[3]_i_1__1_n_0\,
      Q => cnt(3),
      R => rst
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => \cnt[4]_i_1__1_n_0\,
      Q => cnt(4),
      R => rst
    );
\data_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_27,
      Q => \data_in_reg_n_0_[0]\,
      R => rst
    );
\data_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_17,
      Q => \data_in_reg_n_0_[10]\,
      R => rst
    );
\data_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_16,
      Q => \data_in_reg_n_0_[11]\,
      R => rst
    );
\data_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_15,
      Q => \data_in_reg_n_0_[12]\,
      R => rst
    );
\data_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_14,
      Q => \data_in_reg_n_0_[13]\,
      R => rst
    );
\data_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_13,
      Q => \data_in_reg_n_0_[14]\,
      R => rst
    );
\data_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_12,
      Q => \data_in_reg_n_0_[15]\,
      R => rst
    );
\data_in_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_11,
      Q => \data_in_reg_n_0_[16]\,
      R => rst
    );
\data_in_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_10,
      Q => \data_in_reg_n_0_[17]\,
      R => rst
    );
\data_in_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_9,
      Q => \data_in_reg_n_0_[18]\,
      R => rst
    );
\data_in_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_8,
      Q => \data_in_reg_n_0_[19]\,
      R => rst
    );
\data_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_26,
      Q => \data_in_reg_n_0_[1]\,
      R => rst
    );
\data_in_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_7,
      Q => \data_in_reg_n_0_[20]\,
      R => rst
    );
\data_in_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_6,
      Q => \data_in_reg_n_0_[21]\,
      R => rst
    );
\data_in_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_5,
      Q => \data_in_reg_n_0_[22]\,
      R => rst
    );
\data_in_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_4,
      Q => data_in(23),
      R => rst
    );
\data_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_25,
      Q => \data_in_reg_n_0_[2]\,
      R => rst
    );
\data_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_24,
      Q => \data_in_reg_n_0_[3]\,
      R => rst
    );
\data_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_23,
      Q => \data_in_reg_n_0_[4]\,
      R => rst
    );
\data_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_22,
      Q => \data_in_reg_n_0_[5]\,
      R => rst
    );
\data_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_21,
      Q => \data_in_reg_n_0_[6]\,
      R => rst
    );
\data_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_20,
      Q => \data_in_reg_n_0_[7]\,
      R => rst
    );
\data_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_19,
      Q => \data_in_reg_n_0_[8]\,
      R => rst
    );
\data_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^jc\(1),
      CE => data_i_rdy_pulse,
      D => I2S_TX_n_18,
      Q => \data_in_reg_n_0_[9]\,
      R => rst
    );
\data_rx_l_bclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(0),
      Q => data_rx_l_bclk(0),
      R => rst
    );
\data_rx_l_bclk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(10),
      Q => data_rx_l_bclk(10),
      R => rst
    );
\data_rx_l_bclk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(11),
      Q => data_rx_l_bclk(11),
      R => rst
    );
\data_rx_l_bclk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(12),
      Q => data_rx_l_bclk(12),
      R => rst
    );
\data_rx_l_bclk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(13),
      Q => data_rx_l_bclk(13),
      R => rst
    );
\data_rx_l_bclk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(14),
      Q => data_rx_l_bclk(14),
      R => rst
    );
\data_rx_l_bclk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(15),
      Q => data_rx_l_bclk(15),
      R => rst
    );
\data_rx_l_bclk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(16),
      Q => data_rx_l_bclk(16),
      R => rst
    );
\data_rx_l_bclk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(17),
      Q => data_rx_l_bclk(17),
      R => rst
    );
\data_rx_l_bclk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(18),
      Q => data_rx_l_bclk(18),
      R => rst
    );
\data_rx_l_bclk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(19),
      Q => data_rx_l_bclk(19),
      R => rst
    );
\data_rx_l_bclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(1),
      Q => data_rx_l_bclk(1),
      R => rst
    );
\data_rx_l_bclk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(20),
      Q => data_rx_l_bclk(20),
      R => rst
    );
\data_rx_l_bclk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(21),
      Q => data_rx_l_bclk(21),
      R => rst
    );
\data_rx_l_bclk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(22),
      Q => data_rx_l_bclk(22),
      R => rst
    );
\data_rx_l_bclk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(23),
      Q => data_rx_l_bclk(23),
      R => rst
    );
\data_rx_l_bclk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(2),
      Q => data_rx_l_bclk(2),
      R => rst
    );
\data_rx_l_bclk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(3),
      Q => data_rx_l_bclk(3),
      R => rst
    );
\data_rx_l_bclk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(4),
      Q => data_rx_l_bclk(4),
      R => rst
    );
\data_rx_l_bclk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(5),
      Q => data_rx_l_bclk(5),
      R => rst
    );
\data_rx_l_bclk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(6),
      Q => data_rx_l_bclk(6),
      R => rst
    );
\data_rx_l_bclk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(7),
      Q => data_rx_l_bclk(7),
      R => rst
    );
\data_rx_l_bclk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(8),
      Q => data_rx_l_bclk(8),
      R => rst
    );
\data_rx_l_bclk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => I2S_RX_n_0,
      D => data_out(9),
      Q => data_rx_l_bclk(9),
      R => rst
    );
\data_rx_l_clk[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_rx_l_rdy_clk_reg[2]__0\,
      I1 => \data_rx_l_rdy_clk_reg_n_0_[1]\,
      O => data_rx_l_clk0
    );
\data_rx_l_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(0),
      Q => data_rx_l_clk(0),
      R => rst
    );
\data_rx_l_clk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(10),
      Q => \data_rx_l_clk_reg[23]_0\(2),
      R => rst
    );
\data_rx_l_clk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(11),
      Q => \data_rx_l_clk_reg[23]_0\(3),
      R => rst
    );
\data_rx_l_clk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(12),
      Q => \data_rx_l_clk_reg[23]_0\(4),
      R => rst
    );
\data_rx_l_clk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(13),
      Q => \data_rx_l_clk_reg[23]_0\(5),
      R => rst
    );
\data_rx_l_clk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(14),
      Q => \data_rx_l_clk_reg[23]_0\(6),
      R => rst
    );
\data_rx_l_clk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(15),
      Q => \data_rx_l_clk_reg[23]_0\(7),
      R => rst
    );
\data_rx_l_clk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(16),
      Q => \data_rx_l_clk_reg[23]_0\(8),
      R => rst
    );
\data_rx_l_clk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(17),
      Q => \data_rx_l_clk_reg[23]_0\(9),
      R => rst
    );
\data_rx_l_clk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(18),
      Q => \data_rx_l_clk_reg[23]_0\(10),
      R => rst
    );
\data_rx_l_clk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(19),
      Q => \data_rx_l_clk_reg[23]_0\(11),
      R => rst
    );
\data_rx_l_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(1),
      Q => data_rx_l_clk(1),
      R => rst
    );
\data_rx_l_clk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(20),
      Q => \data_rx_l_clk_reg[23]_0\(12),
      R => rst
    );
\data_rx_l_clk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(21),
      Q => \data_rx_l_clk_reg[23]_0\(13),
      R => rst
    );
\data_rx_l_clk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(22),
      Q => \data_rx_l_clk_reg[23]_0\(14),
      R => rst
    );
\data_rx_l_clk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(23),
      Q => \data_rx_l_clk_reg[23]_0\(15),
      R => rst
    );
\data_rx_l_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(2),
      Q => data_rx_l_clk(2),
      R => rst
    );
\data_rx_l_clk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(3),
      Q => data_rx_l_clk(3),
      R => rst
    );
\data_rx_l_clk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(4),
      Q => data_rx_l_clk(4),
      R => rst
    );
\data_rx_l_clk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(5),
      Q => data_rx_l_clk(5),
      R => rst
    );
\data_rx_l_clk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(6),
      Q => data_rx_l_clk(6),
      R => rst
    );
\data_rx_l_clk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(7),
      Q => data_rx_l_clk(7),
      R => rst
    );
\data_rx_l_clk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(8),
      Q => \data_rx_l_clk_reg[23]_0\(0),
      R => rst
    );
\data_rx_l_clk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_l_clk0,
      D => data_rx_l_bclk(9),
      Q => \data_rx_l_clk_reg[23]_0\(1),
      R => rst
    );
data_rx_l_rdy_bclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => I2S_RX_n_2,
      Q => data_rx_l_rdy_bclk,
      R => rst
    );
\data_rx_l_rdy_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_rx_l_rdy_bclk,
      Q => \data_rx_l_rdy_clk_reg[0]__0\,
      R => rst
    );
\data_rx_l_rdy_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_rx_l_rdy_clk_reg[0]__0\,
      Q => \data_rx_l_rdy_clk_reg_n_0_[1]\,
      R => rst
    );
\data_rx_l_rdy_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_rx_l_rdy_clk_reg_n_0_[1]\,
      Q => \data_rx_l_rdy_clk_reg[2]__0\,
      R => rst
    );
\data_rx_r_bclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(0),
      Q => data_rx_r_bclk(0),
      R => rst
    );
\data_rx_r_bclk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(10),
      Q => data_rx_r_bclk(10),
      R => rst
    );
\data_rx_r_bclk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(11),
      Q => data_rx_r_bclk(11),
      R => rst
    );
\data_rx_r_bclk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(12),
      Q => data_rx_r_bclk(12),
      R => rst
    );
\data_rx_r_bclk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(13),
      Q => data_rx_r_bclk(13),
      R => rst
    );
\data_rx_r_bclk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(14),
      Q => data_rx_r_bclk(14),
      R => rst
    );
\data_rx_r_bclk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(15),
      Q => data_rx_r_bclk(15),
      R => rst
    );
\data_rx_r_bclk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(16),
      Q => data_rx_r_bclk(16),
      R => rst
    );
\data_rx_r_bclk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(17),
      Q => data_rx_r_bclk(17),
      R => rst
    );
\data_rx_r_bclk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(18),
      Q => data_rx_r_bclk(18),
      R => rst
    );
\data_rx_r_bclk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(19),
      Q => data_rx_r_bclk(19),
      R => rst
    );
\data_rx_r_bclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(1),
      Q => data_rx_r_bclk(1),
      R => rst
    );
\data_rx_r_bclk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(20),
      Q => data_rx_r_bclk(20),
      R => rst
    );
\data_rx_r_bclk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(21),
      Q => data_rx_r_bclk(21),
      R => rst
    );
\data_rx_r_bclk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(22),
      Q => data_rx_r_bclk(22),
      R => rst
    );
\data_rx_r_bclk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(23),
      Q => data_rx_r_bclk(23),
      R => rst
    );
\data_rx_r_bclk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(2),
      Q => data_rx_r_bclk(2),
      R => rst
    );
\data_rx_r_bclk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(3),
      Q => data_rx_r_bclk(3),
      R => rst
    );
\data_rx_r_bclk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(4),
      Q => data_rx_r_bclk(4),
      R => rst
    );
\data_rx_r_bclk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(5),
      Q => data_rx_r_bclk(5),
      R => rst
    );
\data_rx_r_bclk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(6),
      Q => data_rx_r_bclk(6),
      R => rst
    );
\data_rx_r_bclk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(7),
      Q => data_rx_r_bclk(7),
      R => rst
    );
\data_rx_r_bclk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(8),
      Q => data_rx_r_bclk(8),
      R => rst
    );
\data_rx_r_bclk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_rx_r_bclk_0,
      D => data_out(9),
      Q => data_rx_r_bclk(9),
      R => rst
    );
\data_rx_r_clk[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_rx_r_rdy_clk_reg[2]__0\,
      I1 => \data_rx_r_rdy_clk_reg_n_0_[1]\,
      O => data_rx_r_clk0
    );
\data_rx_r_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(0),
      Q => data_rx_r_clk(0),
      R => rst
    );
\data_rx_r_clk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(10),
      Q => Q(2),
      R => rst
    );
\data_rx_r_clk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(11),
      Q => Q(3),
      R => rst
    );
\data_rx_r_clk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(12),
      Q => Q(4),
      R => rst
    );
\data_rx_r_clk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(13),
      Q => Q(5),
      R => rst
    );
\data_rx_r_clk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(14),
      Q => Q(6),
      R => rst
    );
\data_rx_r_clk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(15),
      Q => Q(7),
      R => rst
    );
\data_rx_r_clk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(16),
      Q => Q(8),
      R => rst
    );
\data_rx_r_clk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(17),
      Q => Q(9),
      R => rst
    );
\data_rx_r_clk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(18),
      Q => Q(10),
      R => rst
    );
\data_rx_r_clk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(19),
      Q => Q(11),
      R => rst
    );
\data_rx_r_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(1),
      Q => data_rx_r_clk(1),
      R => rst
    );
\data_rx_r_clk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(20),
      Q => Q(12),
      R => rst
    );
\data_rx_r_clk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(21),
      Q => Q(13),
      R => rst
    );
\data_rx_r_clk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(22),
      Q => Q(14),
      R => rst
    );
\data_rx_r_clk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(23),
      Q => Q(15),
      R => rst
    );
\data_rx_r_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(2),
      Q => data_rx_r_clk(2),
      R => rst
    );
\data_rx_r_clk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(3),
      Q => data_rx_r_clk(3),
      R => rst
    );
\data_rx_r_clk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(4),
      Q => data_rx_r_clk(4),
      R => rst
    );
\data_rx_r_clk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(5),
      Q => data_rx_r_clk(5),
      R => rst
    );
\data_rx_r_clk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(6),
      Q => data_rx_r_clk(6),
      R => rst
    );
\data_rx_r_clk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(7),
      Q => data_rx_r_clk(7),
      R => rst
    );
\data_rx_r_clk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(8),
      Q => Q(0),
      R => rst
    );
\data_rx_r_clk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_rx_r_clk0,
      D => data_rx_r_bclk(9),
      Q => Q(1),
      R => rst
    );
data_rx_r_rdy_bclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => I2S_RX_n_3,
      Q => data_rx_r_rdy_bclk,
      R => rst
    );
\data_rx_r_rdy_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_rx_r_rdy_bclk,
      Q => \data_rx_r_rdy_clk_reg[0]__0\,
      R => rst
    );
\data_rx_r_rdy_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_rx_r_rdy_clk_reg[0]__0\,
      Q => \data_rx_r_rdy_clk_reg_n_0_[1]\,
      R => rst
    );
\data_rx_r_rdy_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_rx_r_rdy_clk_reg_n_0_[1]\,
      Q => \data_rx_r_rdy_clk_reg[2]__0\,
      R => rst
    );
\data_tx_l_bclk[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_tx_l_wen_bclk_reg[1]__0\,
      I1 => rst,
      O => data_tx_l_bclk_2
    );
\data_tx_l_bclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(0),
      Q => data_tx_l_bclk(0),
      R => '0'
    );
\data_tx_l_bclk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(10),
      Q => data_tx_l_bclk(10),
      R => '0'
    );
\data_tx_l_bclk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(11),
      Q => data_tx_l_bclk(11),
      R => '0'
    );
\data_tx_l_bclk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(12),
      Q => data_tx_l_bclk(12),
      R => '0'
    );
\data_tx_l_bclk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(13),
      Q => data_tx_l_bclk(13),
      R => '0'
    );
\data_tx_l_bclk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(14),
      Q => data_tx_l_bclk(14),
      R => '0'
    );
\data_tx_l_bclk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(15),
      Q => data_tx_l_bclk(15),
      R => '0'
    );
\data_tx_l_bclk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(16),
      Q => data_tx_l_bclk(16),
      R => '0'
    );
\data_tx_l_bclk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(17),
      Q => data_tx_l_bclk(17),
      R => '0'
    );
\data_tx_l_bclk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(18),
      Q => data_tx_l_bclk(18),
      R => '0'
    );
\data_tx_l_bclk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(19),
      Q => data_tx_l_bclk(19),
      R => '0'
    );
\data_tx_l_bclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(1),
      Q => data_tx_l_bclk(1),
      R => '0'
    );
\data_tx_l_bclk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(20),
      Q => data_tx_l_bclk(20),
      R => '0'
    );
\data_tx_l_bclk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(21),
      Q => data_tx_l_bclk(21),
      R => '0'
    );
\data_tx_l_bclk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(22),
      Q => data_tx_l_bclk(22),
      R => '0'
    );
\data_tx_l_bclk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(23),
      Q => data_tx_l_bclk(23),
      R => '0'
    );
\data_tx_l_bclk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(2),
      Q => data_tx_l_bclk(2),
      R => '0'
    );
\data_tx_l_bclk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(3),
      Q => data_tx_l_bclk(3),
      R => '0'
    );
\data_tx_l_bclk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(4),
      Q => data_tx_l_bclk(4),
      R => '0'
    );
\data_tx_l_bclk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(5),
      Q => data_tx_l_bclk(5),
      R => '0'
    );
\data_tx_l_bclk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(6),
      Q => data_tx_l_bclk(6),
      R => '0'
    );
\data_tx_l_bclk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(7),
      Q => data_tx_l_bclk(7),
      R => '0'
    );
\data_tx_l_bclk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(8),
      Q => data_tx_l_bclk(8),
      R => '0'
    );
\data_tx_l_bclk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_l_bclk_2,
      D => data_tx_l_clk(9),
      Q => data_tx_l_bclk(9),
      R => '0'
    );
\data_tx_l_clk[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_tx_l_rqst_clk_reg_n_0_[1]\,
      O => \data_tx_l_clk[23]_i_1_n_0\
    );
\data_tx_l_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(0),
      Q => data_tx_l_clk(0),
      R => rst
    );
\data_tx_l_clk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(10),
      Q => data_tx_l_clk(10),
      R => rst
    );
\data_tx_l_clk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(11),
      Q => data_tx_l_clk(11),
      R => rst
    );
\data_tx_l_clk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(12),
      Q => data_tx_l_clk(12),
      R => rst
    );
\data_tx_l_clk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(13),
      Q => data_tx_l_clk(13),
      R => rst
    );
\data_tx_l_clk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(14),
      Q => data_tx_l_clk(14),
      R => rst
    );
\data_tx_l_clk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(15),
      Q => data_tx_l_clk(15),
      R => rst
    );
\data_tx_l_clk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(16),
      Q => data_tx_l_clk(16),
      R => rst
    );
\data_tx_l_clk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(17),
      Q => data_tx_l_clk(17),
      R => rst
    );
\data_tx_l_clk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(18),
      Q => data_tx_l_clk(18),
      R => rst
    );
\data_tx_l_clk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(19),
      Q => data_tx_l_clk(19),
      R => rst
    );
\data_tx_l_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(1),
      Q => data_tx_l_clk(1),
      R => rst
    );
\data_tx_l_clk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(20),
      Q => data_tx_l_clk(20),
      R => rst
    );
\data_tx_l_clk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(21),
      Q => data_tx_l_clk(21),
      R => rst
    );
\data_tx_l_clk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(22),
      Q => data_tx_l_clk(22),
      R => rst
    );
\data_tx_l_clk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(23),
      Q => data_tx_l_clk(23),
      R => rst
    );
\data_tx_l_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(2),
      Q => data_tx_l_clk(2),
      R => rst
    );
\data_tx_l_clk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(3),
      Q => data_tx_l_clk(3),
      R => rst
    );
\data_tx_l_clk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(4),
      Q => data_tx_l_clk(4),
      R => rst
    );
\data_tx_l_clk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(5),
      Q => data_tx_l_clk(5),
      R => rst
    );
\data_tx_l_clk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(6),
      Q => data_tx_l_clk(6),
      R => rst
    );
\data_tx_l_clk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(7),
      Q => data_tx_l_clk(7),
      R => rst
    );
\data_tx_l_clk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(8),
      Q => data_tx_l_clk(8),
      R => rst
    );
\data_tx_l_clk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_l_clk[23]_i_1_n_0\,
      D => \data_tx_l_clk_reg[23]_0\(9),
      Q => data_tx_l_clk(9),
      R => rst
    );
data_tx_l_rqst_bclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => I2S_TX_n_2,
      Q => data_tx_l_rqst_bclk,
      R => '0'
    );
\data_tx_l_rqst_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_tx_l_rqst_bclk,
      Q => \data_tx_l_rqst_clk_reg[0]__0\,
      R => rst
    );
\data_tx_l_rqst_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_tx_l_rqst_clk_reg[0]__0\,
      Q => \data_tx_l_rqst_clk_reg_n_0_[1]\,
      R => rst
    );
\data_tx_l_wen_bclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => data_tx_l_wen_clk,
      Q => \data_tx_l_wen_bclk_reg[0]__0\,
      R => rst
    );
\data_tx_l_wen_bclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => \data_tx_l_wen_bclk_reg[0]__0\,
      Q => \data_tx_l_wen_bclk_reg[1]__0\,
      R => rst
    );
data_tx_l_wen_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_tx_l_rqst_clk_reg_n_0_[1]\,
      Q => data_tx_l_wen_clk,
      R => rst
    );
\data_tx_left[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_l_clk(0),
      I1 => do_sine,
      O => \data_rx_l_clk_reg[7]_0\(0)
    );
\data_tx_left[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_l_clk(1),
      I1 => do_sine,
      O => \data_rx_l_clk_reg[7]_0\(1)
    );
\data_tx_left[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_tx_left_rdy_pulse,
      I1 => do_sine,
      O => data_tx_left_rdy_pulse_reg_0(0)
    );
\data_tx_left[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_l_clk(2),
      I1 => do_sine,
      O => \data_rx_l_clk_reg[7]_0\(2)
    );
\data_tx_left[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_l_clk(3),
      I1 => do_sine,
      O => \data_rx_l_clk_reg[7]_0\(3)
    );
\data_tx_left[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_l_clk(4),
      I1 => do_sine,
      O => \data_rx_l_clk_reg[7]_0\(4)
    );
\data_tx_left[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_l_clk(5),
      I1 => do_sine,
      O => \data_rx_l_clk_reg[7]_0\(5)
    );
\data_tx_left[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_l_clk(6),
      I1 => do_sine,
      O => \data_rx_l_clk_reg[7]_0\(6)
    );
\data_tx_left[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data_tx_left_rdy_pulse,
      I1 => do_sine,
      I2 => rst,
      O => SR(0)
    );
\data_tx_left[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_l_clk(7),
      I1 => do_sine,
      O => \data_rx_l_clk_reg[7]_0\(7)
    );
data_tx_left_rdy_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_tx_l_wen_clk,
      I1 => \data_tx_l_rqst_clk_reg_n_0_[1]\,
      O => data_tx_left_rdy_pulse0
    );
data_tx_left_rdy_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => data_tx_left_rdy_pulse0,
      Q => data_tx_left_rdy_pulse,
      R => '0'
    );
\data_tx_r_bclk[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_tx_r_wen_bclk_reg[1]__0\,
      I1 => rst,
      O => data_tx_r_bclk_1
    );
\data_tx_r_bclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(0),
      Q => data_tx_r_bclk(0),
      R => '0'
    );
\data_tx_r_bclk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(10),
      Q => data_tx_r_bclk(10),
      R => '0'
    );
\data_tx_r_bclk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(11),
      Q => data_tx_r_bclk(11),
      R => '0'
    );
\data_tx_r_bclk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(12),
      Q => data_tx_r_bclk(12),
      R => '0'
    );
\data_tx_r_bclk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(13),
      Q => data_tx_r_bclk(13),
      R => '0'
    );
\data_tx_r_bclk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(14),
      Q => data_tx_r_bclk(14),
      R => '0'
    );
\data_tx_r_bclk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(15),
      Q => data_tx_r_bclk(15),
      R => '0'
    );
\data_tx_r_bclk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(16),
      Q => data_tx_r_bclk(16),
      R => '0'
    );
\data_tx_r_bclk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(17),
      Q => data_tx_r_bclk(17),
      R => '0'
    );
\data_tx_r_bclk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(18),
      Q => data_tx_r_bclk(18),
      R => '0'
    );
\data_tx_r_bclk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(19),
      Q => data_tx_r_bclk(19),
      R => '0'
    );
\data_tx_r_bclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(1),
      Q => data_tx_r_bclk(1),
      R => '0'
    );
\data_tx_r_bclk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(20),
      Q => data_tx_r_bclk(20),
      R => '0'
    );
\data_tx_r_bclk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(21),
      Q => data_tx_r_bclk(21),
      R => '0'
    );
\data_tx_r_bclk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(22),
      Q => data_tx_r_bclk(22),
      R => '0'
    );
\data_tx_r_bclk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(23),
      Q => data_tx_r_bclk(23),
      R => '0'
    );
\data_tx_r_bclk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(2),
      Q => data_tx_r_bclk(2),
      R => '0'
    );
\data_tx_r_bclk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(3),
      Q => data_tx_r_bclk(3),
      R => '0'
    );
\data_tx_r_bclk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(4),
      Q => data_tx_r_bclk(4),
      R => '0'
    );
\data_tx_r_bclk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(5),
      Q => data_tx_r_bclk(5),
      R => '0'
    );
\data_tx_r_bclk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(6),
      Q => data_tx_r_bclk(6),
      R => '0'
    );
\data_tx_r_bclk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(7),
      Q => data_tx_r_bclk(7),
      R => '0'
    );
\data_tx_r_bclk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(8),
      Q => data_tx_r_bclk(8),
      R => '0'
    );
\data_tx_r_bclk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => data_tx_r_bclk_1,
      D => data_tx_r_clk(9),
      Q => data_tx_r_bclk(9),
      R => '0'
    );
\data_tx_r_clk[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_tx_r_rqst_clk_reg_n_0_[1]\,
      O => \data_tx_r_clk[23]_i_1_n_0\
    );
\data_tx_r_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(0),
      Q => data_tx_r_clk(0),
      R => rst
    );
\data_tx_r_clk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(10),
      Q => data_tx_r_clk(10),
      R => rst
    );
\data_tx_r_clk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(11),
      Q => data_tx_r_clk(11),
      R => rst
    );
\data_tx_r_clk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(12),
      Q => data_tx_r_clk(12),
      R => rst
    );
\data_tx_r_clk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(13),
      Q => data_tx_r_clk(13),
      R => rst
    );
\data_tx_r_clk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(14),
      Q => data_tx_r_clk(14),
      R => rst
    );
\data_tx_r_clk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(15),
      Q => data_tx_r_clk(15),
      R => rst
    );
\data_tx_r_clk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(16),
      Q => data_tx_r_clk(16),
      R => rst
    );
\data_tx_r_clk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(17),
      Q => data_tx_r_clk(17),
      R => rst
    );
\data_tx_r_clk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(18),
      Q => data_tx_r_clk(18),
      R => rst
    );
\data_tx_r_clk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(19),
      Q => data_tx_r_clk(19),
      R => rst
    );
\data_tx_r_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(1),
      Q => data_tx_r_clk(1),
      R => rst
    );
\data_tx_r_clk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(20),
      Q => data_tx_r_clk(20),
      R => rst
    );
\data_tx_r_clk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(21),
      Q => data_tx_r_clk(21),
      R => rst
    );
\data_tx_r_clk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(22),
      Q => data_tx_r_clk(22),
      R => rst
    );
\data_tx_r_clk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(23),
      Q => data_tx_r_clk(23),
      R => rst
    );
\data_tx_r_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(2),
      Q => data_tx_r_clk(2),
      R => rst
    );
\data_tx_r_clk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(3),
      Q => data_tx_r_clk(3),
      R => rst
    );
\data_tx_r_clk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(4),
      Q => data_tx_r_clk(4),
      R => rst
    );
\data_tx_r_clk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(5),
      Q => data_tx_r_clk(5),
      R => rst
    );
\data_tx_r_clk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(6),
      Q => data_tx_r_clk(6),
      R => rst
    );
\data_tx_r_clk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(7),
      Q => data_tx_r_clk(7),
      R => rst
    );
\data_tx_r_clk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(8),
      Q => data_tx_r_clk(8),
      R => rst
    );
\data_tx_r_clk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_tx_r_clk[23]_i_1_n_0\,
      D => \data_tx_r_clk_reg[23]_0\(9),
      Q => data_tx_r_clk(9),
      R => rst
    );
data_tx_r_rqst_bclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => I2S_TX_n_3,
      Q => data_tx_r_rqst_bclk,
      R => '0'
    );
\data_tx_r_rqst_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_tx_r_rqst_bclk,
      Q => \data_tx_r_rqst_clk_reg[0]__0\,
      R => rst
    );
\data_tx_r_rqst_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_tx_r_rqst_clk_reg[0]__0\,
      Q => \data_tx_r_rqst_clk_reg_n_0_[1]\,
      R => rst
    );
\data_tx_r_wen_bclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => data_tx_r_wen_clk,
      Q => \data_tx_r_wen_bclk_reg[0]__0\,
      R => rst
    );
\data_tx_r_wen_bclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => \data_tx_r_wen_bclk_reg[0]__0\,
      Q => \data_tx_r_wen_bclk_reg[1]__0\,
      R => rst
    );
data_tx_r_wen_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_tx_r_rqst_clk_reg_n_0_[1]\,
      Q => data_tx_r_wen_clk,
      R => rst
    );
\data_tx_right[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_r_clk(0),
      I1 => do_sine,
      O => D(0)
    );
\data_tx_right[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_r_clk(1),
      I1 => do_sine,
      O => D(1)
    );
\data_tx_right[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_tx_right_rdy_pulse,
      I1 => do_sine,
      O => data_tx_right_rdy_pulse_reg_0(0)
    );
\data_tx_right[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_r_clk(2),
      I1 => do_sine,
      O => D(2)
    );
\data_tx_right[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_r_clk(3),
      I1 => do_sine,
      O => D(3)
    );
\data_tx_right[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_r_clk(4),
      I1 => do_sine,
      O => D(4)
    );
\data_tx_right[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_r_clk(5),
      I1 => do_sine,
      O => D(5)
    );
\data_tx_right[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_r_clk(6),
      I1 => do_sine,
      O => D(6)
    );
\data_tx_right[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => do_sine,
      I1 => data_tx_right_rdy_pulse,
      I2 => rst,
      O => do_sine_reg_0(0)
    );
\data_tx_right[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_rx_r_clk(7),
      I1 => do_sine,
      O => D(7)
    );
data_tx_right_rdy_pulse_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_tx_r_wen_clk,
      I1 => \data_tx_r_rqst_clk_reg_n_0_[1]\,
      O => data_tx_right_rdy_pulse0
    );
data_tx_right_rdy_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => data_tx_right_rdy_pulse0,
      Q => data_tx_right_rdy_pulse,
      R => '0'
    );
rx_lrc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000080"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(0),
      I2 => cnt(3),
      I3 => cnt(1),
      I4 => cnt(2),
      I5 => \^rx_lrc_reg_0\,
      O => rx_lrc_i_1_n_0
    );
rx_lrc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => rx_lrc_i_1_n_0,
      Q => \^rx_lrc_reg_0\,
      R => rst
    );
\smpl_phase[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => do_sine,
      I1 => data_tx_left_rdy_pulse,
      O => do_sine_reg(0)
    );
tx_lrc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000080"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(0),
      I2 => cnt(3),
      I3 => cnt(1),
      I4 => cnt(2),
      I5 => \^tx_lrc_reg_0\,
      O => tx_lrc_i_1_n_0
    );
tx_lrc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^jc\(1),
      CE => '1',
      D => tx_lrc_i_1_n_0,
      Q => \^tx_lrc_reg_0\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Core_TEST is
  port (
    rx_lrc_reg : out STD_LOGIC;
    tx_lrc_reg : out STD_LOGIC;
    jc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    audio_mute_n : out STD_LOGIC;
    rst : in STD_LOGIC;
    i2s_recdat : in STD_LOGIC;
    mclk : in STD_LOGIC;
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Core_TEST : entity is "I2S_Core_TEST";
end I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Core_TEST;

architecture STRUCTURE of I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Core_TEST is
  signal I2S_TRX_n_10 : STD_LOGIC;
  signal I2S_TRX_n_11 : STD_LOGIC;
  signal I2S_TRX_n_12 : STD_LOGIC;
  signal I2S_TRX_n_13 : STD_LOGIC;
  signal I2S_TRX_n_14 : STD_LOGIC;
  signal I2S_TRX_n_15 : STD_LOGIC;
  signal I2S_TRX_n_16 : STD_LOGIC;
  signal I2S_TRX_n_4 : STD_LOGIC;
  signal I2S_TRX_n_5 : STD_LOGIC;
  signal I2S_TRX_n_6 : STD_LOGIC;
  signal I2S_TRX_n_8 : STD_LOGIC;
  signal I2S_TRX_n_9 : STD_LOGIC;
  signal \^audio_mute_n\ : STD_LOGIC;
  signal data_rx_l_clk : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal data_rx_r_clk : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal \data_tx_left_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_tx_left_reg_n_0_[9]\ : STD_LOGIC;
  signal data_tx_right : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal do_sine : STD_LOGIC;
  signal nolabel_line138_n_1 : STD_LOGIC;
  signal nolabel_line138_n_10 : STD_LOGIC;
  signal nolabel_line138_n_11 : STD_LOGIC;
  signal nolabel_line138_n_12 : STD_LOGIC;
  signal nolabel_line138_n_13 : STD_LOGIC;
  signal nolabel_line138_n_14 : STD_LOGIC;
  signal nolabel_line138_n_15 : STD_LOGIC;
  signal nolabel_line138_n_16 : STD_LOGIC;
  signal nolabel_line138_n_2 : STD_LOGIC;
  signal nolabel_line138_n_3 : STD_LOGIC;
  signal nolabel_line138_n_34 : STD_LOGIC;
  signal nolabel_line138_n_35 : STD_LOGIC;
  signal nolabel_line138_n_4 : STD_LOGIC;
  signal nolabel_line138_n_5 : STD_LOGIC;
  signal nolabel_line138_n_6 : STD_LOGIC;
  signal nolabel_line138_n_7 : STD_LOGIC;
  signal nolabel_line138_n_8 : STD_LOGIC;
  signal nolabel_line138_n_9 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal smpl_dat_msb : STD_LOGIC;
  signal smpl_data : STD_LOGIC_VECTOR ( 15 to 15 );
  signal smpl_phase : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \smpl_phase[3]_i_2_n_0\ : STD_LOGIC;
  signal \smpl_phase[3]_i_3_n_0\ : STD_LOGIC;
  signal smpl_phase_0 : STD_LOGIC;
  signal \smpl_phase_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_phase_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \smpl_phase_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \smpl_phase_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \smpl_phase_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \smpl_phase_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \smpl_phase_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \smpl_phase_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \smpl_phase_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \smpl_phase_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \smpl_phase_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \smpl_phase_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \smpl_phase_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \smpl_phase_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \smpl_phase_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \smpl_phase_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \smpl_phase_reg[9]_i_2_n_3\ : STD_LOGIC;
  signal \smpl_phase_reg[9]_i_2_n_6\ : STD_LOGIC;
  signal \smpl_phase_reg[9]_i_2_n_7\ : STD_LOGIC;
  signal \NLW_smpl_phase_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_smpl_phase_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \smpl_phase_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \smpl_phase_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \smpl_phase_reg[9]_i_2\ : label is 35;
begin
  audio_mute_n <= \^audio_mute_n\;
I2S_TRX: entity work.I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Transceiver
     port map (
      D(7) => I2S_TRX_n_9,
      D(6) => I2S_TRX_n_10,
      D(5) => I2S_TRX_n_11,
      D(4) => I2S_TRX_n_12,
      D(3) => I2S_TRX_n_13,
      D(2) => I2S_TRX_n_14,
      D(1) => I2S_TRX_n_15,
      D(0) => I2S_TRX_n_16,
      E(0) => p_0_in,
      Q(15 downto 0) => data_rx_r_clk(23 downto 8),
      SR(0) => I2S_TRX_n_6,
      clk => clk,
      \data_rx_l_clk_reg[23]_0\(15 downto 0) => data_rx_l_clk(23 downto 8),
      \data_rx_l_clk_reg[7]_0\(7 downto 0) => p_2_in(7 downto 0),
      \data_tx_l_clk_reg[23]_0\(23) => \data_tx_left_reg_n_0_[23]\,
      \data_tx_l_clk_reg[23]_0\(22) => \data_tx_left_reg_n_0_[22]\,
      \data_tx_l_clk_reg[23]_0\(21) => \data_tx_left_reg_n_0_[21]\,
      \data_tx_l_clk_reg[23]_0\(20) => \data_tx_left_reg_n_0_[20]\,
      \data_tx_l_clk_reg[23]_0\(19) => \data_tx_left_reg_n_0_[19]\,
      \data_tx_l_clk_reg[23]_0\(18) => \data_tx_left_reg_n_0_[18]\,
      \data_tx_l_clk_reg[23]_0\(17) => \data_tx_left_reg_n_0_[17]\,
      \data_tx_l_clk_reg[23]_0\(16) => \data_tx_left_reg_n_0_[16]\,
      \data_tx_l_clk_reg[23]_0\(15) => \data_tx_left_reg_n_0_[15]\,
      \data_tx_l_clk_reg[23]_0\(14) => \data_tx_left_reg_n_0_[14]\,
      \data_tx_l_clk_reg[23]_0\(13) => \data_tx_left_reg_n_0_[13]\,
      \data_tx_l_clk_reg[23]_0\(12) => \data_tx_left_reg_n_0_[12]\,
      \data_tx_l_clk_reg[23]_0\(11) => \data_tx_left_reg_n_0_[11]\,
      \data_tx_l_clk_reg[23]_0\(10) => \data_tx_left_reg_n_0_[10]\,
      \data_tx_l_clk_reg[23]_0\(9) => \data_tx_left_reg_n_0_[9]\,
      \data_tx_l_clk_reg[23]_0\(8) => \data_tx_left_reg_n_0_[8]\,
      \data_tx_l_clk_reg[23]_0\(7) => \data_tx_left_reg_n_0_[7]\,
      \data_tx_l_clk_reg[23]_0\(6) => \data_tx_left_reg_n_0_[6]\,
      \data_tx_l_clk_reg[23]_0\(5) => \data_tx_left_reg_n_0_[5]\,
      \data_tx_l_clk_reg[23]_0\(4) => \data_tx_left_reg_n_0_[4]\,
      \data_tx_l_clk_reg[23]_0\(3) => \data_tx_left_reg_n_0_[3]\,
      \data_tx_l_clk_reg[23]_0\(2) => \data_tx_left_reg_n_0_[2]\,
      \data_tx_l_clk_reg[23]_0\(1) => \data_tx_left_reg_n_0_[1]\,
      \data_tx_l_clk_reg[23]_0\(0) => \data_tx_left_reg_n_0_[0]\,
      data_tx_left_rdy_pulse_reg_0(0) => I2S_TRX_n_5,
      \data_tx_r_clk_reg[23]_0\(23 downto 0) => data_tx_right(23 downto 0),
      data_tx_right_rdy_pulse_reg_0(0) => I2S_TRX_n_4,
      do_sine => do_sine,
      do_sine_reg(0) => smpl_phase_0,
      do_sine_reg_0(0) => I2S_TRX_n_8,
      i2s_recdat => i2s_recdat,
      jc(1 downto 0) => jc(1 downto 0),
      mclk => mclk,
      rst => rst,
      rx_lrc_reg_0 => rx_lrc_reg,
      tx_lrc_reg_0 => tx_lrc_reg
    );
audio_mute_n_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nolabel_line138_n_35,
      Q => \^audio_mute_n\,
      R => '0'
    );
\data_tx_left_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(0),
      Q => \data_tx_left_reg_n_0_[0]\,
      R => I2S_TRX_n_6
    );
\data_tx_left_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(10),
      Q => \data_tx_left_reg_n_0_[10]\,
      R => rst
    );
\data_tx_left_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(11),
      Q => \data_tx_left_reg_n_0_[11]\,
      R => rst
    );
\data_tx_left_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(12),
      Q => \data_tx_left_reg_n_0_[12]\,
      R => rst
    );
\data_tx_left_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(13),
      Q => \data_tx_left_reg_n_0_[13]\,
      R => rst
    );
\data_tx_left_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(14),
      Q => \data_tx_left_reg_n_0_[14]\,
      R => rst
    );
\data_tx_left_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(15),
      Q => \data_tx_left_reg_n_0_[15]\,
      R => rst
    );
\data_tx_left_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(16),
      Q => \data_tx_left_reg_n_0_[16]\,
      R => rst
    );
\data_tx_left_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(17),
      Q => \data_tx_left_reg_n_0_[17]\,
      R => rst
    );
\data_tx_left_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(18),
      Q => \data_tx_left_reg_n_0_[18]\,
      R => rst
    );
\data_tx_left_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(19),
      Q => \data_tx_left_reg_n_0_[19]\,
      R => rst
    );
\data_tx_left_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(1),
      Q => \data_tx_left_reg_n_0_[1]\,
      R => I2S_TRX_n_6
    );
\data_tx_left_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(20),
      Q => \data_tx_left_reg_n_0_[20]\,
      R => rst
    );
\data_tx_left_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(21),
      Q => \data_tx_left_reg_n_0_[21]\,
      R => rst
    );
\data_tx_left_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(22),
      Q => \data_tx_left_reg_n_0_[22]\,
      R => rst
    );
\data_tx_left_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(23),
      Q => \data_tx_left_reg_n_0_[23]\,
      R => rst
    );
\data_tx_left_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(2),
      Q => \data_tx_left_reg_n_0_[2]\,
      R => I2S_TRX_n_6
    );
\data_tx_left_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(3),
      Q => \data_tx_left_reg_n_0_[3]\,
      R => I2S_TRX_n_6
    );
\data_tx_left_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(4),
      Q => \data_tx_left_reg_n_0_[4]\,
      R => I2S_TRX_n_6
    );
\data_tx_left_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(5),
      Q => \data_tx_left_reg_n_0_[5]\,
      R => I2S_TRX_n_6
    );
\data_tx_left_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(6),
      Q => \data_tx_left_reg_n_0_[6]\,
      R => I2S_TRX_n_6
    );
\data_tx_left_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(7),
      Q => \data_tx_left_reg_n_0_[7]\,
      R => I2S_TRX_n_6
    );
\data_tx_left_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(8),
      Q => \data_tx_left_reg_n_0_[8]\,
      R => rst
    );
\data_tx_left_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_5,
      D => p_2_in(9),
      Q => \data_tx_left_reg_n_0_[9]\,
      R => rst
    );
\data_tx_right_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => I2S_TRX_n_16,
      Q => data_tx_right(0),
      R => I2S_TRX_n_8
    );
\data_tx_right_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_14,
      Q => data_tx_right(10),
      R => rst
    );
\data_tx_right_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_13,
      Q => data_tx_right(11),
      R => rst
    );
\data_tx_right_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_12,
      Q => data_tx_right(12),
      R => rst
    );
\data_tx_right_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_11,
      Q => data_tx_right(13),
      R => rst
    );
\data_tx_right_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_10,
      Q => data_tx_right(14),
      R => rst
    );
\data_tx_right_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_9,
      Q => data_tx_right(15),
      R => rst
    );
\data_tx_right_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_8,
      Q => data_tx_right(16),
      R => rst
    );
\data_tx_right_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_7,
      Q => data_tx_right(17),
      R => rst
    );
\data_tx_right_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_6,
      Q => data_tx_right(18),
      R => rst
    );
\data_tx_right_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_5,
      Q => data_tx_right(19),
      R => rst
    );
\data_tx_right_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => I2S_TRX_n_15,
      Q => data_tx_right(1),
      R => I2S_TRX_n_8
    );
\data_tx_right_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_4,
      Q => data_tx_right(20),
      R => rst
    );
\data_tx_right_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_3,
      Q => data_tx_right(21),
      R => rst
    );
\data_tx_right_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_2,
      Q => data_tx_right(22),
      R => rst
    );
\data_tx_right_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_1,
      Q => data_tx_right(23),
      R => rst
    );
\data_tx_right_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => I2S_TRX_n_14,
      Q => data_tx_right(2),
      R => I2S_TRX_n_8
    );
\data_tx_right_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => I2S_TRX_n_13,
      Q => data_tx_right(3),
      R => I2S_TRX_n_8
    );
\data_tx_right_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => I2S_TRX_n_12,
      Q => data_tx_right(4),
      R => I2S_TRX_n_8
    );
\data_tx_right_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => I2S_TRX_n_11,
      Q => data_tx_right(5),
      R => I2S_TRX_n_8
    );
\data_tx_right_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => I2S_TRX_n_10,
      Q => data_tx_right(6),
      R => I2S_TRX_n_8
    );
\data_tx_right_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => I2S_TRX_n_9,
      Q => data_tx_right(7),
      R => I2S_TRX_n_8
    );
\data_tx_right_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_16,
      Q => data_tx_right(8),
      R => rst
    );
\data_tx_right_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => I2S_TRX_n_4,
      D => nolabel_line138_n_15,
      Q => data_tx_right(9),
      R => rst
    );
do_sine_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nolabel_line138_n_34,
      Q => do_sine,
      R => '0'
    );
nolabel_line138: entity work.I2S_Core_TEST_bd_I2S_Core_TEST_0_0_Sine_Wave_Generator
     port map (
      D(15) => nolabel_line138_n_1,
      D(14) => nolabel_line138_n_2,
      D(13) => nolabel_line138_n_3,
      D(12) => nolabel_line138_n_4,
      D(11) => nolabel_line138_n_5,
      D(10) => nolabel_line138_n_6,
      D(9) => nolabel_line138_n_7,
      D(8) => nolabel_line138_n_8,
      D(7) => nolabel_line138_n_9,
      D(6) => nolabel_line138_n_10,
      D(5) => nolabel_line138_n_11,
      D(4) => nolabel_line138_n_12,
      D(3) => nolabel_line138_n_13,
      D(2) => nolabel_line138_n_14,
      D(1) => nolabel_line138_n_15,
      D(0) => nolabel_line138_n_16,
      E(0) => p_0_in,
      Q(9 downto 0) => smpl_phase(9 downto 0),
      audio_mute_n => \^audio_mute_n\,
      clk => clk,
      \data_tx_left_reg[23]\(15 downto 0) => data_rx_l_clk(23 downto 8),
      \data_tx_right_reg[23]\(15 downto 0) => data_rx_r_clk(23 downto 8),
      do_sine => do_sine,
      rst => rst,
      rst_0 => nolabel_line138_n_34,
      smpl_dat_msb => smpl_dat_msb,
      smpl_dat_msb_reg => nolabel_line138_n_35,
      \smpl_data_reg[15]_0\(0) => smpl_data(15),
      \smpl_data_reg[15]_1\(15 downto 0) => p_2_in(23 downto 8),
      sw(1 downto 0) => sw(1 downto 0)
    );
smpl_dat_msb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => smpl_data(15),
      Q => smpl_dat_msb,
      R => '0'
    );
\smpl_phase[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => smpl_phase(1),
      I1 => sw(3),
      O => \smpl_phase[3]_i_2_n_0\
    );
\smpl_phase[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => smpl_phase(0),
      I1 => sw(2),
      O => \smpl_phase[3]_i_3_n_0\
    );
\smpl_phase_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[3]_i_1_n_7\,
      Q => smpl_phase(0),
      R => rst
    );
\smpl_phase_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[3]_i_1_n_6\,
      Q => smpl_phase(1),
      R => rst
    );
\smpl_phase_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[3]_i_1_n_5\,
      Q => smpl_phase(2),
      R => rst
    );
\smpl_phase_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[3]_i_1_n_4\,
      Q => smpl_phase(3),
      R => rst
    );
\smpl_phase_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \smpl_phase_reg[3]_i_1_n_0\,
      CO(2) => \smpl_phase_reg[3]_i_1_n_1\,
      CO(1) => \smpl_phase_reg[3]_i_1_n_2\,
      CO(0) => \smpl_phase_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => smpl_phase(1 downto 0),
      O(3) => \smpl_phase_reg[3]_i_1_n_4\,
      O(2) => \smpl_phase_reg[3]_i_1_n_5\,
      O(1) => \smpl_phase_reg[3]_i_1_n_6\,
      O(0) => \smpl_phase_reg[3]_i_1_n_7\,
      S(3 downto 2) => smpl_phase(3 downto 2),
      S(1) => \smpl_phase[3]_i_2_n_0\,
      S(0) => \smpl_phase[3]_i_3_n_0\
    );
\smpl_phase_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[7]_i_1_n_7\,
      Q => smpl_phase(4),
      R => rst
    );
\smpl_phase_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[7]_i_1_n_6\,
      Q => smpl_phase(5),
      R => rst
    );
\smpl_phase_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[7]_i_1_n_5\,
      Q => smpl_phase(6),
      R => rst
    );
\smpl_phase_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[7]_i_1_n_4\,
      Q => smpl_phase(7),
      R => rst
    );
\smpl_phase_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \smpl_phase_reg[3]_i_1_n_0\,
      CO(3) => \smpl_phase_reg[7]_i_1_n_0\,
      CO(2) => \smpl_phase_reg[7]_i_1_n_1\,
      CO(1) => \smpl_phase_reg[7]_i_1_n_2\,
      CO(0) => \smpl_phase_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \smpl_phase_reg[7]_i_1_n_4\,
      O(2) => \smpl_phase_reg[7]_i_1_n_5\,
      O(1) => \smpl_phase_reg[7]_i_1_n_6\,
      O(0) => \smpl_phase_reg[7]_i_1_n_7\,
      S(3 downto 0) => smpl_phase(7 downto 4)
    );
\smpl_phase_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[9]_i_2_n_7\,
      Q => smpl_phase(8),
      R => rst
    );
\smpl_phase_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => smpl_phase_0,
      D => \smpl_phase_reg[9]_i_2_n_6\,
      Q => smpl_phase(9),
      R => rst
    );
\smpl_phase_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \smpl_phase_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_smpl_phase_reg[9]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \smpl_phase_reg[9]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_smpl_phase_reg[9]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \smpl_phase_reg[9]_i_2_n_6\,
      O(0) => \smpl_phase_reg[9]_i_2_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => smpl_phase(9 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Core_TEST_bd_I2S_Core_TEST_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2S_Core_TEST_bd_I2S_Core_TEST_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2S_Core_TEST_bd_I2S_Core_TEST_0_0 : entity is "I2S_Core_TEST_bd_I2S_Core_TEST_0_0,I2S_Core_TEST,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of I2S_Core_TEST_bd_I2S_Core_TEST_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of I2S_Core_TEST_bd_I2S_Core_TEST_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of I2S_Core_TEST_bd_I2S_Core_TEST_0_0 : entity is "I2S_Core_TEST,Vivado 2020.1";
end I2S_Core_TEST_bd_I2S_Core_TEST_0_0;

architecture STRUCTURE of I2S_Core_TEST_bd_I2S_Core_TEST_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^i2s_recdat\ : STD_LOGIC;
  signal \^jc\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^mclk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^i2s_recdat\ <= i2s_recdat;
  \^mclk\ <= mclk;
  audio_mclk <= \^mclk\;
  i2s_bclk <= \^jc\(0);
  i2s_pbdat <= \^jc\(1);
  i2s_pblrc <= \^jc\(2);
  i2s_reclrc <= \^jc\(6);
  jc(7) <= \<const0>\;
  jc(6) <= \^jc\(6);
  jc(5) <= \^i2s_recdat\;
  jc(4) <= \^jc\(0);
  jc(3) <= \^mclk\;
  jc(2 downto 0) <= \^jc\(2 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.I2S_Core_TEST_bd_I2S_Core_TEST_0_0_I2S_Core_TEST
     port map (
      audio_mute_n => audio_mute_n,
      clk => clk,
      i2s_recdat => \^i2s_recdat\,
      jc(1) => \^jc\(0),
      jc(0) => \^jc\(1),
      mclk => \^mclk\,
      rst => rst,
      rx_lrc_reg => \^jc\(6),
      sw(3 downto 0) => sw(3 downto 0),
      tx_lrc_reg => \^jc\(2)
    );
end STRUCTURE;
