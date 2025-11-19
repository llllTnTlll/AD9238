-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Oct 21 15:53:52 2025
-- Host        : OMEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_3_control_unit_0_0_sim_netlist.vhdl
-- Design      : design_3_control_unit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debouncer is
  port (
    rst_n_0 : out STD_LOGIC;
    btn_level : out STD_LOGIC;
    btn_level_d_reg : out STD_LOGIC;
    start_btn : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    btn_level_d : in STD_LOGIC;
    en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debouncer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debouncer is
  signal \^btn_level\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cnt0 : STD_LOGIC_VECTOR ( 31 downto 1 );
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
  signal \cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \cnt0_carry__6_n_2\ : STD_LOGIC;
  signal \cnt0_carry__6_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \level0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \level0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \level0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \level0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \level0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \level0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \level0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \level0_carry__0_n_0\ : STD_LOGIC;
  signal \level0_carry__0_n_1\ : STD_LOGIC;
  signal \level0_carry__0_n_2\ : STD_LOGIC;
  signal \level0_carry__0_n_3\ : STD_LOGIC;
  signal \level0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \level0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \level0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \level0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \level0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \level0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \level0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \level0_carry__1_n_0\ : STD_LOGIC;
  signal \level0_carry__1_n_1\ : STD_LOGIC;
  signal \level0_carry__1_n_2\ : STD_LOGIC;
  signal \level0_carry__1_n_3\ : STD_LOGIC;
  signal \level0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \level0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \level0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \level0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \level0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \level0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \level0_carry__2_n_1\ : STD_LOGIC;
  signal \level0_carry__2_n_2\ : STD_LOGIC;
  signal \level0_carry__2_n_3\ : STD_LOGIC;
  signal level0_carry_i_1_n_0 : STD_LOGIC;
  signal level0_carry_i_2_n_0 : STD_LOGIC;
  signal level0_carry_i_3_n_0 : STD_LOGIC;
  signal level0_carry_i_4_n_0 : STD_LOGIC;
  signal level0_carry_i_5_n_0 : STD_LOGIC;
  signal level0_carry_i_6_n_0 : STD_LOGIC;
  signal level0_carry_n_0 : STD_LOGIC;
  signal level0_carry_n_1 : STD_LOGIC;
  signal level0_carry_n_2 : STD_LOGIC;
  signal level0_carry_n_3 : STD_LOGIC;
  signal level_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rst_n_0\ : STD_LOGIC;
  signal sync1 : STD_LOGIC;
  signal sync2 : STD_LOGIC;
  signal \NLW_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_level0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_level0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_level0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_level0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_level0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[23]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[25]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair5";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of level0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \level0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \level0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \level0_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of level_i_1 : label is "soft_lutpair0";
begin
  btn_level <= \^btn_level\;
  rst_n_0 <= \^rst_n_0\;
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(4 downto 1),
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
      O(3 downto 0) => cnt0(8 downto 5),
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
      O(3 downto 0) => cnt0(12 downto 9),
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
      O(3 downto 0) => cnt0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__2_n_0\,
      CO(3) => \cnt0_carry__3_n_0\,
      CO(2) => \cnt0_carry__3_n_1\,
      CO(1) => \cnt0_carry__3_n_2\,
      CO(0) => \cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(20 downto 17),
      S(3 downto 0) => cnt(20 downto 17)
    );
\cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__3_n_0\,
      CO(3) => \cnt0_carry__4_n_0\,
      CO(2) => \cnt0_carry__4_n_1\,
      CO(1) => \cnt0_carry__4_n_2\,
      CO(0) => \cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(24 downto 21),
      S(3 downto 0) => cnt(24 downto 21)
    );
\cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__4_n_0\,
      CO(3) => \cnt0_carry__5_n_0\,
      CO(2) => \cnt0_carry__5_n_1\,
      CO(1) => \cnt0_carry__5_n_2\,
      CO(0) => \cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(28 downto 25),
      S(3 downto 0) => cnt(28 downto 25)
    );
\cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt0_carry__6_n_2\,
      CO(0) => \cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt(31 downto 29)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt(0),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(10),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(11),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(12),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(13),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(14),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(15),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(16),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(17),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(18),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(18)
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(19),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(19)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(1),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(1)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(20),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(20)
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(21),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(21)
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(22),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(22)
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(23),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(23)
    );
