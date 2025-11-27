-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Nov 26 10:52:19 2025
-- Host        : OMEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/liuzh/Desktop/AD9238/vivado_files/ad9238/ad9238.gen/sources_1/bd/design_1/ip/design_1_fifo_ddr_bridge_0_3/design_1_fifo_ddr_bridge_0_3_sim_netlist.vhdl
-- Design      : design_1_fifo_ddr_bridge_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge_v1_0_M00_AXI is
  port (
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    s_ready : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    s_valid : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    s_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge_v1_0_M00_AXI : entity is "fifo_ddr_bridge_v1_0_M00_AXI";
end design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge_v1_0_M00_AXI;

architecture STRUCTURE of design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge_v1_0_M00_AXI is
  signal ERROR_i_1_n_0 : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_n_3\ : STD_LOGIC;
  signal M_AXI_AWADDR_carry_i_1_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_1 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_2 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_3 : STD_LOGIC;
  signal TXN_DONE_i_2_n_0 : STD_LOGIC;
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^m00_axi_awvalid\ : STD_LOGIC;
  signal \^m00_axi_error\ : STD_LOGIC;
  signal \^m00_axi_txn_done\ : STD_LOGIC;
  signal \^m00_axi_wvalid\ : STD_LOGIC;
  signal r_awaddr_off0 : STD_LOGIC;
  signal \r_awaddr_off[6]_i_2_n_0\ : STD_LOGIC;
  signal r_awaddr_off_reg : STD_LOGIC_VECTOR ( 31 downto 23 );
  signal \r_awaddr_off_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_awaddr_off_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \r_awaddr_off_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \r_awaddr_off_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \r_awaddr_off_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \r_awaddr_off_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \r_awaddr_off_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \r_awaddr_off_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \r_awaddr_off_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_awaddr_off_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \r_awaddr_off_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \r_awaddr_off_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \r_awaddr_off_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \r_awaddr_off_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \r_awaddr_off_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \r_awaddr_off_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \r_awaddr_off_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_awaddr_off_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \r_awaddr_off_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \r_awaddr_off_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \r_awaddr_off_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \r_awaddr_off_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \r_awaddr_off_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \r_awaddr_off_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \r_awaddr_off_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \r_awaddr_off_reg[22]_i_2_n_1\ : STD_LOGIC;
  signal \r_awaddr_off_reg[22]_i_2_n_2\ : STD_LOGIC;
  signal \r_awaddr_off_reg[22]_i_2_n_3\ : STD_LOGIC;
  signal \r_awaddr_off_reg[22]_i_2_n_4\ : STD_LOGIC;
  signal \r_awaddr_off_reg[22]_i_2_n_5\ : STD_LOGIC;
  signal \r_awaddr_off_reg[22]_i_2_n_6\ : STD_LOGIC;
  signal \r_awaddr_off_reg[22]_i_2_n_7\ : STD_LOGIC;
  signal \r_awaddr_off_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_awaddr_off_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \r_awaddr_off_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \r_awaddr_off_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \r_awaddr_off_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \r_awaddr_off_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \r_awaddr_off_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \r_awaddr_off_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \r_awaddr_off_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \r_awaddr_off_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \r_awaddr_off_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \r_awaddr_off_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \r_awaddr_off_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \r_awaddr_off_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \r_awaddr_off_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \r_awaddr_off_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \r_awaddr_off_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \r_awaddr_off_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_awaddr_off_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \r_awaddr_off_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \r_awaddr_off_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \r_awaddr_off_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \r_awaddr_off_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \r_awaddr_off_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \r_awaddr_off_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal r_awvalid_i_1_n_0 : STD_LOGIC;
  signal \r_done_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal r_done_cnt_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \r_done_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_done_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_done_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_done_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_done_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_done_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_done_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_done_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_done_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_done_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_done_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_done_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_done_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_done_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_done_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_done_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_done_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_done_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_done_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_done_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_done_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_done_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_done_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_done_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_done_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal r_inflight : STD_LOGIC;
  signal r_inflight_i_1_n_0 : STD_LOGIC;
  signal r_txn_done : STD_LOGIC;
  signal r_txn_done0 : STD_LOGIC;
  signal r_txn_done_i_2_n_0 : STD_LOGIC;
  signal r_txn_done_i_4_n_0 : STD_LOGIC;
  signal r_txn_done_reg_i_3_n_0 : STD_LOGIC;
  signal r_txn_done_reg_i_3_n_1 : STD_LOGIC;
  signal r_txn_done_reg_i_3_n_2 : STD_LOGIC;
  signal r_txn_done_reg_i_3_n_3 : STD_LOGIC;
  signal r_txn_done_reg_i_3_n_4 : STD_LOGIC;
  signal r_txn_done_reg_i_3_n_5 : STD_LOGIC;
  signal r_txn_done_reg_i_3_n_6 : STD_LOGIC;
  signal r_txn_done_reg_i_3_n_7 : STD_LOGIC;
  signal r_txn_done_reg_i_5_n_0 : STD_LOGIC;
  signal r_txn_done_reg_i_5_n_1 : STD_LOGIC;
  signal r_txn_done_reg_i_5_n_2 : STD_LOGIC;
  signal r_txn_done_reg_i_5_n_3 : STD_LOGIC;
  signal r_txn_done_reg_i_5_n_4 : STD_LOGIC;
  signal r_txn_done_reg_i_5_n_5 : STD_LOGIC;
  signal r_txn_done_reg_i_5_n_6 : STD_LOGIC;
  signal r_txn_done_reg_i_5_n_7 : STD_LOGIC;
  signal r_txn_done_reg_i_6_n_3 : STD_LOGIC;
  signal r_txn_done_reg_i_7_n_0 : STD_LOGIC;
  signal r_txn_done_reg_i_7_n_1 : STD_LOGIC;
  signal r_txn_done_reg_i_7_n_2 : STD_LOGIC;
  signal r_txn_done_reg_i_7_n_3 : STD_LOGIC;
  signal r_txn_done_reg_i_7_n_4 : STD_LOGIC;
  signal r_txn_done_reg_i_7_n_5 : STD_LOGIC;
  signal r_txn_done_reg_i_7_n_6 : STD_LOGIC;
  signal r_txn_done_reg_i_7_n_7 : STD_LOGIC;
  signal r_wvalid_i_1_n_0 : STD_LOGIC;
  signal s_ready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_ready_INST_0_i_2_n_0 : STD_LOGIC;
  signal take_sample : STD_LOGIC;
  signal w_sys_rst : STD_LOGIC;
  signal \NLW_M_AXI_AWADDR_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_M_AXI_AWADDR_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_awaddr_off_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_awaddr_off_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_done_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_done_cnt_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_r_txn_done_reg_i_6_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_r_txn_done_reg_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of M_AXI_AWADDR_carry : label is 35;
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_awaddr_off_reg[10]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_awaddr_off_reg[14]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_awaddr_off_reg[18]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_awaddr_off_reg[22]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \r_awaddr_off_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_awaddr_off_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_awaddr_off_reg[31]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_awaddr_off_reg[6]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_done_cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_done_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_done_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_done_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of r_inflight_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_ready_INST_0 : label is "soft_lutpair0";
begin
  m00_axi_awaddr(28 downto 0) <= \^m00_axi_awaddr\(28 downto 0);
  m00_axi_awvalid <= \^m00_axi_awvalid\;
  m00_axi_error <= \^m00_axi_error\;
  m00_axi_txn_done <= \^m00_axi_txn_done\;
  m00_axi_wvalid <= \^m00_axi_wvalid\;
ERROR_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m00_axi_bresp(0),
      I1 => m00_axi_bvalid,
      I2 => \^m00_axi_error\,
      O => ERROR_i_1_n_0
    );
