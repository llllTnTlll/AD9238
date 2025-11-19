-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Oct 21 12:55:30 2025
-- Host        : OMEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adc12_to_16_0_2_sim_netlist.vhdl
-- Design      : design_1_adc12_to_16_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc12_to_16 is
  port (
    ch1_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_valid : out STD_LOGIC;
    clk : in STD_LOGIC;
    ch1_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ch1_otr : in STD_LOGIC;
    en : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc12_to_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc12_to_16 is
  signal \ch1_dout[11]_i_2_n_0\ : STD_LOGIC;
  signal data_valid_i_1_n_0 : STD_LOGIC;
  signal din_mux : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ch1_dout[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ch1_dout[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ch1_dout[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ch1_dout[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ch1_dout[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ch1_dout[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ch1_dout[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ch1_dout[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ch1_dout[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ch1_dout[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ch1_dout[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ch1_dout[9]_i_1\ : label is "soft_lutpair4";
begin
\ch1_dout[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(0),
      I1 => ch1_otr,
      O => din_mux(0)
    );
\ch1_dout[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(10),
      I1 => ch1_otr,
      O => din_mux(10)
    );
\ch1_dout[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(11),
      I1 => ch1_otr,
      O => din_mux(11)
    );
\ch1_dout[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \ch1_dout[11]_i_2_n_0\
    );
\ch1_dout[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(1),
      I1 => ch1_otr,
      O => din_mux(1)
    );
\ch1_dout[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(2),
      I1 => ch1_otr,
      O => din_mux(2)
    );
\ch1_dout[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(3),
      I1 => ch1_otr,
      O => din_mux(3)
    );
\ch1_dout[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(4),
      I1 => ch1_otr,
      O => din_mux(4)
    );
\ch1_dout[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(5),
      I1 => ch1_otr,
      O => din_mux(5)
    );
\ch1_dout[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(6),
      I1 => ch1_otr,
      O => din_mux(6)
    );
\ch1_dout[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(7),
      I1 => ch1_otr,
      O => din_mux(7)
    );
\ch1_dout[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(8),
      I1 => ch1_otr,
      O => din_mux(8)
    );
\ch1_dout[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ch1_din(9),
      I1 => ch1_otr,
      O => din_mux(9)
    );
\ch1_dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(0),
      Q => ch1_dout(0)
    );
\ch1_dout_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(10),
      Q => ch1_dout(10)
    );
\ch1_dout_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(11),
      Q => ch1_dout(11)
    );
\ch1_dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(1),
      Q => ch1_dout(1)
    );
\ch1_dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(2),
      Q => ch1_dout(2)
    );
\ch1_dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(3),
      Q => ch1_dout(3)
    );
\ch1_dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(4),
      Q => ch1_dout(4)
    );
\ch1_dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(5),
      Q => ch1_dout(5)
    );
\ch1_dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(6),
      Q => ch1_dout(6)
    );
\ch1_dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(7),
      Q => ch1_dout(7)
    );
\ch1_dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(8),
      Q => ch1_dout(8)
    );
\ch1_dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => din_mux(9),
      Q => ch1_dout(9)
    );
data_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => en,
      I1 => ch1_otr,
      O => data_valid_i_1_n_0
    );
data_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \ch1_dout[11]_i_2_n_0\,
      D => data_valid_i_1_n_0,
      Q => data_valid
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
    ch1_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ch1_otr : in STD_LOGIC;
    en : in STD_LOGIC;
    ch1_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_adc12_to_16_0_2,adc12_to_16,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc12_to_16,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^ch1_dout\ : STD_LOGIC_VECTOR ( 11 downto 0 );
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
  ch1_dout(15) <= \<const0>\;
  ch1_dout(14) <= \<const0>\;
  ch1_dout(13) <= \<const0>\;
  ch1_dout(12) <= \<const0>\;
  ch1_dout(11 downto 0) <= \^ch1_dout\(11 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc12_to_16
     port map (
      ch1_din(11 downto 0) => ch1_din(11 downto 0),
      ch1_dout(11 downto 0) => \^ch1_dout\(11 downto 0),
      ch1_otr => ch1_otr,
      clk => clk,
      data_valid => data_valid,
      en => en,
      rst_n => rst_n
    );
end STRUCTURE;
