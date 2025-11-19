-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Oct 17 16:43:37 2025
-- Host        : OMEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_axi_null_slave_0_0_sim_netlist.vhdl
-- Design      : design_2_axi_null_slave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_null_slave is
  port (
    S_ARREADY : out STD_LOGIC;
    S_RLAST_reg_0 : out STD_LOGIC;
    S_RVALID_reg_0 : out STD_LOGIC;
    S_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_BVALID : out STD_LOGIC;
    S_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACLK : in STD_LOGIC;
    S_ARVALID : in STD_LOGIC;
    S_RREADY : in STD_LOGIC;
    S_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ARESETn : in STD_LOGIC;
    S_WLAST : in STD_LOGIC;
    S_WVALID : in STD_LOGIC;
    S_AWVALID : in STD_LOGIC;
    S_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_BREADY : in STD_LOGIC;
    S_ARID : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_null_slave;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_null_slave is
  signal \^s_arready\ : STD_LOGIC;
  signal S_AWREADY_i_1_n_0 : STD_LOGIC;
  signal \^s_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \S_BID[0]_i_1_n_0\ : STD_LOGIC;
  signal \^s_bvalid\ : STD_LOGIC;
  signal S_BVALID_i_1_n_0 : STD_LOGIC;
  signal \^s_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \S_RID[0]_i_1_n_0\ : STD_LOGIC;
  signal \S_RID[0]_i_2_n_0\ : STD_LOGIC;
  signal S_RLAST_i_1_n_0 : STD_LOGIC;
  signal S_RLAST_i_2_n_0 : STD_LOGIC;
  signal S_RLAST_i_3_n_0 : STD_LOGIC;
  signal S_RLAST_i_4_n_0 : STD_LOGIC;
  signal S_RLAST_i_5_n_0 : STD_LOGIC;
  signal S_RLAST_i_6_n_0 : STD_LOGIC;
  signal \^s_rlast_reg_0\ : STD_LOGIC;
  signal S_RVALID0 : STD_LOGIC;
  signal S_RVALID_i_1_n_0 : STD_LOGIC;
  signal \^s_rvalid_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal r_id_hold : STD_LOGIC;
  signal \r_id_hold[0]_i_1_n_0\ : STD_LOGIC;
  signal w_active : STD_LOGIC;
  signal w_active_i_1_n_0 : STD_LOGIC;
  signal w_id_hold : STD_LOGIC;
  signal \w_id_hold[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S_RID[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of S_RLAST_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of S_RLAST_i_5 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of S_RLAST_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S_RVALID_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_cnt[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_cnt[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_cnt[4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_cnt[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w_id_hold[0]_i_1\ : label is "soft_lutpair4";
begin
  S_ARREADY <= \^s_arready\;
  S_BID(0) <= \^s_bid\(0);
  S_BVALID <= \^s_bvalid\;
  S_RID(0) <= \^s_rid\(0);
  S_RLAST_reg_0 <= \^s_rlast_reg_0\;
  S_RVALID_reg_0 <= \^s_rvalid_reg_0\;
S_AWREADY_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESETn,
      O => S_AWREADY_i_1_n_0
    );
S_AWREADY_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => S_AWREADY_i_1_n_0,
      D => '1',
      Q => \^s_arready\
    );
\S_BID[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => w_id_hold,
      I1 => \^s_arready\,
      I2 => w_active,
      I3 => S_WVALID,
      I4 => S_WLAST,
      I5 => \^s_bid\(0),
      O => \S_BID[0]_i_1_n_0\
    );
\S_BID_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => S_AWREADY_i_1_n_0,
      D => \S_BID[0]_i_1_n_0\,
      Q => \^s_bid\(0)
    );
S_BVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_WLAST,
      I1 => S_WVALID,
      I2 => w_active,
      I3 => \^s_arready\,
      I4 => S_BREADY,
      I5 => \^s_bvalid\,
      O => S_BVALID_i_1_n_0
    );
S_BVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => S_AWREADY_i_1_n_0,
      D => S_BVALID_i_1_n_0,
      Q => \^s_bvalid\
    );
\S_RID[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFCCCCA000CCCC"
    )
        port map (
      I0 => S_ARID(0),
      I1 => r_id_hold,
      I2 => \^s_arready\,
      I3 => S_ARVALID,
      I4 => \S_RID[0]_i_2_n_0\,
      I5 => \^s_rid\(0),
      O => \S_RID[0]_i_1_n_0\
    );
\S_RID[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => S_RREADY,
      I1 => \^s_rvalid_reg_0\,
      I2 => \^s_rlast_reg_0\,
      O => \S_RID[0]_i_2_n_0\
    );
\S_RID_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => S_AWREADY_i_1_n_0,
      D => \S_RID[0]_i_1_n_0\,
      Q => \^s_rid\(0)
    );
S_RLAST_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => S_RLAST_i_2_n_0,
      I1 => S_RLAST_i_3_n_0,
      I2 => S_RLAST_i_4_n_0,
      I3 => S_RLAST_i_5_n_0,
      I4 => S_RLAST_i_6_n_0,
      I5 => \^s_rlast_reg_0\,
      O => S_RLAST_i_1_n_0
    );