ERROR_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => ERROR_i_1_n_0,
      Q => \^m00_axi_error\,
      R => w_sys_rst
    );
M_AXI_AWADDR_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => M_AXI_AWADDR_carry_n_0,
      CO(2) => M_AXI_AWADDR_carry_n_1,
      CO(1) => M_AXI_AWADDR_carry_n_2,
      CO(0) => M_AXI_AWADDR_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => r_awaddr_off_reg(24),
      DI(0) => '0',
      O(3 downto 0) => \^m00_axi_awaddr\(23 downto 20),
      S(3 downto 2) => r_awaddr_off_reg(26 downto 25),
      S(1) => M_AXI_AWADDR_carry_i_1_n_0,
      S(0) => r_awaddr_off_reg(23)
    );
\M_AXI_AWADDR_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => M_AXI_AWADDR_carry_n_0,
      CO(3) => \M_AXI_AWADDR_carry__0_n_0\,
      CO(2) => \M_AXI_AWADDR_carry__0_n_1\,
      CO(1) => \M_AXI_AWADDR_carry__0_n_2\,
      CO(0) => \M_AXI_AWADDR_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^m00_axi_awaddr\(27 downto 24),
      S(3 downto 0) => r_awaddr_off_reg(30 downto 27)
    );
\M_AXI_AWADDR_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_carry__0_n_0\,
      CO(3 downto 0) => \NLW_M_AXI_AWADDR_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_M_AXI_AWADDR_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \^m00_axi_awaddr\(28),
      S(3 downto 1) => B"000",
      S(0) => r_awaddr_off_reg(31)
    );
M_AXI_AWADDR_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_awaddr_off_reg(24),
      O => M_AXI_AWADDR_carry_i_1_n_0
    );
TXN_DONE_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axi_aresetn,
      O => w_sys_rst
    );
TXN_DONE_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_txn_done,
      I1 => \^m00_axi_txn_done\,
      O => TXN_DONE_i_2_n_0
    );
TXN_DONE_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => TXN_DONE_i_2_n_0,
      Q => \^m00_axi_txn_done\,
      R => w_sys_rst
    );
\r_awaddr_off[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_ready_INST_0_i_1_n_0,
      I1 => m00_axi_bvalid,
      O => r_awaddr_off0
    );
\r_awaddr_off[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m00_axi_awaddr\(0),
      O => \r_awaddr_off[6]_i_2_n_0\
    );
\r_awaddr_off_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[10]_i_1_n_4\,
      Q => \^m00_axi_awaddr\(7),
      R => w_sys_rst
    );
\r_awaddr_off_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_awaddr_off_reg[6]_i_1_n_0\,
      CO(3) => \r_awaddr_off_reg[10]_i_1_n_0\,
      CO(2) => \r_awaddr_off_reg[10]_i_1_n_1\,
      CO(1) => \r_awaddr_off_reg[10]_i_1_n_2\,
      CO(0) => \r_awaddr_off_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_awaddr_off_reg[10]_i_1_n_4\,
      O(2) => \r_awaddr_off_reg[10]_i_1_n_5\,
      O(1) => \r_awaddr_off_reg[10]_i_1_n_6\,
      O(0) => \r_awaddr_off_reg[10]_i_1_n_7\,
      S(3 downto 0) => \^m00_axi_awaddr\(7 downto 4)
    );
\r_awaddr_off_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[14]_i_1_n_7\,
      Q => \^m00_axi_awaddr\(8),
      R => w_sys_rst
    );
