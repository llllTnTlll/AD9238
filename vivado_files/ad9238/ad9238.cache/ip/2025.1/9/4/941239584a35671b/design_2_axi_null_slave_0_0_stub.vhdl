-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Oct 17 16:43:37 2025
-- Host        : OMEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_axi_null_slave_0_0_stub.vhdl
-- Design      : design_2_axi_null_slave_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_2_axi_null_slave_0_0,axi_null_slave,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_2_axi_null_slave_0_0,axi_null_slave,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=axi_null_slave,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_ID_WIDTH=1,C_ADDR_WIDTH=32,C_DATA_WIDTH=64}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ACLK,ARESETn,S_AWID[0:0],S_AWADDR[31:0],S_AWLEN[7:0],S_AWSIZE[2:0],S_AWBURST[1:0],S_AWVALID,S_AWREADY,S_WDATA[63:0],S_WSTRB[7:0],S_WLAST,S_WVALID,S_WREADY,S_BID[0:0],S_BRESP[1:0],S_BVALID,S_BREADY,S_ARID[0:0],S_ARADDR[31:0],S_ARLEN[7:0],S_ARSIZE[2:0],S_ARBURST[1:0],S_ARVALID,S_ARREADY,S_RID[0:0],S_RDATA[63:0],S_RRESP[1:0],S_RLAST,S_RVALID,S_RREADY";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ACLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S, ASSOCIATED_RESET ARESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ARESETn : signal is "xilinx.com:signal:reset:1.0 ARESETn RST";
  attribute X_INTERFACE_MODE of ARESETn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ARESETn : signal is "XIL_INTERFACENAME ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AWID : signal is "xilinx.com:interface:aximm:1.0 S AWID";
  attribute X_INTERFACE_MODE of S_AWID : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AWID : signal is "XIL_INTERFACENAME S, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_2_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S AWADDR";
  attribute X_INTERFACE_INFO of S_AWLEN : signal is "xilinx.com:interface:aximm:1.0 S AWLEN";
  attribute X_INTERFACE_INFO of S_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 S AWSIZE";
  attribute X_INTERFACE_INFO of S_AWBURST : signal is "xilinx.com:interface:aximm:1.0 S AWBURST";
  attribute X_INTERFACE_INFO of S_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S AWVALID";
  attribute X_INTERFACE_INFO of S_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S AWREADY";
  attribute X_INTERFACE_INFO of S_WDATA : signal is "xilinx.com:interface:aximm:1.0 S WDATA";
  attribute X_INTERFACE_INFO of S_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S WSTRB";
  attribute X_INTERFACE_INFO of S_WLAST : signal is "xilinx.com:interface:aximm:1.0 S WLAST";
  attribute X_INTERFACE_INFO of S_WVALID : signal is "xilinx.com:interface:aximm:1.0 S WVALID";
  attribute X_INTERFACE_INFO of S_WREADY : signal is "xilinx.com:interface:aximm:1.0 S WREADY";
  attribute X_INTERFACE_INFO of S_BID : signal is "xilinx.com:interface:aximm:1.0 S BID";
  attribute X_INTERFACE_INFO of S_BRESP : signal is "xilinx.com:interface:aximm:1.0 S BRESP";
  attribute X_INTERFACE_INFO of S_BVALID : signal is "xilinx.com:interface:aximm:1.0 S BVALID";
  attribute X_INTERFACE_INFO of S_BREADY : signal is "xilinx.com:interface:aximm:1.0 S BREADY";
  attribute X_INTERFACE_INFO of S_ARID : signal is "xilinx.com:interface:aximm:1.0 S ARID";
  attribute X_INTERFACE_INFO of S_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S ARADDR";
  attribute X_INTERFACE_INFO of S_ARLEN : signal is "xilinx.com:interface:aximm:1.0 S ARLEN";
  attribute X_INTERFACE_INFO of S_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 S ARSIZE";
  attribute X_INTERFACE_INFO of S_ARBURST : signal is "xilinx.com:interface:aximm:1.0 S ARBURST";
  attribute X_INTERFACE_INFO of S_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S ARVALID";
  attribute X_INTERFACE_INFO of S_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S ARREADY";
  attribute X_INTERFACE_INFO of S_RID : signal is "xilinx.com:interface:aximm:1.0 S RID";
  attribute X_INTERFACE_INFO of S_RDATA : signal is "xilinx.com:interface:aximm:1.0 S RDATA";
  attribute X_INTERFACE_INFO of S_RRESP : signal is "xilinx.com:interface:aximm:1.0 S RRESP";
  attribute X_INTERFACE_INFO of S_RLAST : signal is "xilinx.com:interface:aximm:1.0 S RLAST";
  attribute X_INTERFACE_INFO of S_RVALID : signal is "xilinx.com:interface:aximm:1.0 S RVALID";
  attribute X_INTERFACE_INFO of S_RREADY : signal is "xilinx.com:interface:aximm:1.0 S RREADY";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "axi_null_slave,Vivado 2025.1";
begin
end;