\cnt[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(24),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(24)
    );
\cnt[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(25),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(25)
    );
\cnt[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(26),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(26)
    );
\cnt[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(27),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(27)
    );
\cnt[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(28),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(28)
    );
\cnt[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(29),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(29)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(2),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(2)
    );
\cnt[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(30),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(30)
    );
\cnt[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(31),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(31)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(3),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(4),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(5),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(6),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(7),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(8),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => cnt0(9),
      I2 => sync2,
      I3 => \^btn_level\,
      O => p_0_in(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(0),
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(10),
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(11),
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(12),
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(13),
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(14),
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(15),
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(16),
      Q => cnt(16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(17),
      Q => cnt(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(18),
      Q => cnt(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(19),
      Q => cnt(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(1),
      Q => cnt(1)
    );
\cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(20),
      Q => cnt(20)
    );
\cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(21),
      Q => cnt(21)
    );
\cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(22),
      Q => cnt(22)
    );
\cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(23),
      Q => cnt(23)
    );
\cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(24),
      Q => cnt(24)
    );
\cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(25),
      Q => cnt(25)
    );
\cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(26),
      Q => cnt(26)
    );
\cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(27),
      Q => cnt(27)
    );
\cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(28),
      Q => cnt(28)
    );
\cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(29),
      Q => cnt(29)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(2),
      Q => cnt(2)
    );
\cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(30),
      Q => cnt(30)
    );
\cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(31),
      Q => cnt(31)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(3),
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(4),
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(5),
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(6),
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(7),
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(8),
      Q => cnt(8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in(9),
      Q => cnt(9)
    );
en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => btn_level_d,
      I1 => \^btn_level\,
      I2 => en,
      O => btn_level_d_reg
    );
en_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
level0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => level0_carry_n_0,
      CO(2) => level0_carry_n_1,
      CO(1) => level0_carry_n_2,
      CO(0) => level0_carry_n_3,
      CYINIT => level0_carry_i_1_n_0,
      DI(3) => cnt(9),
      DI(2) => level0_carry_i_2_n_0,
      DI(1) => cnt(5),
      DI(0) => '0',
      O(3 downto 0) => NLW_level0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => level0_carry_i_3_n_0,
      S(2) => level0_carry_i_4_n_0,
      S(1) => level0_carry_i_5_n_0,
      S(0) => level0_carry_i_6_n_0
    );
\level0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => level0_carry_n_0,
      CO(3) => \level0_carry__0_n_0\,
      CO(2) => \level0_carry__0_n_1\,
      CO(1) => \level0_carry__0_n_2\,
      CO(0) => \level0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \level0_carry__0_i_1_n_0\,
      DI(1) => \level0_carry__0_i_2_n_0\,
      DI(0) => \level0_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_level0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \level0_carry__0_i_4_n_0\,
      S(2) => \level0_carry__0_i_5_n_0\,
      S(1) => \level0_carry__0_i_6_n_0\,
      S(0) => \level0_carry__0_i_7_n_0\
    );
\level0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt(14),
      I1 => cnt(15),
      O => \level0_carry__0_i_1_n_0\
    );
\level0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt(12),
      I1 => cnt(13),
      O => \level0_carry__0_i_2_n_0\
    );
\level0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt(10),
      I1 => cnt(11),
      O => \level0_carry__0_i_3_n_0\
    );
\level0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt(16),
      I1 => cnt(17),
      O => \level0_carry__0_i_4_n_0\
    );
\level0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt(15),
      I1 => cnt(14),
      O => \level0_carry__0_i_5_n_0\
    );
\level0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt(13),
      I1 => cnt(12),
      O => \level0_carry__0_i_6_n_0\
    );
\level0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(10),
      I1 => cnt(11),
      O => \level0_carry__0_i_7_n_0\
    );
\level0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \level0_carry__0_n_0\,
      CO(3) => \level0_carry__1_n_0\,
      CO(2) => \level0_carry__1_n_1\,
      CO(1) => \level0_carry__1_n_2\,
      CO(0) => \level0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \level0_carry__1_i_1_n_0\,
      DI(2) => \level0_carry__1_i_2_n_0\,
      DI(1) => \level0_carry__1_i_3_n_0\,
      DI(0) => cnt(19),
      O(3 downto 0) => \NLW_level0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \level0_carry__1_i_4_n_0\,
      S(2) => \level0_carry__1_i_5_n_0\,
      S(1) => \level0_carry__1_i_6_n_0\,
      S(0) => \level0_carry__1_i_7_n_0\
    );