\r_awaddr_off_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[14]_i_1_n_6\,
      Q => \^m00_axi_awaddr\(9),
      R => w_sys_rst
    );
\r_awaddr_off_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[14]_i_1_n_5\,
      Q => \^m00_axi_awaddr\(10),
      R => w_sys_rst
    );
\r_awaddr_off_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[14]_i_1_n_4\,
      Q => \^m00_axi_awaddr\(11),
      R => w_sys_rst
    );
\r_awaddr_off_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_awaddr_off_reg[10]_i_1_n_0\,
      CO(3) => \r_awaddr_off_reg[14]_i_1_n_0\,
      CO(2) => \r_awaddr_off_reg[14]_i_1_n_1\,
      CO(1) => \r_awaddr_off_reg[14]_i_1_n_2\,
      CO(0) => \r_awaddr_off_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_awaddr_off_reg[14]_i_1_n_4\,
      O(2) => \r_awaddr_off_reg[14]_i_1_n_5\,
      O(1) => \r_awaddr_off_reg[14]_i_1_n_6\,
      O(0) => \r_awaddr_off_reg[14]_i_1_n_7\,
      S(3 downto 0) => \^m00_axi_awaddr\(11 downto 8)
    );
\r_awaddr_off_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[18]_i_1_n_7\,
      Q => \^m00_axi_awaddr\(12),
      R => w_sys_rst
    );
\r_awaddr_off_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[18]_i_1_n_6\,
      Q => \^m00_axi_awaddr\(13),
      R => w_sys_rst
    );
\r_awaddr_off_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[18]_i_1_n_5\,
      Q => \^m00_axi_awaddr\(14),
      R => w_sys_rst
    );
\r_awaddr_off_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[18]_i_1_n_4\,
      Q => \^m00_axi_awaddr\(15),
      R => w_sys_rst
    );
\r_awaddr_off_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_awaddr_off_reg[14]_i_1_n_0\,
      CO(3) => \r_awaddr_off_reg[18]_i_1_n_0\,
      CO(2) => \r_awaddr_off_reg[18]_i_1_n_1\,
      CO(1) => \r_awaddr_off_reg[18]_i_1_n_2\,
      CO(0) => \r_awaddr_off_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_awaddr_off_reg[18]_i_1_n_4\,
      O(2) => \r_awaddr_off_reg[18]_i_1_n_5\,
      O(1) => \r_awaddr_off_reg[18]_i_1_n_6\,
      O(0) => \r_awaddr_off_reg[18]_i_1_n_7\,
      S(3 downto 0) => \^m00_axi_awaddr\(15 downto 12)
    );
\r_awaddr_off_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[22]_i_2_n_7\,
      Q => \^m00_axi_awaddr\(16),
      R => w_sys_rst
    );
\r_awaddr_off_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[22]_i_2_n_6\,
      Q => \^m00_axi_awaddr\(17),
      R => w_sys_rst
    );
\r_awaddr_off_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[22]_i_2_n_5\,
      Q => \^m00_axi_awaddr\(18),
      R => w_sys_rst
    );
\r_awaddr_off_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[22]_i_2_n_4\,
      Q => \^m00_axi_awaddr\(19),
      R => w_sys_rst
    );
\r_awaddr_off_reg[22]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_awaddr_off_reg[18]_i_1_n_0\,
      CO(3) => \r_awaddr_off_reg[22]_i_2_n_0\,
      CO(2) => \r_awaddr_off_reg[22]_i_2_n_1\,
      CO(1) => \r_awaddr_off_reg[22]_i_2_n_2\,
      CO(0) => \r_awaddr_off_reg[22]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_awaddr_off_reg[22]_i_2_n_4\,
      O(2) => \r_awaddr_off_reg[22]_i_2_n_5\,
      O(1) => \r_awaddr_off_reg[22]_i_2_n_6\,
      O(0) => \r_awaddr_off_reg[22]_i_2_n_7\,
      S(3 downto 0) => \^m00_axi_awaddr\(19 downto 16)
    );
\r_awaddr_off_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[23]_i_1_n_7\,
      Q => r_awaddr_off_reg(23),
      R => w_sys_rst
    );
\r_awaddr_off_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_awaddr_off_reg[22]_i_2_n_0\,
      CO(3) => \r_awaddr_off_reg[23]_i_1_n_0\,
      CO(2) => \r_awaddr_off_reg[23]_i_1_n_1\,
      CO(1) => \r_awaddr_off_reg[23]_i_1_n_2\,
      CO(0) => \r_awaddr_off_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_awaddr_off_reg[23]_i_1_n_4\,
      O(2) => \r_awaddr_off_reg[23]_i_1_n_5\,
      O(1) => \r_awaddr_off_reg[23]_i_1_n_6\,
      O(0) => \r_awaddr_off_reg[23]_i_1_n_7\,
      S(3 downto 0) => r_awaddr_off_reg(26 downto 23)
    );
\r_awaddr_off_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[23]_i_1_n_6\,
      Q => r_awaddr_off_reg(24),
      R => w_sys_rst
    );
\r_awaddr_off_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[23]_i_1_n_5\,
      Q => r_awaddr_off_reg(25),
      R => w_sys_rst
    );
\r_awaddr_off_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[23]_i_1_n_4\,
      Q => r_awaddr_off_reg(26),
      R => w_sys_rst
    );
\r_awaddr_off_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[27]_i_1_n_7\,
      Q => r_awaddr_off_reg(27),
      R => w_sys_rst
    );