S_RLAST_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_cnt(4),
      I1 => r_cnt(3),
      I2 => r_cnt(2),
      I3 => r_cnt(0),
      I4 => r_cnt(1),
      O => S_RLAST_i_2_n_0
    );
S_RLAST_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \^s_rlast_reg_0\,
      I1 => \^s_rvalid_reg_0\,
      I2 => S_RREADY,
      I3 => r_cnt(7),
      I4 => r_cnt(5),
      I5 => r_cnt(6),
      O => S_RLAST_i_3_n_0
    );
S_RLAST_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => S_ARLEN(4),
      I1 => S_ARLEN(5),
      I2 => S_ARLEN(2),
      I3 => S_ARLEN(3),
      I4 => S_ARLEN(7),
      I5 => S_ARLEN(6),
      O => S_RLAST_i_4_n_0
    );
S_RLAST_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10111111"
    )
        port map (
      I0 => S_ARLEN(1),
      I1 => S_ARLEN(0),
      I2 => \^s_rlast_reg_0\,
      I3 => \^s_rvalid_reg_0\,
      I4 => S_RREADY,
      O => S_RLAST_i_5_n_0
    );
S_RLAST_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => \^s_arready\,
      I1 => S_ARVALID,
      I2 => \^s_rlast_reg_0\,
      I3 => \^s_rvalid_reg_0\,
      I4 => S_RREADY,
      O => S_RLAST_i_6_n_0
    );
S_RLAST_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => S_AWREADY_i_1_n_0,
      D => S_RLAST_i_1_n_0,
      Q => \^s_rlast_reg_0\
    );
S_RVALID_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FFC0C0"
    )
        port map (
      I0 => \^s_rlast_reg_0\,
      I1 => \^s_arready\,
      I2 => S_ARVALID,
      I3 => S_RREADY,
      I4 => \^s_rvalid_reg_0\,
      O => S_RVALID_i_1_n_0
    );
S_RVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => S_AWREADY_i_1_n_0,
      D => S_RVALID_i_1_n_0,
      Q => \^s_rvalid_reg_0\
    );
\r_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00AAFE"
    )
        port map (
      I0 => S_ARLEN(0),
      I1 => \r_cnt[1]_i_2_n_0\,
      I2 => r_cnt(1),
      I3 => \S_RID[0]_i_2_n_0\,
      I4 => r_cnt(0),
      O => p_1_in(0)
    );
\r_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAC3AAC2"
    )
        port map (
      I0 => S_ARLEN(1),
      I1 => r_cnt(0),
      I2 => r_cnt(1),
      I3 => \S_RID[0]_i_2_n_0\,
      I4 => \r_cnt[1]_i_2_n_0\,
      O => p_1_in(1)
    );
\r_cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => r_cnt(3),
      I1 => r_cnt(4),
      I2 => r_cnt(6),
      I3 => r_cnt(5),
      I4 => r_cnt(7),
      I5 => r_cnt(2),
      O => \r_cnt[1]_i_2_n_0\
    );
\r_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8888BBBB8888A"
    )
        port map (
      I0 => S_ARLEN(2),
      I1 => \S_RID[0]_i_2_n_0\,
      I2 => r_cnt(1),
      I3 => r_cnt(0),
      I4 => r_cnt(2),
      I5 => \r_cnt[2]_i_2_n_0\,
      O => p_1_in(2)
    );
\r_cnt[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_cnt(7),
      I1 => r_cnt(5),
      I2 => r_cnt(6),
      I3 => r_cnt(4),
      I4 => r_cnt(3),
      O => \r_cnt[2]_i_2_n_0\
    );
\r_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88BB88BB88BB88A"
    )
        port map (
      I0 => S_ARLEN(3),
      I1 => \S_RID[0]_i_2_n_0\,
      I2 => \r_cnt[4]_i_3_n_0\,
      I3 => r_cnt(3),
      I4 => r_cnt(4),
      I5 => \r_cnt[4]_i_2_n_0\,
      O => p_1_in(3)
    );
