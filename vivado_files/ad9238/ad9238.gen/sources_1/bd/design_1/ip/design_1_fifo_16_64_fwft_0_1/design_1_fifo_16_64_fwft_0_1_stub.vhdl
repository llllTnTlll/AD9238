-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Oct 22 13:04:12 2025
-- Host        : OMEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/liuzh/Desktop/high_speed_adc/fpga_prjs/ad9238/ad9238.gen/sources_1/bd/design_1/ip/design_1_fifo_16_64_fwft_0_1/design_1_fifo_16_64_fwft_0_1_stub.vhdl
-- Design      : design_1_fifo_16_64_fwft_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fifo_16_64_fwft_0_1 is
  Port ( 
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    in_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_valid : in STD_LOGIC;
    data_drop : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_valid : out STD_LOGIC;
    out_ready : in STD_LOGIC;
    fifo_full : out STD_LOGIC;
    fifo_almost_full : out STD_LOGIC;
    fifo_empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fifo_16_64_fwft_0_1 : entity is "design_1_fifo_16_64_fwft_0_1,fifo_16_64_fwft,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_fifo_16_64_fwft_0_1 : entity is "design_1_fifo_16_64_fwft_0_1,fifo_16_64_fwft,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=fifo_16_64_fwft,x_ipVersion=1.0,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fifo_16_64_fwft_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_fifo_16_64_fwft_0_1 : entity is "package_project";
end design_1_fifo_16_64_fwft_0_1;

architecture stub of design_1_fifo_16_64_fwft_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "wr_clk,rd_clk,rst_n,in_data[15:0],in_valid,data_drop,out_data[63:0],out_valid,out_ready,fifo_full,fifo_almost_full,fifo_empty,wr_rst_busy,rd_rst_busy";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of wr_clk : signal is "xilinx.com:signal:clock:1.0 wr_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of wr_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of wr_clk : signal is "XIL_INTERFACENAME wr_clk, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rd_clk : signal is "xilinx.com:signal:clock:1.0 rd_clk CLK";
  attribute X_INTERFACE_MODE of rd_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rd_clk : signal is "XIL_INTERFACENAME rd_clk, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "fifo_16_64_fwft,Vivado 2025.1";
begin
end;