\r_awaddr_off_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_awaddr_off_reg[23]_i_1_n_0\,
      CO(3) => \r_awaddr_off_reg[27]_i_1_n_0\,
      CO(2) => \r_awaddr_off_reg[27]_i_1_n_1\,
      CO(1) => \r_awaddr_off_reg[27]_i_1_n_2\,
      CO(0) => \r_awaddr_off_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_awaddr_off_reg[27]_i_1_n_4\,
      O(2) => \r_awaddr_off_reg[27]_i_1_n_5\,
      O(1) => \r_awaddr_off_reg[27]_i_1_n_6\,
      O(0) => \r_awaddr_off_reg[27]_i_1_n_7\,
      S(3 downto 0) => r_awaddr_off_reg(30 downto 27)
    );
\r_awaddr_off_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[27]_i_1_n_6\,
      Q => r_awaddr_off_reg(28),
      R => w_sys_rst
    );
\r_awaddr_off_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[27]_i_1_n_5\,
      Q => r_awaddr_off_reg(29),
      R => w_sys_rst
    );
\r_awaddr_off_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[27]_i_1_n_4\,
      Q => r_awaddr_off_reg(30),
      R => w_sys_rst
    );
\r_awaddr_off_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[31]_i_1_n_7\,
      Q => r_awaddr_off_reg(31),
      R => w_sys_rst
    );
\r_awaddr_off_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_awaddr_off_reg[27]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_awaddr_off_reg[31]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_awaddr_off_reg[31]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_awaddr_off_reg[31]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => r_awaddr_off_reg(31)
    );
\r_awaddr_off_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[6]_i_1_n_7\,
      Q => \^m00_axi_awaddr\(0),
      R => w_sys_rst
    );
\r_awaddr_off_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[6]_i_1_n_6\,
      Q => \^m00_axi_awaddr\(1),
      R => w_sys_rst
    );
\r_awaddr_off_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[6]_i_1_n_5\,
      Q => \^m00_axi_awaddr\(2),
      R => w_sys_rst
    );
\r_awaddr_off_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[6]_i_1_n_4\,
      Q => \^m00_axi_awaddr\(3),
      R => w_sys_rst
    );
\r_awaddr_off_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_awaddr_off_reg[6]_i_1_n_0\,
      CO(2) => \r_awaddr_off_reg[6]_i_1_n_1\,
      CO(1) => \r_awaddr_off_reg[6]_i_1_n_2\,
      CO(0) => \r_awaddr_off_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_awaddr_off_reg[6]_i_1_n_4\,
      O(2) => \r_awaddr_off_reg[6]_i_1_n_5\,
      O(1) => \r_awaddr_off_reg[6]_i_1_n_6\,
      O(0) => \r_awaddr_off_reg[6]_i_1_n_7\,
      S(3 downto 1) => \^m00_axi_awaddr\(3 downto 1),
      S(0) => \r_awaddr_off[6]_i_2_n_0\
    );
\r_awaddr_off_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[10]_i_1_n_7\,
      Q => \^m00_axi_awaddr\(4),
      R => w_sys_rst
    );
\r_awaddr_off_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[10]_i_1_n_6\,
      Q => \^m00_axi_awaddr\(5),
      R => w_sys_rst
    );
\r_awaddr_off_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_awaddr_off_reg[10]_i_1_n_5\,
      Q => \^m00_axi_awaddr\(6),
      R => w_sys_rst
    );
r_awvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0040004000"
    )
        port map (
      I0 => r_inflight,
      I1 => s_valid,
      I2 => s_ready_INST_0_i_1_n_0,
      I3 => m00_axi_aresetn,
      I4 => m00_axi_awready,
      I5 => \^m00_axi_awvalid\,
      O => r_awvalid_i_1_n_0
    );
r_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => r_awvalid_i_1_n_0,
      Q => \^m00_axi_awvalid\,
      R => '0'
    );
\r_done_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_done_cnt_reg(0),
      O => \r_done_cnt[0]_i_2_n_0\
    );
\r_done_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[0]_i_1_n_7\,
      Q => r_done_cnt_reg(0),
      R => w_sys_rst
    );
\r_done_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_done_cnt_reg[0]_i_1_n_0\,
      CO(2) => \r_done_cnt_reg[0]_i_1_n_1\,
      CO(1) => \r_done_cnt_reg[0]_i_1_n_2\,
      CO(0) => \r_done_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_done_cnt_reg[0]_i_1_n_4\,
      O(2) => \r_done_cnt_reg[0]_i_1_n_5\,
      O(1) => \r_done_cnt_reg[0]_i_1_n_6\,
      O(0) => \r_done_cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => r_done_cnt_reg(3 downto 1),
      S(0) => \r_done_cnt[0]_i_2_n_0\
    );
\r_done_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[8]_i_1_n_5\,
      Q => r_done_cnt_reg(10),
      R => w_sys_rst
    );
\r_done_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[8]_i_1_n_4\,
      Q => r_done_cnt_reg(11),
      R => w_sys_rst
    );
\r_done_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[12]_i_1_n_7\,
      Q => r_done_cnt_reg(12),
      R => w_sys_rst
    );
\r_done_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_done_cnt_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_done_cnt_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_done_cnt_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_done_cnt_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => r_done_cnt_reg(12)
    );
\r_done_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[0]_i_1_n_6\,
      Q => r_done_cnt_reg(1),
      R => w_sys_rst
    );
\r_done_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[0]_i_1_n_5\,
      Q => r_done_cnt_reg(2),
      R => w_sys_rst
    );
\r_done_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[0]_i_1_n_4\,
      Q => r_done_cnt_reg(3),
      R => w_sys_rst
    );
\r_done_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[4]_i_1_n_7\,
      Q => r_done_cnt_reg(4),
      R => w_sys_rst
    );