\r_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBB88888888BA"
    )
        port map (
      I0 => S_ARLEN(4),
      I1 => \S_RID[0]_i_2_n_0\,
      I2 => \r_cnt[4]_i_2_n_0\,
      I3 => \r_cnt[4]_i_3_n_0\,
      I4 => r_cnt(3),
      I5 => r_cnt(4),
      O => p_1_in(4)
    );
\r_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => r_cnt(6),
      I1 => r_cnt(5),
      I2 => r_cnt(7),
      O => \r_cnt[4]_i_2_n_0\
    );
\r_cnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => r_cnt(1),
      I1 => r_cnt(0),
      I2 => r_cnt(2),
      O => \r_cnt[4]_i_3_n_0\
    );
\r_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB88888888BBBA"
    )
        port map (
      I0 => S_ARLEN(5),
      I1 => \S_RID[0]_i_2_n_0\,
      I2 => r_cnt(7),
      I3 => r_cnt(6),
      I4 => r_cnt(5),
      I5 => S_RLAST_i_2_n_0,
      O => p_1_in(5)
    );
\r_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8888BB8888BA"
    )
        port map (
      I0 => S_ARLEN(6),
      I1 => \S_RID[0]_i_2_n_0\,
      I2 => r_cnt(7),
      I3 => r_cnt(5),
      I4 => r_cnt(6),
      I5 => S_RLAST_i_2_n_0,
      O => p_1_in(6)
    );
\r_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFFFFFE"
    )
        port map (
      I0 => S_RVALID0,
      I1 => r_cnt(7),
      I2 => r_cnt(5),
      I3 => r_cnt(6),
      I4 => S_RLAST_i_2_n_0,
      I5 => \S_RID[0]_i_2_n_0\,
      O => \r_cnt[7]_i_1_n_0\
    );
\r_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888A"
    )
        port map (
      I0 => S_ARLEN(7),
      I1 => \S_RID[0]_i_2_n_0\,
      I2 => r_cnt(5),
      I3 => r_cnt(6),
      I4 => S_RLAST_i_2_n_0,
      I5 => r_cnt(7),
      O => p_1_in(7)
    );
\r_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_ARVALID,
      I1 => \^s_arready\,
      O => S_RVALID0
    );
\r_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \r_cnt[7]_i_1_n_0\,
      CLR => S_AWREADY_i_1_n_0,
      D => p_1_in(0),
      Q => r_cnt(0)
    );
\r_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \r_cnt[7]_i_1_n_0\,
      CLR => S_AWREADY_i_1_n_0,
      D => p_1_in(1),
      Q => r_cnt(1)
    );
\r_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \r_cnt[7]_i_1_n_0\,
      CLR => S_AWREADY_i_1_n_0,
      D => p_1_in(2),
      Q => r_cnt(2)
    );
\r_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \r_cnt[7]_i_1_n_0\,
      CLR => S_AWREADY_i_1_n_0,
      D => p_1_in(3),
      Q => r_cnt(3)
    );
\r_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \r_cnt[7]_i_1_n_0\,
      CLR => S_AWREADY_i_1_n_0,
      D => p_1_in(4),
      Q => r_cnt(4)
    );
\r_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \r_cnt[7]_i_1_n_0\,
      CLR => S_AWREADY_i_1_n_0,
      D => p_1_in(5),
      Q => r_cnt(5)
    );
\r_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \r_cnt[7]_i_1_n_0\,
      CLR => S_AWREADY_i_1_n_0,
      D => p_1_in(6),
      Q => r_cnt(6)
    );
\r_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \r_cnt[7]_i_1_n_0\,
      CLR => S_AWREADY_i_1_n_0,
      D => p_1_in(7),
      Q => r_cnt(7)
    );
\r_id_hold[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_ARID(0),
      I1 => S_ARVALID,
      I2 => \^s_arready\,
      I3 => r_id_hold,
      O => \r_id_hold[0]_i_1_n_0\
    );
\r_id_hold_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => S_AWREADY_i_1_n_0,
      D => \r_id_hold[0]_i_1_n_0\,
      Q => r_id_hold
    );
w_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FF070F0"
    )
        port map (
      I0 => S_WLAST,
      I1 => S_WVALID,
      I2 => w_active,
      I3 => \^s_arready\,
      I4 => S_AWVALID,
      O => w_active_i_1_n_0
    );
w_active_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => S_AWREADY_i_1_n_0,
      D => w_active_i_1_n_0,
      Q => w_active
    );
