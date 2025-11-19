-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Oct 21 17:16:53 2025
-- Host        : OMEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_button_ctrl_0_0_sim_netlist.vhdl
-- Design      : design_1_button_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_ctrl is
  port (
    debounced_level : out STD_LOGIC;
    pressed_pulse : out STD_LOGIC;
    y : out STD_LOGIC;
    clk : in STD_LOGIC;
    btn_in : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_ctrl is
  signal armed : STD_LOGIC;
  signal armed_i_1_n_0 : STD_LOGIC;
  signal btn_n : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt0_carry__3_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt[18]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_8_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal level_n_d : STD_LOGIC;
  signal level_n_i_1_n_0 : STD_LOGIC;
  signal level_n_i_2_n_0 : STD_LOGIC;
  signal level_n_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal s1 : STD_LOGIC;
  signal s2 : STD_LOGIC;
  signal \^y\ : STD_LOGIC;
  signal y_i_1_n_0 : STD_LOGIC;
  signal y_i_2_n_0 : STD_LOGIC;
  signal \NLW_cnt0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__3\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[18]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of debounced_level_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of level_n_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of pressed_pulse_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of y_i_1 : label is "soft_lutpair0";
begin
  y <= \^y\;
armed_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => level_n_reg_n_0,
      I1 => level_n_d,
      I2 => armed,
      O => armed_i_1_n_0
    );
armed_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => armed_i_1_n_0,
      Q => armed
    );
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3) => \cnt0_carry__2_n_0\,
      CO(2) => \cnt0_carry__2_n_1\,
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__2_n_0\,
      CO(3 downto 1) => \NLW_cnt0_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_cnt0_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(18 downto 17),
      S(3 downto 2) => B"00",
      S(1 downto 0) => cnt(18 downto 17)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => s2,
      I1 => level_n_reg_n_0,
      I2 => cnt(0),
      O => p_0_in(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(10),
      O => p_0_in(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(11),
      O => p_0_in(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(12),
      O => p_0_in(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(13),
      O => p_0_in(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(14),
      O => p_0_in(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(15),
      O => p_0_in(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(16),
      O => p_0_in(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(17),
      O => p_0_in(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(18),
      O => p_0_in(18)
    );
\cnt[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \cnt[18]_i_3_n_0\,
      I1 => \cnt[18]_i_4_n_0\,
      I2 => \cnt[18]_i_5_n_0\,
      I3 => \cnt[18]_i_6_n_0\,
      I4 => \cnt[18]_i_7_n_0\,
      I5 => \cnt[18]_i_8_n_0\,
      O => \cnt[18]_i_2_n_0\
    );
\cnt[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(5),
      I2 => cnt(8),
      I3 => cnt(7),
      O => \cnt[18]_i_3_n_0\
    );
\cnt[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(10),
      I1 => cnt(9),
      I2 => cnt(12),
      I3 => cnt(11),
      O => \cnt[18]_i_4_n_0\
    );
\cnt[18]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cnt(18),
      I1 => cnt(17),
      I2 => cnt(0),
      O => \cnt[18]_i_5_n_0\
    );
\cnt[18]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => cnt(13),
      I1 => cnt(14),
      I2 => cnt(16),
      I3 => cnt(15),
      O => \cnt[18]_i_6_n_0\
    );
\cnt[18]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(1),
      I2 => cnt(4),
      I3 => cnt(3),
      O => \cnt[18]_i_7_n_0\
    );
\cnt[18]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => level_n_reg_n_0,
      I1 => s2,
      O => \cnt[18]_i_8_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(1),
      O => p_0_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(2),
      O => p_0_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(3),
      O => p_0_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(4),
      O => p_0_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(5),
      O => p_0_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(6),
      O => p_0_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(7),
      O => p_0_in(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(8),
      O => p_0_in(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[18]_i_2_n_0\,
      I1 => data0(9),
      O => p_0_in(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(0),
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(10),
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(11),
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(12),
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(13),
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(14),
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(15),
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(16),
      Q => cnt(16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(17),
      Q => cnt(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(18),
      Q => cnt(18)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(1),
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(2),
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(3),
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(4),
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(5),
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(6),
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(7),
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(8),
      Q => cnt(8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => p_0_in(9),
      Q => cnt(9)
    );
debounced_level_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => level_n_reg_n_0,
      O => debounced_level
    );
level_n_d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => level_n_reg_n_0,
      Q => level_n_d
    );
level_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s2,
      I1 => level_n_reg_n_0,
      I2 => level_n_i_2_n_0,
      O => level_n_i_1_n_0
    );
level_n_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cnt[18]_i_7_n_0\,
      I1 => \cnt[18]_i_6_n_0\,
      I2 => \cnt[18]_i_5_n_0\,
      I3 => \cnt[18]_i_4_n_0\,
      I4 => \cnt[18]_i_3_n_0\,
      O => level_n_i_2_n_0
    );
level_n_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => level_n_i_1_n_0,
      Q => level_n_reg_n_0
    );
pressed_pulse_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => armed,
      I1 => level_n_reg_n_0,
      I2 => level_n_d,
      O => pressed_pulse
    );
s1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => btn_in,
      O => btn_n
    );
s1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => btn_n,
      Q => s1
    );
s2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => s1,
      Q => s2
    );
y_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => level_n_d,
      I1 => level_n_reg_n_0,
      I2 => armed,
      I3 => \^y\,
      O => y_i_1_n_0
    );
y_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => y_i_2_n_0
    );
y_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => y_i_2_n_0,
      D => y_i_1_n_0,
      Q => \^y\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    btn_in : in STD_LOGIC;
    y : out STD_LOGIC;
    debounced_level : out STD_LOGIC;
    pressed_pulse : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_button_ctrl_0_0,button_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "button_ctrl,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_ctrl
     port map (
      btn_in => btn_in,
      clk => clk,
      debounced_level => debounced_level,
      pressed_pulse => pressed_pulse,
      rst_n => rst_n,
      y => y
    );
end STRUCTURE;