\r_done_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_done_cnt_reg[0]_i_1_n_0\,
      CO(3) => \r_done_cnt_reg[4]_i_1_n_0\,
      CO(2) => \r_done_cnt_reg[4]_i_1_n_1\,
      CO(1) => \r_done_cnt_reg[4]_i_1_n_2\,
      CO(0) => \r_done_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_done_cnt_reg[4]_i_1_n_4\,
      O(2) => \r_done_cnt_reg[4]_i_1_n_5\,
      O(1) => \r_done_cnt_reg[4]_i_1_n_6\,
      O(0) => \r_done_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => r_done_cnt_reg(7 downto 4)
    );
\r_done_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[4]_i_1_n_6\,
      Q => r_done_cnt_reg(5),
      R => w_sys_rst
    );
\r_done_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[4]_i_1_n_5\,
      Q => r_done_cnt_reg(6),
      R => w_sys_rst
    );
\r_done_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[4]_i_1_n_4\,
      Q => r_done_cnt_reg(7),
      R => w_sys_rst
    );
\r_done_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[8]_i_1_n_7\,
      Q => r_done_cnt_reg(8),
      R => w_sys_rst
    );
\r_done_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_done_cnt_reg[4]_i_1_n_0\,
      CO(3) => \r_done_cnt_reg[8]_i_1_n_0\,
      CO(2) => \r_done_cnt_reg[8]_i_1_n_1\,
      CO(1) => \r_done_cnt_reg[8]_i_1_n_2\,
      CO(0) => \r_done_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_done_cnt_reg[8]_i_1_n_4\,
      O(2) => \r_done_cnt_reg[8]_i_1_n_5\,
      O(1) => \r_done_cnt_reg[8]_i_1_n_6\,
      O(0) => \r_done_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => r_done_cnt_reg(11 downto 8)
    );
\r_done_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => r_awaddr_off0,
      D => \r_done_cnt_reg[8]_i_1_n_6\,
      Q => r_done_cnt_reg(9),
      R => w_sys_rst
    );
r_inflight_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40EA"
    )
        port map (
      I0 => r_inflight,
      I1 => s_valid,
      I2 => s_ready_INST_0_i_1_n_0,
      I3 => m00_axi_bvalid,
      O => r_inflight_i_1_n_0
    );
r_inflight_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => r_inflight_i_1_n_0,
      Q => r_inflight,
      R => w_sys_rst
    );
r_txn_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => r_txn_done_i_2_n_0,
      I1 => r_txn_done_reg_i_3_n_6,
      I2 => r_txn_done_reg_i_3_n_5,
      I3 => r_txn_done_reg_i_3_n_7,
      I4 => r_txn_done_i_4_n_0,
      O => r_txn_done0
    );
r_txn_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => r_txn_done_reg_i_5_n_4,
      I1 => r_txn_done_reg_i_6_n_3,
      I2 => r_txn_done_reg_i_5_n_6,
      I3 => r_txn_done_reg_i_5_n_5,
      I4 => m00_axi_bvalid,
      I5 => r_done_cnt_reg(0),
      O => r_txn_done_i_2_n_0
    );
r_txn_done_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => r_txn_done_reg_i_7_n_5,
      I1 => r_txn_done_reg_i_7_n_6,
      I2 => r_txn_done_reg_i_3_n_4,
      I3 => r_txn_done_reg_i_7_n_7,
      I4 => r_txn_done_reg_i_5_n_7,
      I5 => r_txn_done_reg_i_7_n_4,
      O => r_txn_done_i_4_n_0
    );
r_txn_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => r_txn_done0,
      Q => r_txn_done,
      R => w_sys_rst
    );
r_txn_done_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_txn_done_reg_i_3_n_0,
      CO(2) => r_txn_done_reg_i_3_n_1,
      CO(1) => r_txn_done_reg_i_3_n_2,
      CO(0) => r_txn_done_reg_i_3_n_3,
      CYINIT => r_done_cnt_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => r_txn_done_reg_i_3_n_4,
      O(2) => r_txn_done_reg_i_3_n_5,
      O(1) => r_txn_done_reg_i_3_n_6,
      O(0) => r_txn_done_reg_i_3_n_7,
      S(3 downto 0) => r_done_cnt_reg(4 downto 1)
    );
r_txn_done_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => r_txn_done_reg_i_7_n_0,
      CO(3) => r_txn_done_reg_i_5_n_0,
      CO(2) => r_txn_done_reg_i_5_n_1,
      CO(1) => r_txn_done_reg_i_5_n_2,
      CO(0) => r_txn_done_reg_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => r_txn_done_reg_i_5_n_4,
      O(2) => r_txn_done_reg_i_5_n_5,
      O(1) => r_txn_done_reg_i_5_n_6,
      O(0) => r_txn_done_reg_i_5_n_7,
      S(3 downto 0) => r_done_cnt_reg(12 downto 9)
    );
r_txn_done_reg_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => r_txn_done_reg_i_5_n_0,
      CO(3 downto 1) => NLW_r_txn_done_reg_i_6_CO_UNCONNECTED(3 downto 1),
      CO(0) => r_txn_done_reg_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_r_txn_done_reg_i_6_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
r_txn_done_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => r_txn_done_reg_i_3_n_0,
      CO(3) => r_txn_done_reg_i_7_n_0,
      CO(2) => r_txn_done_reg_i_7_n_1,
      CO(1) => r_txn_done_reg_i_7_n_2,
      CO(0) => r_txn_done_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => r_txn_done_reg_i_7_n_4,
      O(2) => r_txn_done_reg_i_7_n_5,
      O(1) => r_txn_done_reg_i_7_n_6,
      O(0) => r_txn_done_reg_i_7_n_7,
      S(3 downto 0) => r_done_cnt_reg(8 downto 5)
    );