\w_id_hold[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AWID(0),
      I1 => S_AWVALID,
      I2 => \^s_arready\,
      I3 => w_id_hold,
      O => \w_id_hold[0]_i_1_n_0\
    );
\w_id_hold_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => S_AWREADY_i_1_n_0,
      D => \w_id_hold[0]_i_1_n_0\,
      Q => w_id_hold
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ACLK : in STD_LOGIC;
    ARESETn : in STD_LOGIC;
    S_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AWVALID : in STD_LOGIC;
    S_AWREADY : out STD_LOGIC;
    S_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_WLAST : in STD_LOGIC;
    S_WVALID : in STD_LOGIC;
    S_WREADY : out STD_LOGIC;
    S_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_BVALID : out STD_LOGIC;
    S_BREADY : in STD_LOGIC;
    S_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_ARVALID : in STD_LOGIC;
    S_ARREADY : out STD_LOGIC;
    S_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_RLAST : out STD_LOGIC;
    S_RVALID : out STD_LOGIC;
    S_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_2_axi_null_slave_0_0,axi_null_slave,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_null_slave,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_awready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ACLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S, ASSOCIATED_RESET ARESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ARESETn : signal is "xilinx.com:signal:reset:1.0 ARESETn RST";
  attribute X_INTERFACE_MODE of ARESETn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ARESETn : signal is "XIL_INTERFACENAME ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S ARREADY";
  attribute X_INTERFACE_INFO of S_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S ARVALID";
  attribute X_INTERFACE_INFO of S_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S AWREADY";
  attribute X_INTERFACE_INFO of S_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S AWVALID";
  attribute X_INTERFACE_INFO of S_BREADY : signal is "xilinx.com:interface:aximm:1.0 S BREADY";
  attribute X_INTERFACE_INFO of S_BVALID : signal is "xilinx.com:interface:aximm:1.0 S BVALID";
  attribute X_INTERFACE_INFO of S_RLAST : signal is "xilinx.com:interface:aximm:1.0 S RLAST";
  attribute X_INTERFACE_INFO of S_RREADY : signal is "xilinx.com:interface:aximm:1.0 S RREADY";
  attribute X_INTERFACE_INFO of S_RVALID : signal is "xilinx.com:interface:aximm:1.0 S RVALID";
  attribute X_INTERFACE_INFO of S_WLAST : signal is "xilinx.com:interface:aximm:1.0 S WLAST";
  attribute X_INTERFACE_INFO of S_WREADY : signal is "xilinx.com:interface:aximm:1.0 S WREADY";
  attribute X_INTERFACE_INFO of S_WVALID : signal is "xilinx.com:interface:aximm:1.0 S WVALID";
  attribute X_INTERFACE_INFO of S_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S ARADDR";
  attribute X_INTERFACE_INFO of S_ARBURST : signal is "xilinx.com:interface:aximm:1.0 S ARBURST";
  attribute X_INTERFACE_INFO of S_ARID : signal is "xilinx.com:interface:aximm:1.0 S ARID";
  attribute X_INTERFACE_INFO of S_ARLEN : signal is "xilinx.com:interface:aximm:1.0 S ARLEN";
  attribute X_INTERFACE_INFO of S_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 S ARSIZE";
  attribute X_INTERFACE_INFO of S_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S AWADDR";
  attribute X_INTERFACE_INFO of S_AWBURST : signal is "xilinx.com:interface:aximm:1.0 S AWBURST";
  attribute X_INTERFACE_INFO of S_AWID : signal is "xilinx.com:interface:aximm:1.0 S AWID";
  attribute X_INTERFACE_MODE of S_AWID : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AWID : signal is "XIL_INTERFACENAME S, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_2_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AWLEN : signal is "xilinx.com:interface:aximm:1.0 S AWLEN";
  attribute X_INTERFACE_INFO of S_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 S AWSIZE";
  attribute X_INTERFACE_INFO of S_BID : signal is "xilinx.com:interface:aximm:1.0 S BID";
  attribute X_INTERFACE_INFO of S_BRESP : signal is "xilinx.com:interface:aximm:1.0 S BRESP";
  attribute X_INTERFACE_INFO of S_RDATA : signal is "xilinx.com:interface:aximm:1.0 S RDATA";
  attribute X_INTERFACE_INFO of S_RID : signal is "xilinx.com:interface:aximm:1.0 S RID";
  attribute X_INTERFACE_INFO of S_RRESP : signal is "xilinx.com:interface:aximm:1.0 S RRESP";
  attribute X_INTERFACE_INFO of S_WDATA : signal is "xilinx.com:interface:aximm:1.0 S WDATA";
  attribute X_INTERFACE_INFO of S_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S WSTRB";
