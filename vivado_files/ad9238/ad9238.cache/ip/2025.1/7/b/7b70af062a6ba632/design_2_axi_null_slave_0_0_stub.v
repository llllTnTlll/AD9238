// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Oct 20 14:40:46 2025
// Host        : OMEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_axi_null_slave_0_0_stub.v
// Design      : design_2_axi_null_slave_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_2_axi_null_slave_0_0,axi_null_slave,{}" *) (* CORE_GENERATION_INFO = "design_2_axi_null_slave_0_0,axi_null_slave,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=axi_null_slave,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_ID_WIDTH=1,C_ADDR_WIDTH=32,C_DATA_WIDTH=64}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "axi_null_slave,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ACLK, ARESETn, S_AWID, S_AWADDR, S_AWLEN, S_AWSIZE, 
  S_AWBURST, S_AWVALID, S_AWREADY, S_WDATA, S_WSTRB, S_WLAST, S_WVALID, S_WREADY, S_BID, S_BRESP, 
  S_BVALID, S_BREADY, S_ARID, S_ARADDR, S_ARLEN, S_ARSIZE, S_ARBURST, S_ARVALID, S_ARREADY, S_RID, 
  S_RDATA, S_RRESP, S_RLAST, S_RVALID, S_RREADY)
/* synthesis syn_black_box black_box_pad_pin="ARESETn,S_AWID[0:0],S_AWADDR[31:0],S_AWLEN[7:0],S_AWSIZE[2:0],S_AWBURST[1:0],S_AWVALID,S_AWREADY,S_WDATA[63:0],S_WSTRB[7:0],S_WLAST,S_WVALID,S_WREADY,S_BID[0:0],S_BRESP[1:0],S_BVALID,S_BREADY,S_ARID[0:0],S_ARADDR[31:0],S_ARLEN[7:0],S_ARSIZE[2:0],S_ARBURST[1:0],S_ARVALID,S_ARREADY,S_RID[0:0],S_RDATA[63:0],S_RRESP[1:0],S_RLAST,S_RVALID,S_RREADY" */
/* synthesis syn_force_seq_prim="ACLK" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S, ASSOCIATED_RESET ARESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_clk_0, INSERT_VIP 0" *) input ACLK /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ARESETn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_2_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWADDR" *) input [31:0]S_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWLEN" *) input [7:0]S_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWSIZE" *) input [2:0]S_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWBURST" *) input [1:0]S_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWVALID" *) input S_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S AWREADY" *) output S_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S WDATA" *) input [63:0]S_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S WSTRB" *) input [7:0]S_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S WLAST" *) input S_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S WVALID" *) input S_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S WREADY" *) output S_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S BID" *) output [0:0]S_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S BRESP" *) output [1:0]S_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S BVALID" *) output S_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S BREADY" *) input S_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARID" *) input [0:0]S_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARADDR" *) input [31:0]S_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARLEN" *) input [7:0]S_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARSIZE" *) input [2:0]S_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARBURST" *) input [1:0]S_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARVALID" *) input S_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S ARREADY" *) output S_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RID" *) output [0:0]S_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RDATA" *) output [63:0]S_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RRESP" *) output [1:0]S_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RLAST" *) output S_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RVALID" *) output S_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S RREADY" *) input S_RREADY;
endmodule