\r_wdata[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => r_inflight,
      I1 => s_valid,
      I2 => s_ready_INST_0_i_1_n_0,
      O => take_sample
    );
\r_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(0),
      Q => m00_axi_wdata(0),
      R => w_sys_rst
    );
\r_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(10),
      Q => m00_axi_wdata(10),
      R => w_sys_rst
    );
\r_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(11),
      Q => m00_axi_wdata(11),
      R => w_sys_rst
    );
\r_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(12),
      Q => m00_axi_wdata(12),
      R => w_sys_rst
    );
\r_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(13),
      Q => m00_axi_wdata(13),
      R => w_sys_rst
    );
\r_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(14),
      Q => m00_axi_wdata(14),
      R => w_sys_rst
    );
\r_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(15),
      Q => m00_axi_wdata(15),
      R => w_sys_rst
    );
\r_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(16),
      Q => m00_axi_wdata(16),
      R => w_sys_rst
    );
\r_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(17),
      Q => m00_axi_wdata(17),
      R => w_sys_rst
    );
\r_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(18),
      Q => m00_axi_wdata(18),
      R => w_sys_rst
    );
\r_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(19),
      Q => m00_axi_wdata(19),
      R => w_sys_rst
    );
\r_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(1),
      Q => m00_axi_wdata(1),
      R => w_sys_rst
    );
\r_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(20),
      Q => m00_axi_wdata(20),
      R => w_sys_rst
    );
\r_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(21),
      Q => m00_axi_wdata(21),
      R => w_sys_rst
    );
\r_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(22),
      Q => m00_axi_wdata(22),
      R => w_sys_rst
    );
\r_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(23),
      Q => m00_axi_wdata(23),
      R => w_sys_rst
    );
\r_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(24),
      Q => m00_axi_wdata(24),
      R => w_sys_rst
    );
\r_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(25),
      Q => m00_axi_wdata(25),
      R => w_sys_rst
    );
\r_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(26),
      Q => m00_axi_wdata(26),
      R => w_sys_rst
    );
\r_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(27),
      Q => m00_axi_wdata(27),
      R => w_sys_rst
    );
\r_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(28),
      Q => m00_axi_wdata(28),
      R => w_sys_rst
    );
\r_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(29),
      Q => m00_axi_wdata(29),
      R => w_sys_rst
    );
\r_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(2),
      Q => m00_axi_wdata(2),
      R => w_sys_rst
    );
\r_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(30),
      Q => m00_axi_wdata(30),
      R => w_sys_rst
    );
\r_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(31),
      Q => m00_axi_wdata(31),
      R => w_sys_rst
    );
\r_wdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(32),
      Q => m00_axi_wdata(32),
      R => w_sys_rst
    );
\r_wdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(33),
      Q => m00_axi_wdata(33),
      R => w_sys_rst
    );
\r_wdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(34),
      Q => m00_axi_wdata(34),
      R => w_sys_rst
    );
\r_wdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(35),
      Q => m00_axi_wdata(35),
      R => w_sys_rst
    );
\r_wdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(36),
      Q => m00_axi_wdata(36),
      R => w_sys_rst
    );
\r_wdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(37),
      Q => m00_axi_wdata(37),
      R => w_sys_rst
    );
\r_wdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(38),
      Q => m00_axi_wdata(38),
      R => w_sys_rst
    );
\r_wdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(39),
      Q => m00_axi_wdata(39),
      R => w_sys_rst
    );
\r_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(3),
      Q => m00_axi_wdata(3),
      R => w_sys_rst
    );
\r_wdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(40),
      Q => m00_axi_wdata(40),
      R => w_sys_rst
    );
\r_wdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(41),
      Q => m00_axi_wdata(41),
      R => w_sys_rst
    );
\r_wdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(42),
      Q => m00_axi_wdata(42),
      R => w_sys_rst
    );
\r_wdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(43),
      Q => m00_axi_wdata(43),
      R => w_sys_rst
    );
\r_wdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(44),
      Q => m00_axi_wdata(44),
      R => w_sys_rst
    );
\r_wdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(45),
      Q => m00_axi_wdata(45),
      R => w_sys_rst
    );
\r_wdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(46),
      Q => m00_axi_wdata(46),
      R => w_sys_rst
    );
\r_wdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(47),
      Q => m00_axi_wdata(47),
      R => w_sys_rst
    );
\r_wdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(48),
      Q => m00_axi_wdata(48),
      R => w_sys_rst
    );
\r_wdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(49),
      Q => m00_axi_wdata(49),
      R => w_sys_rst
    );
\r_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(4),
      Q => m00_axi_wdata(4),
      R => w_sys_rst
    );
\r_wdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(50),
      Q => m00_axi_wdata(50),
      R => w_sys_rst
    );
\r_wdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(51),
      Q => m00_axi_wdata(51),
      R => w_sys_rst
    );
\r_wdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(52),
      Q => m00_axi_wdata(52),
      R => w_sys_rst
    );
\r_wdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(53),
      Q => m00_axi_wdata(53),
      R => w_sys_rst
    );
\r_wdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(54),
      Q => m00_axi_wdata(54),
      R => w_sys_rst
    );
\r_wdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(55),
      Q => m00_axi_wdata(55),
      R => w_sys_rst
    );
\r_wdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(56),
      Q => m00_axi_wdata(56),
      R => w_sys_rst
    );
\r_wdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(57),
      Q => m00_axi_wdata(57),
      R => w_sys_rst
    );
\r_wdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(58),
      Q => m00_axi_wdata(58),
      R => w_sys_rst
    );