\level0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt(24),
      I1 => cnt(25),
      O => \level0_carry__1_i_1_n_0\
    );
\level0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt(22),
      I1 => cnt(23),
      O => \level0_carry__1_i_2_n_0\
    );
\level0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt(20),
      I1 => cnt(21),
      O => \level0_carry__1_i_3_n_0\
    );
\level0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(24),
      I1 => cnt(25),
      O => \level0_carry__1_i_4_n_0\
    );
\level0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(22),
      I1 => cnt(23),
      O => \level0_carry__1_i_5_n_0\
    );
\level0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(20),
      I1 => cnt(21),
      O => \level0_carry__1_i_6_n_0\
    );
\level0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt(18),
      I1 => cnt(19),
      O => \level0_carry__1_i_7_n_0\
    );
\level0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \level0_carry__1_n_0\,
      CO(3) => \NLW_level0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \level0_carry__2_n_1\,
      CO(1) => \level0_carry__2_n_2\,
      CO(0) => \level0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \level0_carry__2_i_1_n_0\,
      DI(1) => \level0_carry__2_i_2_n_0\,
      DI(0) => \level0_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_level0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \level0_carry__2_i_4_n_0\,
      S(1) => \level0_carry__2_i_5_n_0\,
      S(0) => \level0_carry__2_i_6_n_0\
    );
\level0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt(30),
      I1 => cnt(31),
      O => \level0_carry__2_i_1_n_0\
    );
\level0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt(28),
      I1 => cnt(29),
      O => \level0_carry__2_i_2_n_0\
    );
\level0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt(26),
      I1 => cnt(27),
      O => \level0_carry__2_i_3_n_0\
    );
\level0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(30),
      I1 => cnt(31),
      O => \level0_carry__2_i_4_n_0\
    );
\level0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(28),
      I1 => cnt(29),
      O => \level0_carry__2_i_5_n_0\
    );
\level0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(26),
      I1 => cnt(27),
      O => \level0_carry__2_i_6_n_0\
    );
level0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(1),
      O => level0_carry_i_1_n_0
    );
level0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(7),
      O => level0_carry_i_2_n_0
    );
level0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(9),
      O => level0_carry_i_3_n_0
    );
level0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(7),
      O => level0_carry_i_4_n_0
    );
level0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(5),
      O => level0_carry_i_5_n_0
    );
level0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(3),
      O => level0_carry_i_6_n_0
    );
level_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => \level0_carry__2_n_1\,
      I1 => sync2,
      I2 => \^btn_level\,
      O => level_i_1_n_0
    );
level_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => level_i_1_n_0,
      Q => \^btn_level\
    );
sync1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => start_btn,
      Q => sync1
    );
sync2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => sync1,
      Q => sync2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_unit is
  port (
    en : out STD_LOGIC;
    start_btn : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_unit is
  signal btn_level : STD_LOGIC;
  signal btn_level_d : STD_LOGIC;
  signal \^en\ : STD_LOGIC;
  signal u_deb_n_0 : STD_LOGIC;
  signal u_deb_n_2 : STD_LOGIC;
begin
  en <= \^en\;
btn_level_d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_deb_n_0,
      D => btn_level,
      Q => btn_level_d
    );
en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_deb_n_0,
      D => u_deb_n_2,
      Q => \^en\
    );
u_deb: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debouncer
     port map (
      btn_level => btn_level,
      btn_level_d => btn_level_d,
      btn_level_d_reg => u_deb_n_2,
      clk => clk,
      en => \^en\,
      rst_n => rst_n,
      rst_n_0 => u_deb_n_0,
      start_btn => start_btn
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
    start_btn : in STD_LOGIC;
    en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_3_control_unit_0_0,control_unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "control_unit,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_3_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_unit
     port map (
      clk => clk,
      en => en,
      rst_n => rst_n,
      start_btn => start_btn
    );
end STRUCTURE;