begin
  S_ARREADY <= \^s_awready\;
  S_AWREADY <= \^s_awready\;
  S_BRESP(1) <= \<const0>\;
  S_BRESP(0) <= \<const0>\;
  S_RDATA(63) <= \<const0>\;
  S_RDATA(62) <= \<const0>\;
  S_RDATA(61) <= \<const0>\;
  S_RDATA(60) <= \<const0>\;
  S_RDATA(59) <= \<const0>\;
  S_RDATA(58) <= \<const0>\;
  S_RDATA(57) <= \<const0>\;
  S_RDATA(56) <= \<const0>\;
  S_RDATA(55) <= \<const0>\;
  S_RDATA(54) <= \<const0>\;
  S_RDATA(53) <= \<const0>\;
  S_RDATA(52) <= \<const0>\;
  S_RDATA(51) <= \<const0>\;
  S_RDATA(50) <= \<const0>\;
  S_RDATA(49) <= \<const0>\;
  S_RDATA(48) <= \<const0>\;
  S_RDATA(47) <= \<const0>\;
  S_RDATA(46) <= \<const0>\;
  S_RDATA(45) <= \<const0>\;
  S_RDATA(44) <= \<const0>\;
  S_RDATA(43) <= \<const0>\;
  S_RDATA(42) <= \<const0>\;
  S_RDATA(41) <= \<const0>\;
  S_RDATA(40) <= \<const0>\;
  S_RDATA(39) <= \<const0>\;
  S_RDATA(38) <= \<const0>\;
  S_RDATA(37) <= \<const0>\;
  S_RDATA(36) <= \<const0>\;
  S_RDATA(35) <= \<const0>\;
  S_RDATA(34) <= \<const0>\;
  S_RDATA(33) <= \<const0>\;
  S_RDATA(32) <= \<const0>\;
  S_RDATA(31) <= \<const0>\;
  S_RDATA(30) <= \<const0>\;
  S_RDATA(29) <= \<const0>\;
  S_RDATA(28) <= \<const0>\;
  S_RDATA(27) <= \<const0>\;
  S_RDATA(26) <= \<const0>\;
  S_RDATA(25) <= \<const0>\;
  S_RDATA(24) <= \<const0>\;
  S_RDATA(23) <= \<const0>\;
  S_RDATA(22) <= \<const0>\;
  S_RDATA(21) <= \<const0>\;
  S_RDATA(20) <= \<const0>\;
  S_RDATA(19) <= \<const0>\;
  S_RDATA(18) <= \<const0>\;
  S_RDATA(17) <= \<const0>\;
  S_RDATA(16) <= \<const0>\;
  S_RDATA(15) <= \<const0>\;
  S_RDATA(14) <= \<const0>\;
  S_RDATA(13) <= \<const0>\;
  S_RDATA(12) <= \<const0>\;
  S_RDATA(11) <= \<const0>\;
  S_RDATA(10) <= \<const0>\;
  S_RDATA(9) <= \<const0>\;
  S_RDATA(8) <= \<const0>\;
  S_RDATA(7) <= \<const0>\;
  S_RDATA(6) <= \<const0>\;
  S_RDATA(5) <= \<const0>\;
  S_RDATA(4) <= \<const0>\;
  S_RDATA(3) <= \<const0>\;
  S_RDATA(2) <= \<const0>\;
  S_RDATA(1) <= \<const0>\;
  S_RDATA(0) <= \<const0>\;
  S_RRESP(1) <= \<const0>\;
  S_RRESP(0) <= \<const0>\;
  S_WREADY <= \^s_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_null_slave
     port map (
      ACLK => ACLK,
      ARESETn => ARESETn,
      S_ARID(0) => S_ARID(0),
      S_ARLEN(7 downto 0) => S_ARLEN(7 downto 0),
      S_ARREADY => \^s_awready\,
      S_ARVALID => S_ARVALID,
      S_AWID(0) => S_AWID(0),
      S_AWVALID => S_AWVALID,
      S_BID(0) => S_BID(0),
      S_BREADY => S_BREADY,
      S_BVALID => S_BVALID,
      S_RID(0) => S_RID(0),
      S_RLAST_reg_0 => S_RLAST,
      S_RREADY => S_RREADY,
      S_RVALID_reg_0 => S_RVALID,
      S_WLAST => S_WLAST,
      S_WVALID => S_WVALID
    );
end STRUCTURE;