\r_wdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(59),
      Q => m00_axi_wdata(59),
      R => w_sys_rst
    );
\r_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(5),
      Q => m00_axi_wdata(5),
      R => w_sys_rst
    );
\r_wdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(60),
      Q => m00_axi_wdata(60),
      R => w_sys_rst
    );
\r_wdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(61),
      Q => m00_axi_wdata(61),
      R => w_sys_rst
    );
\r_wdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(62),
      Q => m00_axi_wdata(62),
      R => w_sys_rst
    );
\r_wdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(63),
      Q => m00_axi_wdata(63),
      R => w_sys_rst
    );
\r_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(6),
      Q => m00_axi_wdata(6),
      R => w_sys_rst
    );
\r_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(7),
      Q => m00_axi_wdata(7),
      R => w_sys_rst
    );
\r_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(8),
      Q => m00_axi_wdata(8),
      R => w_sys_rst
    );
\r_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => take_sample,
      D => s_data(9),
      Q => m00_axi_wdata(9),
      R => w_sys_rst
    );
r_wvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0040004000"
    )
        port map (
      I0 => r_inflight,
      I1 => s_valid,
      I2 => s_ready_INST_0_i_1_n_0,
      I3 => m00_axi_aresetn,
      I4 => m00_axi_wready,
      I5 => \^m00_axi_wvalid\,
      O => r_wvalid_i_1_n_0
    );
r_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => r_wvalid_i_1_n_0,
      Q => \^m00_axi_wvalid\,
      R => '0'
    );
s_ready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_ready_INST_0_i_1_n_0,
      I1 => r_inflight,
      O => s_ready
    );
s_ready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F7FFFFFFFF"
    )
        port map (
      I0 => r_done_cnt_reg(8),
      I1 => r_done_cnt_reg(7),
      I2 => s_ready_INST_0_i_2_n_0,
      I3 => r_done_cnt_reg(10),
      I4 => r_done_cnt_reg(11),
      I5 => r_done_cnt_reg(12),
      O => s_ready_INST_0_i_1_n_0
    );
s_ready_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => r_done_cnt_reg(5),
      I1 => r_done_cnt_reg(6),
      I2 => r_done_cnt_reg(3),
      I3 => r_done_cnt_reg(4),
      I4 => r_done_cnt_reg(9),
      O => s_ready_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge is
  port (
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    s_ready : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    s_valid : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    s_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge : entity is "fifo_ddr_bridge";
end design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge;

architecture STRUCTURE of design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge is
begin
u_axi_master: entity work.design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge_v1_0_M00_AXI
     port map (
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_awaddr(28 downto 0) => m00_axi_awaddr(28 downto 0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bresp(0) => m00_axi_bresp(0),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_error => m00_axi_error,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_wdata(63 downto 0) => m00_axi_wdata(63 downto 0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wvalid => m00_axi_wvalid,
      s_data(63 downto 0) => s_data(63 downto 0),
      s_ready => s_ready,
      s_valid => s_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_ddr_bridge_0_3 is
  port (
    s_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_valid : in STD_LOGIC;
    s_ready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fifo_ddr_bridge_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fifo_ddr_bridge_0_3 : entity is "design_1_fifo_ddr_bridge_0_3,fifo_ddr_bridge,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fifo_ddr_bridge_0_3 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_fifo_ddr_bridge_0_3 : entity is "fifo_ddr_bridge,Vivado 2025.1";
end design_1_fifo_ddr_bridge_0_3;

architecture STRUCTURE of design_1_fifo_ddr_bridge_0_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 3 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of m00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axi_aclk : signal is "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_SYS_CLK_50M, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXI_RST RST";
  attribute X_INTERFACE_MODE of m00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of m00_axi_aresetn : signal is "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of m00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of m00_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of m00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of m00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of m00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of m00_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  attribute X_INTERFACE_INFO of m00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_INFO of m00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of m00_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  attribute X_INTERFACE_INFO of m00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of m00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of m00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of m00_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of m00_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m00_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  attribute X_INTERFACE_INFO of m00_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of m00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of m00_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of m00_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m00_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER";
  attribute X_INTERFACE_INFO of m00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of m00_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of m00_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m00_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  attribute X_INTERFACE_MODE of m00_axi_awid : signal is "master";
  attribute X_INTERFACE_PARAMETER of m00_axi_awid : signal is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_SYS_CLK_50M, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of m00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of m00_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of m00_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m00_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER";
  attribute X_INTERFACE_INFO of m00_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  attribute X_INTERFACE_INFO of m00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of m00_axi_buser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BUSER";
  attribute X_INTERFACE_INFO of m00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of m00_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  attribute X_INTERFACE_INFO of m00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of m00_axi_ruser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RUSER";
  attribute X_INTERFACE_INFO of m00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of m00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of m00_axi_wuser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WUSER";
begin
  m00_axi_araddr(31) <= \<const0>\;
  m00_axi_araddr(30) <= \<const0>\;
  m00_axi_araddr(29) <= \<const0>\;
  m00_axi_araddr(28) <= \<const0>\;
  m00_axi_araddr(27) <= \<const0>\;
  m00_axi_araddr(26) <= \<const0>\;
  m00_axi_araddr(25) <= \<const0>\;
  m00_axi_araddr(24) <= \<const0>\;
  m00_axi_araddr(23) <= \<const0>\;
  m00_axi_araddr(22) <= \<const0>\;
  m00_axi_araddr(21) <= \<const0>\;
  m00_axi_araddr(20) <= \<const0>\;
  m00_axi_araddr(19) <= \<const0>\;
  m00_axi_araddr(18) <= \<const0>\;
  m00_axi_araddr(17) <= \<const0>\;
  m00_axi_araddr(16) <= \<const0>\;
  m00_axi_araddr(15) <= \<const0>\;
  m00_axi_araddr(14) <= \<const0>\;
  m00_axi_araddr(13) <= \<const0>\;
  m00_axi_araddr(12) <= \<const0>\;
  m00_axi_araddr(11) <= \<const0>\;
  m00_axi_araddr(10) <= \<const0>\;
  m00_axi_araddr(9) <= \<const0>\;
  m00_axi_araddr(8) <= \<const0>\;
  m00_axi_araddr(7) <= \<const0>\;
  m00_axi_araddr(6) <= \<const0>\;
  m00_axi_araddr(5) <= \<const0>\;
  m00_axi_araddr(4) <= \<const0>\;
  m00_axi_araddr(3) <= \<const0>\;
  m00_axi_araddr(2) <= \<const0>\;
  m00_axi_araddr(1) <= \<const0>\;
  m00_axi_araddr(0) <= \<const0>\;
  m00_axi_arburst(1) <= \<const0>\;
  m00_axi_arburst(0) <= \<const1>\;
  m00_axi_arcache(3) <= \<const0>\;
  m00_axi_arcache(2) <= \<const0>\;
  m00_axi_arcache(1) <= \<const1>\;
  m00_axi_arcache(0) <= \<const0>\;
  m00_axi_arid(0) <= \<const0>\;
  m00_axi_arlen(7) <= \<const0>\;
  m00_axi_arlen(6) <= \<const0>\;
  m00_axi_arlen(5) <= \<const0>\;
  m00_axi_arlen(4) <= \<const0>\;
  m00_axi_arlen(3) <= \<const0>\;
  m00_axi_arlen(2) <= \<const0>\;
  m00_axi_arlen(1) <= \<const0>\;
  m00_axi_arlen(0) <= \<const0>\;
  m00_axi_arlock <= \<const0>\;
  m00_axi_arprot(2) <= \<const0>\;
  m00_axi_arprot(1) <= \<const0>\;
  m00_axi_arprot(0) <= \<const0>\;
  m00_axi_arqos(3) <= \<const0>\;
  m00_axi_arqos(2) <= \<const0>\;
  m00_axi_arqos(1) <= \<const0>\;
  m00_axi_arqos(0) <= \<const0>\;
  m00_axi_arsize(2) <= \<const0>\;
  m00_axi_arsize(1) <= \<const1>\;
  m00_axi_arsize(0) <= \<const1>\;
  m00_axi_aruser(0) <= \<const0>\;
  m00_axi_arvalid <= \<const0>\;
  m00_axi_awaddr(31 downto 3) <= \^m00_axi_awaddr\(31 downto 3);
  m00_axi_awaddr(2) <= \<const0>\;
  m00_axi_awaddr(1) <= \<const0>\;
  m00_axi_awaddr(0) <= \<const0>\;
  m00_axi_awburst(1) <= \<const0>\;
  m00_axi_awburst(0) <= \<const1>\;
  m00_axi_awcache(3) <= \<const0>\;
  m00_axi_awcache(2) <= \<const0>\;
  m00_axi_awcache(1) <= \<const1>\;
  m00_axi_awcache(0) <= \<const0>\;
  m00_axi_awid(0) <= \<const0>\;
  m00_axi_awlen(7) <= \<const0>\;
  m00_axi_awlen(6) <= \<const0>\;
  m00_axi_awlen(5) <= \<const0>\;
  m00_axi_awlen(4) <= \<const0>\;
  m00_axi_awlen(3) <= \<const0>\;
  m00_axi_awlen(2) <= \<const0>\;
  m00_axi_awlen(1) <= \<const0>\;
  m00_axi_awlen(0) <= \<const0>\;
  m00_axi_awlock <= \<const0>\;
  m00_axi_awprot(2) <= \<const0>\;
  m00_axi_awprot(1) <= \<const0>\;
  m00_axi_awprot(0) <= \<const0>\;
  m00_axi_awqos(3) <= \<const0>\;
  m00_axi_awqos(2) <= \<const0>\;
  m00_axi_awqos(1) <= \<const0>\;
  m00_axi_awqos(0) <= \<const0>\;
  m00_axi_awsize(2) <= \<const0>\;
  m00_axi_awsize(1) <= \<const1>\;
  m00_axi_awsize(0) <= \<const1>\;
  m00_axi_awuser(0) <= \<const0>\;
  m00_axi_bready <= \<const1>\;
  m00_axi_rready <= \<const0>\;
  m00_axi_wlast <= \<const1>\;
  m00_axi_wstrb(7) <= \<const1>\;
  m00_axi_wstrb(6) <= \<const1>\;
  m00_axi_wstrb(5) <= \<const1>\;
  m00_axi_wstrb(4) <= \<const1>\;
  m00_axi_wstrb(3) <= \<const1>\;
  m00_axi_wstrb(2) <= \<const1>\;
  m00_axi_wstrb(1) <= \<const1>\;
  m00_axi_wstrb(0) <= \<const1>\;
  m00_axi_wuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_fifo_ddr_bridge_0_3_fifo_ddr_bridge
     port map (
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_awaddr(28 downto 0) => \^m00_axi_awaddr\(31 downto 3),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bresp(0) => m00_axi_bresp(1),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_error => m00_axi_error,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_wdata(63 downto 0) => m00_axi_wdata(63 downto 0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wvalid => m00_axi_wvalid,
      s_data(63 downto 0) => s_data(63 downto 0),
      s_ready => s_ready,
      s_valid => s_valid
    );
end STRUCTURE;
