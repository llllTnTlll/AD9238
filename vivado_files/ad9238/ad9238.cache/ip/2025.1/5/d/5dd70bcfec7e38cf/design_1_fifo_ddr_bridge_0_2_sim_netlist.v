// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Oct 17 13:36:11 2025
// Host        : OMEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_ddr_bridge_0_2_sim_netlist.v
// Design      : design_1_fifo_ddr_bridge_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_ddr_bridge_0_2,fifo_ddr_bridge,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fifo_ddr_bridge,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_data,
    s_valid,
    s_ready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_txn_done,
    m00_axi_error,
    m00_axi_awid,
    m00_axi_awaddr,
    m00_axi_awlen,
    m00_axi_awsize,
    m00_axi_awburst,
    m00_axi_awlock,
    m00_axi_awcache,
    m00_axi_awprot,
    m00_axi_awqos,
    m00_axi_awuser,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_wuser,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bid,
    m00_axi_bresp,
    m00_axi_buser,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_arid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arlock,
    m00_axi_arcache,
    m00_axi_arprot,
    m00_axi_arqos,
    m00_axi_aruser,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rid,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rlast,
    m00_axi_ruser,
    m00_axi_rvalid,
    m00_axi_rready);
  input [63:0]s_data;
  input s_valid;
  output s_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;
  output m00_axi_txn_done;
  output m00_axi_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [0:0]m00_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]m00_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]m00_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]m00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output m00_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]m00_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]m00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [0:0]m00_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [63:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [7:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output m00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WUSER" *) output [0:0]m00_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [0:0]m00_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BUSER" *) input [0:0]m00_axi_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [0:0]m00_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]m00_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]m00_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]m00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output m00_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]m00_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]m00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [0:0]m00_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [0:0]m00_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [63:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input m00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RUSER" *) input [0:0]m00_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [31:3]\^m00_axi_awaddr ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_txn_done;
  wire [63:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire [63:0]s_data;
  wire s_ready;
  wire s_valid;

  assign m00_axi_araddr[31] = \<const0> ;
  assign m00_axi_araddr[30] = \<const0> ;
  assign m00_axi_araddr[29] = \<const0> ;
  assign m00_axi_araddr[28] = \<const0> ;
  assign m00_axi_araddr[27] = \<const0> ;
  assign m00_axi_araddr[26] = \<const0> ;
  assign m00_axi_araddr[25] = \<const0> ;
  assign m00_axi_araddr[24] = \<const0> ;
  assign m00_axi_araddr[23] = \<const0> ;
  assign m00_axi_araddr[22] = \<const0> ;
  assign m00_axi_araddr[21] = \<const0> ;
  assign m00_axi_araddr[20] = \<const0> ;
  assign m00_axi_araddr[19] = \<const0> ;
  assign m00_axi_araddr[18] = \<const0> ;
  assign m00_axi_araddr[17] = \<const0> ;
  assign m00_axi_araddr[16] = \<const0> ;
  assign m00_axi_araddr[15] = \<const0> ;
  assign m00_axi_araddr[14] = \<const0> ;
  assign m00_axi_araddr[13] = \<const0> ;
  assign m00_axi_araddr[12] = \<const0> ;
  assign m00_axi_araddr[11] = \<const0> ;
  assign m00_axi_araddr[10] = \<const0> ;
  assign m00_axi_araddr[9] = \<const0> ;
  assign m00_axi_araddr[8] = \<const0> ;
  assign m00_axi_araddr[7] = \<const0> ;
  assign m00_axi_araddr[6] = \<const0> ;
  assign m00_axi_araddr[5] = \<const0> ;
  assign m00_axi_araddr[4] = \<const0> ;
  assign m00_axi_araddr[3] = \<const0> ;
  assign m00_axi_araddr[2] = \<const0> ;
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arburst[1] = \<const0> ;
  assign m00_axi_arburst[0] = \<const1> ;
  assign m00_axi_arcache[3] = \<const0> ;
  assign m00_axi_arcache[2] = \<const0> ;
  assign m00_axi_arcache[1] = \<const1> ;
  assign m00_axi_arcache[0] = \<const0> ;
  assign m00_axi_arid[0] = \<const0> ;
  assign m00_axi_arlen[7] = \<const0> ;
  assign m00_axi_arlen[6] = \<const0> ;
  assign m00_axi_arlen[5] = \<const0> ;
  assign m00_axi_arlen[4] = \<const0> ;
  assign m00_axi_arlen[3] = \<const0> ;
  assign m00_axi_arlen[2] = \<const0> ;
  assign m00_axi_arlen[1] = \<const0> ;
  assign m00_axi_arlen[0] = \<const0> ;
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const0> ;
  assign m00_axi_arqos[2] = \<const0> ;
  assign m00_axi_arqos[1] = \<const0> ;
  assign m00_axi_arqos[0] = \<const0> ;
  assign m00_axi_arsize[2] = \<const0> ;
  assign m00_axi_arsize[1] = \<const1> ;
  assign m00_axi_arsize[0] = \<const1> ;
  assign m00_axi_aruser[0] = \<const0> ;
  assign m00_axi_arvalid = \<const0> ;
  assign m00_axi_awaddr[31:3] = \^m00_axi_awaddr [31:3];
  assign m00_axi_awaddr[2] = \<const0> ;
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awburst[1] = \<const0> ;
  assign m00_axi_awburst[0] = \<const1> ;
  assign m00_axi_awcache[3] = \<const0> ;
  assign m00_axi_awcache[2] = \<const0> ;
  assign m00_axi_awcache[1] = \<const1> ;
  assign m00_axi_awcache[0] = \<const0> ;
  assign m00_axi_awid[0] = \<const0> ;
  assign m00_axi_awlen[7] = \<const0> ;
  assign m00_axi_awlen[6] = \<const0> ;
  assign m00_axi_awlen[5] = \<const0> ;
  assign m00_axi_awlen[4] = \<const0> ;
  assign m00_axi_awlen[3] = \<const0> ;
  assign m00_axi_awlen[2] = \<const0> ;
  assign m00_axi_awlen[1] = \<const0> ;
  assign m00_axi_awlen[0] = \<const0> ;
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const0> ;
  assign m00_axi_awqos[2] = \<const0> ;
  assign m00_axi_awqos[1] = \<const0> ;
  assign m00_axi_awqos[0] = \<const0> ;
  assign m00_axi_awsize[2] = \<const0> ;
  assign m00_axi_awsize[1] = \<const1> ;
  assign m00_axi_awsize[0] = \<const1> ;
  assign m00_axi_awuser[0] = \<const0> ;
  assign m00_axi_bready = \<const1> ;
  assign m00_axi_rready = \<const0> ;
  assign m00_axi_wlast = \<const1> ;
  assign m00_axi_wstrb[7] = \<const1> ;
  assign m00_axi_wstrb[6] = \<const1> ;
  assign m00_axi_wstrb[5] = \<const1> ;
  assign m00_axi_wstrb[4] = \<const1> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  assign m00_axi_wuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ddr_bridge inst
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_awaddr(\^m00_axi_awaddr ),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bresp(m00_axi_bresp[1]),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid),
        .s_data(s_data),
        .s_ready(s_ready),
        .s_valid(s_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ddr_bridge
   (m00_axi_wdata,
    m00_axi_awaddr,
    m00_axi_wvalid,
    m00_axi_awvalid,
    s_ready,
    m00_axi_error,
    m00_axi_txn_done,
    s_data,
    m00_axi_aclk,
    m00_axi_bvalid,
    m00_axi_aresetn,
    s_valid,
    m00_axi_wready,
    m00_axi_awready,
    m00_axi_bresp);
  output [63:0]m00_axi_wdata;
  output [28:0]m00_axi_awaddr;
  output m00_axi_wvalid;
  output m00_axi_awvalid;
  output s_ready;
  output m00_axi_error;
  output m00_axi_txn_done;
  input [63:0]s_data;
  input m00_axi_aclk;
  input m00_axi_bvalid;
  input m00_axi_aresetn;
  input s_valid;
  input m00_axi_wready;
  input m00_axi_awready;
  input [0:0]m00_axi_bresp;

  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [28:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_txn_done;
  wire [63:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire [63:0]s_data;
  wire s_ready;
  wire s_valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ddr_bridge_v1_0_M00_AXI u_axi_master
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid),
        .s_data(s_data),
        .s_ready(s_ready),
        .s_valid(s_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ddr_bridge_v1_0_M00_AXI
   (m00_axi_wdata,
    m00_axi_awaddr,
    m00_axi_wvalid,
    m00_axi_awvalid,
    s_ready,
    m00_axi_error,
    m00_axi_txn_done,
    s_data,
    m00_axi_aclk,
    m00_axi_bvalid,
    m00_axi_aresetn,
    s_valid,
    m00_axi_wready,
    m00_axi_awready,
    m00_axi_bresp);
  output [63:0]m00_axi_wdata;
  output [28:0]m00_axi_awaddr;
  output m00_axi_wvalid;
  output m00_axi_awvalid;
  output s_ready;
  output m00_axi_error;
  output m00_axi_txn_done;
  input [63:0]s_data;
  input m00_axi_aclk;
  input m00_axi_bvalid;
  input m00_axi_aresetn;
  input s_valid;
  input m00_axi_wready;
  input m00_axi_awready;
  input [0:0]m00_axi_bresp;

  wire ERROR_i_1_n_0;
  wire M_AXI_AWADDR_carry__0_n_0;
  wire M_AXI_AWADDR_carry__0_n_1;
  wire M_AXI_AWADDR_carry__0_n_2;
  wire M_AXI_AWADDR_carry__0_n_3;
  wire M_AXI_AWADDR_carry_i_1_n_0;
  wire M_AXI_AWADDR_carry_n_0;
  wire M_AXI_AWADDR_carry_n_1;
  wire M_AXI_AWADDR_carry_n_2;
  wire M_AXI_AWADDR_carry_n_3;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [28:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_txn_done;
  wire [63:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire [6:2]p_0_in;
  wire r_awaddr_off0;
  wire \r_awaddr_off[6]_i_2_n_0 ;
  wire [31:23]r_awaddr_off_reg;
  wire \r_awaddr_off_reg[10]_i_1_n_0 ;
  wire \r_awaddr_off_reg[10]_i_1_n_1 ;
  wire \r_awaddr_off_reg[10]_i_1_n_2 ;
  wire \r_awaddr_off_reg[10]_i_1_n_3 ;
  wire \r_awaddr_off_reg[10]_i_1_n_4 ;
  wire \r_awaddr_off_reg[10]_i_1_n_5 ;
  wire \r_awaddr_off_reg[10]_i_1_n_6 ;
  wire \r_awaddr_off_reg[10]_i_1_n_7 ;
  wire \r_awaddr_off_reg[14]_i_1_n_0 ;
  wire \r_awaddr_off_reg[14]_i_1_n_1 ;
  wire \r_awaddr_off_reg[14]_i_1_n_2 ;
  wire \r_awaddr_off_reg[14]_i_1_n_3 ;
  wire \r_awaddr_off_reg[14]_i_1_n_4 ;
  wire \r_awaddr_off_reg[14]_i_1_n_5 ;
  wire \r_awaddr_off_reg[14]_i_1_n_6 ;
  wire \r_awaddr_off_reg[14]_i_1_n_7 ;
  wire \r_awaddr_off_reg[18]_i_1_n_0 ;
  wire \r_awaddr_off_reg[18]_i_1_n_1 ;
  wire \r_awaddr_off_reg[18]_i_1_n_2 ;
  wire \r_awaddr_off_reg[18]_i_1_n_3 ;
  wire \r_awaddr_off_reg[18]_i_1_n_4 ;
  wire \r_awaddr_off_reg[18]_i_1_n_5 ;
  wire \r_awaddr_off_reg[18]_i_1_n_6 ;
  wire \r_awaddr_off_reg[18]_i_1_n_7 ;
  wire \r_awaddr_off_reg[22]_i_3_n_0 ;
  wire \r_awaddr_off_reg[22]_i_3_n_1 ;
  wire \r_awaddr_off_reg[22]_i_3_n_2 ;
  wire \r_awaddr_off_reg[22]_i_3_n_3 ;
  wire \r_awaddr_off_reg[22]_i_3_n_4 ;
  wire \r_awaddr_off_reg[22]_i_3_n_5 ;
  wire \r_awaddr_off_reg[22]_i_3_n_6 ;
  wire \r_awaddr_off_reg[22]_i_3_n_7 ;
  wire \r_awaddr_off_reg[23]_i_1_n_0 ;
  wire \r_awaddr_off_reg[23]_i_1_n_1 ;
  wire \r_awaddr_off_reg[23]_i_1_n_2 ;
  wire \r_awaddr_off_reg[23]_i_1_n_3 ;
  wire \r_awaddr_off_reg[23]_i_1_n_4 ;
  wire \r_awaddr_off_reg[23]_i_1_n_5 ;
  wire \r_awaddr_off_reg[23]_i_1_n_6 ;
  wire \r_awaddr_off_reg[23]_i_1_n_7 ;
  wire \r_awaddr_off_reg[27]_i_1_n_0 ;
  wire \r_awaddr_off_reg[27]_i_1_n_1 ;
  wire \r_awaddr_off_reg[27]_i_1_n_2 ;
  wire \r_awaddr_off_reg[27]_i_1_n_3 ;
  wire \r_awaddr_off_reg[27]_i_1_n_4 ;
  wire \r_awaddr_off_reg[27]_i_1_n_5 ;
  wire \r_awaddr_off_reg[27]_i_1_n_6 ;
  wire \r_awaddr_off_reg[27]_i_1_n_7 ;
  wire \r_awaddr_off_reg[31]_i_1_n_7 ;
  wire \r_awaddr_off_reg[6]_i_1_n_0 ;
  wire \r_awaddr_off_reg[6]_i_1_n_1 ;
  wire \r_awaddr_off_reg[6]_i_1_n_2 ;
  wire \r_awaddr_off_reg[6]_i_1_n_3 ;
  wire \r_awaddr_off_reg[6]_i_1_n_4 ;
  wire \r_awaddr_off_reg[6]_i_1_n_5 ;
  wire \r_awaddr_off_reg[6]_i_1_n_6 ;
  wire \r_awaddr_off_reg[6]_i_1_n_7 ;
  wire r_awvalid_i_1_n_0;
  wire r_awvalid_i_2_n_0;
  wire \r_done_cnt[0]_i_1_n_0 ;
  wire \r_done_cnt[1]_i_1_n_0 ;
  wire \r_done_cnt[6]_i_2_n_0 ;
  wire [6:0]r_done_cnt_reg;
  wire r_inflight;
  wire r_inflight_i_1_n_0;
  wire r_txn_done_i_1_n_0;
  wire r_txn_done_i_2_n_0;
  wire r_wvalid_i_1_n_0;
  wire [63:0]s_data;
  wire s_ready;
  wire s_valid;
  wire take_sample;
  wire w_sys_rst;
  wire [3:0]NLW_M_AXI_AWADDR_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_M_AXI_AWADDR_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_r_awaddr_off_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_r_awaddr_off_reg[31]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hEA00)) 
    ERROR_i_1
       (.I0(m00_axi_error),
        .I1(m00_axi_bvalid),
        .I2(m00_axi_bresp),
        .I3(m00_axi_aresetn),
        .O(ERROR_i_1_n_0));
  FDRE ERROR_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(ERROR_i_1_n_0),
        .Q(m00_axi_error),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXI_AWADDR_carry
       (.CI(1'b0),
        .CO({M_AXI_AWADDR_carry_n_0,M_AXI_AWADDR_carry_n_1,M_AXI_AWADDR_carry_n_2,M_AXI_AWADDR_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,r_awaddr_off_reg[24],1'b0}),
        .O(m00_axi_awaddr[23:20]),
        .S({r_awaddr_off_reg[26:25],M_AXI_AWADDR_carry_i_1_n_0,r_awaddr_off_reg[23]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXI_AWADDR_carry__0
       (.CI(M_AXI_AWADDR_carry_n_0),
        .CO({M_AXI_AWADDR_carry__0_n_0,M_AXI_AWADDR_carry__0_n_1,M_AXI_AWADDR_carry__0_n_2,M_AXI_AWADDR_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m00_axi_awaddr[27:24]),
        .S(r_awaddr_off_reg[30:27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXI_AWADDR_carry__1
       (.CI(M_AXI_AWADDR_carry__0_n_0),
        .CO(NLW_M_AXI_AWADDR_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_M_AXI_AWADDR_carry__1_O_UNCONNECTED[3:1],m00_axi_awaddr[28]}),
        .S({1'b0,1'b0,1'b0,r_awaddr_off_reg[31]}));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_AWADDR_carry_i_1
       (.I0(r_awaddr_off_reg[24]),
        .O(M_AXI_AWADDR_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_awaddr_off[22]_i_1 
       (.I0(m00_axi_aresetn),
        .O(w_sys_rst));
  LUT6 #(
    .INIT(64'h5557FFFF00000000)) 
    \r_awaddr_off[22]_i_2 
       (.I0(r_done_cnt_reg[5]),
        .I1(r_done_cnt_reg[2]),
        .I2(r_done_cnt_reg[3]),
        .I3(r_done_cnt_reg[4]),
        .I4(r_done_cnt_reg[6]),
        .I5(m00_axi_bvalid),
        .O(r_awaddr_off0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_awaddr_off[6]_i_2 
       (.I0(m00_axi_awaddr[0]),
        .O(\r_awaddr_off[6]_i_2_n_0 ));
  FDRE \r_awaddr_off_reg[10] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[10]_i_1_n_4 ),
        .Q(m00_axi_awaddr[7]),
        .R(w_sys_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_awaddr_off_reg[10]_i_1 
       (.CI(\r_awaddr_off_reg[6]_i_1_n_0 ),
        .CO({\r_awaddr_off_reg[10]_i_1_n_0 ,\r_awaddr_off_reg[10]_i_1_n_1 ,\r_awaddr_off_reg[10]_i_1_n_2 ,\r_awaddr_off_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_awaddr_off_reg[10]_i_1_n_4 ,\r_awaddr_off_reg[10]_i_1_n_5 ,\r_awaddr_off_reg[10]_i_1_n_6 ,\r_awaddr_off_reg[10]_i_1_n_7 }),
        .S(m00_axi_awaddr[7:4]));
  FDRE \r_awaddr_off_reg[11] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[14]_i_1_n_7 ),
        .Q(m00_axi_awaddr[8]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[12] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[14]_i_1_n_6 ),
        .Q(m00_axi_awaddr[9]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[13] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[14]_i_1_n_5 ),
        .Q(m00_axi_awaddr[10]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[14] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[14]_i_1_n_4 ),
        .Q(m00_axi_awaddr[11]),
        .R(w_sys_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_awaddr_off_reg[14]_i_1 
       (.CI(\r_awaddr_off_reg[10]_i_1_n_0 ),
        .CO({\r_awaddr_off_reg[14]_i_1_n_0 ,\r_awaddr_off_reg[14]_i_1_n_1 ,\r_awaddr_off_reg[14]_i_1_n_2 ,\r_awaddr_off_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_awaddr_off_reg[14]_i_1_n_4 ,\r_awaddr_off_reg[14]_i_1_n_5 ,\r_awaddr_off_reg[14]_i_1_n_6 ,\r_awaddr_off_reg[14]_i_1_n_7 }),
        .S(m00_axi_awaddr[11:8]));
  FDRE \r_awaddr_off_reg[15] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[18]_i_1_n_7 ),
        .Q(m00_axi_awaddr[12]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[16] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[18]_i_1_n_6 ),
        .Q(m00_axi_awaddr[13]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[17] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[18]_i_1_n_5 ),
        .Q(m00_axi_awaddr[14]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[18] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[18]_i_1_n_4 ),
        .Q(m00_axi_awaddr[15]),
        .R(w_sys_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_awaddr_off_reg[18]_i_1 
       (.CI(\r_awaddr_off_reg[14]_i_1_n_0 ),
        .CO({\r_awaddr_off_reg[18]_i_1_n_0 ,\r_awaddr_off_reg[18]_i_1_n_1 ,\r_awaddr_off_reg[18]_i_1_n_2 ,\r_awaddr_off_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_awaddr_off_reg[18]_i_1_n_4 ,\r_awaddr_off_reg[18]_i_1_n_5 ,\r_awaddr_off_reg[18]_i_1_n_6 ,\r_awaddr_off_reg[18]_i_1_n_7 }),
        .S(m00_axi_awaddr[15:12]));
  FDRE \r_awaddr_off_reg[19] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[22]_i_3_n_7 ),
        .Q(m00_axi_awaddr[16]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[20] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[22]_i_3_n_6 ),
        .Q(m00_axi_awaddr[17]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[21] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[22]_i_3_n_5 ),
        .Q(m00_axi_awaddr[18]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[22] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[22]_i_3_n_4 ),
        .Q(m00_axi_awaddr[19]),
        .R(w_sys_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_awaddr_off_reg[22]_i_3 
       (.CI(\r_awaddr_off_reg[18]_i_1_n_0 ),
        .CO({\r_awaddr_off_reg[22]_i_3_n_0 ,\r_awaddr_off_reg[22]_i_3_n_1 ,\r_awaddr_off_reg[22]_i_3_n_2 ,\r_awaddr_off_reg[22]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_awaddr_off_reg[22]_i_3_n_4 ,\r_awaddr_off_reg[22]_i_3_n_5 ,\r_awaddr_off_reg[22]_i_3_n_6 ,\r_awaddr_off_reg[22]_i_3_n_7 }),
        .S(m00_axi_awaddr[19:16]));
  FDRE \r_awaddr_off_reg[23] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[23]_i_1_n_7 ),
        .Q(r_awaddr_off_reg[23]),
        .R(w_sys_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_awaddr_off_reg[23]_i_1 
       (.CI(\r_awaddr_off_reg[22]_i_3_n_0 ),
        .CO({\r_awaddr_off_reg[23]_i_1_n_0 ,\r_awaddr_off_reg[23]_i_1_n_1 ,\r_awaddr_off_reg[23]_i_1_n_2 ,\r_awaddr_off_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_awaddr_off_reg[23]_i_1_n_4 ,\r_awaddr_off_reg[23]_i_1_n_5 ,\r_awaddr_off_reg[23]_i_1_n_6 ,\r_awaddr_off_reg[23]_i_1_n_7 }),
        .S(r_awaddr_off_reg[26:23]));
  FDRE \r_awaddr_off_reg[24] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[23]_i_1_n_6 ),
        .Q(r_awaddr_off_reg[24]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[25] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[23]_i_1_n_5 ),
        .Q(r_awaddr_off_reg[25]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[26] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[23]_i_1_n_4 ),
        .Q(r_awaddr_off_reg[26]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[27] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[27]_i_1_n_7 ),
        .Q(r_awaddr_off_reg[27]),
        .R(w_sys_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_awaddr_off_reg[27]_i_1 
       (.CI(\r_awaddr_off_reg[23]_i_1_n_0 ),
        .CO({\r_awaddr_off_reg[27]_i_1_n_0 ,\r_awaddr_off_reg[27]_i_1_n_1 ,\r_awaddr_off_reg[27]_i_1_n_2 ,\r_awaddr_off_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_awaddr_off_reg[27]_i_1_n_4 ,\r_awaddr_off_reg[27]_i_1_n_5 ,\r_awaddr_off_reg[27]_i_1_n_6 ,\r_awaddr_off_reg[27]_i_1_n_7 }),
        .S(r_awaddr_off_reg[30:27]));
  FDRE \r_awaddr_off_reg[28] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[27]_i_1_n_6 ),
        .Q(r_awaddr_off_reg[28]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[29] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[27]_i_1_n_5 ),
        .Q(r_awaddr_off_reg[29]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[30] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[27]_i_1_n_4 ),
        .Q(r_awaddr_off_reg[30]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[31] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[31]_i_1_n_7 ),
        .Q(r_awaddr_off_reg[31]),
        .R(w_sys_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_awaddr_off_reg[31]_i_1 
       (.CI(\r_awaddr_off_reg[27]_i_1_n_0 ),
        .CO(\NLW_r_awaddr_off_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_awaddr_off_reg[31]_i_1_O_UNCONNECTED [3:1],\r_awaddr_off_reg[31]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,r_awaddr_off_reg[31]}));
  FDRE \r_awaddr_off_reg[3] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[6]_i_1_n_7 ),
        .Q(m00_axi_awaddr[0]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[4] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[6]_i_1_n_6 ),
        .Q(m00_axi_awaddr[1]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[5] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[6]_i_1_n_5 ),
        .Q(m00_axi_awaddr[2]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[6] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[6]_i_1_n_4 ),
        .Q(m00_axi_awaddr[3]),
        .R(w_sys_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_awaddr_off_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\r_awaddr_off_reg[6]_i_1_n_0 ,\r_awaddr_off_reg[6]_i_1_n_1 ,\r_awaddr_off_reg[6]_i_1_n_2 ,\r_awaddr_off_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_awaddr_off_reg[6]_i_1_n_4 ,\r_awaddr_off_reg[6]_i_1_n_5 ,\r_awaddr_off_reg[6]_i_1_n_6 ,\r_awaddr_off_reg[6]_i_1_n_7 }),
        .S({m00_axi_awaddr[3:1],\r_awaddr_off[6]_i_2_n_0 }));
  FDRE \r_awaddr_off_reg[7] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[10]_i_1_n_7 ),
        .Q(m00_axi_awaddr[4]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[8] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[10]_i_1_n_6 ),
        .Q(m00_axi_awaddr[5]),
        .R(w_sys_rst));
  FDRE \r_awaddr_off_reg[9] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_awaddr_off_reg[10]_i_1_n_5 ),
        .Q(m00_axi_awaddr[6]),
        .R(w_sys_rst));
  LUT6 #(
    .INIT(64'h0000AAAA00800080)) 
    r_awvalid_i_1
       (.I0(m00_axi_aresetn),
        .I1(r_awvalid_i_2_n_0),
        .I2(s_valid),
        .I3(r_inflight),
        .I4(m00_axi_awready),
        .I5(m00_axi_awvalid),
        .O(r_awvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h5557FFFF)) 
    r_awvalid_i_2
       (.I0(r_done_cnt_reg[6]),
        .I1(r_done_cnt_reg[4]),
        .I2(r_done_cnt_reg[3]),
        .I3(r_done_cnt_reg[2]),
        .I4(r_done_cnt_reg[5]),
        .O(r_awvalid_i_2_n_0));
  FDRE r_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(r_awvalid_i_1_n_0),
        .Q(m00_axi_awvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_done_cnt[0]_i_1 
       (.I0(r_done_cnt_reg[0]),
        .O(\r_done_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_done_cnt[1]_i_1 
       (.I0(r_done_cnt_reg[0]),
        .I1(r_done_cnt_reg[1]),
        .O(\r_done_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_done_cnt[2]_i_1 
       (.I0(r_done_cnt_reg[1]),
        .I1(r_done_cnt_reg[0]),
        .I2(r_done_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_done_cnt[3]_i_1 
       (.I0(r_done_cnt_reg[2]),
        .I1(r_done_cnt_reg[0]),
        .I2(r_done_cnt_reg[1]),
        .I3(r_done_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_done_cnt[4]_i_1 
       (.I0(r_done_cnt_reg[3]),
        .I1(r_done_cnt_reg[1]),
        .I2(r_done_cnt_reg[0]),
        .I3(r_done_cnt_reg[2]),
        .I4(r_done_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_done_cnt[5]_i_1 
       (.I0(r_done_cnt_reg[4]),
        .I1(r_done_cnt_reg[2]),
        .I2(r_done_cnt_reg[0]),
        .I3(r_done_cnt_reg[1]),
        .I4(r_done_cnt_reg[3]),
        .I5(r_done_cnt_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \r_done_cnt[6]_i_1 
       (.I0(r_done_cnt_reg[5]),
        .I1(r_done_cnt_reg[3]),
        .I2(\r_done_cnt[6]_i_2_n_0 ),
        .I3(r_done_cnt_reg[2]),
        .I4(r_done_cnt_reg[4]),
        .I5(r_done_cnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_done_cnt[6]_i_2 
       (.I0(r_done_cnt_reg[0]),
        .I1(r_done_cnt_reg[1]),
        .O(\r_done_cnt[6]_i_2_n_0 ));
  FDRE \r_done_cnt_reg[0] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_done_cnt[0]_i_1_n_0 ),
        .Q(r_done_cnt_reg[0]),
        .R(w_sys_rst));
  FDRE \r_done_cnt_reg[1] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(\r_done_cnt[1]_i_1_n_0 ),
        .Q(r_done_cnt_reg[1]),
        .R(w_sys_rst));
  FDRE \r_done_cnt_reg[2] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(p_0_in[2]),
        .Q(r_done_cnt_reg[2]),
        .R(w_sys_rst));
  FDRE \r_done_cnt_reg[3] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(p_0_in[3]),
        .Q(r_done_cnt_reg[3]),
        .R(w_sys_rst));
  FDRE \r_done_cnt_reg[4] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(p_0_in[4]),
        .Q(r_done_cnt_reg[4]),
        .R(w_sys_rst));
  FDRE \r_done_cnt_reg[5] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(p_0_in[5]),
        .Q(r_done_cnt_reg[5]),
        .R(w_sys_rst));
  FDRE \r_done_cnt_reg[6] 
       (.C(m00_axi_aclk),
        .CE(r_awaddr_off0),
        .D(p_0_in[6]),
        .Q(r_done_cnt_reg[6]),
        .R(w_sys_rst));
  LUT5 #(
    .INIT(32'h74440000)) 
    r_inflight_i_1
       (.I0(m00_axi_bvalid),
        .I1(r_inflight),
        .I2(s_valid),
        .I3(r_awvalid_i_2_n_0),
        .I4(m00_axi_aresetn),
        .O(r_inflight_i_1_n_0));
  FDRE r_inflight_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(r_inflight_i_1_n_0),
        .Q(r_inflight),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    r_txn_done_i_1
       (.I0(r_done_cnt_reg[0]),
        .I1(r_done_cnt_reg[1]),
        .I2(r_txn_done_i_2_n_0),
        .I3(m00_axi_aresetn),
        .O(r_txn_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    r_txn_done_i_2
       (.I0(r_done_cnt_reg[5]),
        .I1(r_done_cnt_reg[4]),
        .I2(r_done_cnt_reg[2]),
        .I3(r_done_cnt_reg[3]),
        .I4(m00_axi_bvalid),
        .I5(r_done_cnt_reg[6]),
        .O(r_txn_done_i_2_n_0));
  FDRE r_txn_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(r_txn_done_i_1_n_0),
        .Q(m00_axi_txn_done),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \r_wdata[63]_i_1 
       (.I0(r_inflight),
        .I1(s_valid),
        .I2(r_awvalid_i_2_n_0),
        .O(take_sample));
  FDRE \r_wdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[0]),
        .Q(m00_axi_wdata[0]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[10]),
        .Q(m00_axi_wdata[10]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[11]),
        .Q(m00_axi_wdata[11]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[12]),
        .Q(m00_axi_wdata[12]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[13]),
        .Q(m00_axi_wdata[13]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[14]),
        .Q(m00_axi_wdata[14]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[15]),
        .Q(m00_axi_wdata[15]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[16]),
        .Q(m00_axi_wdata[16]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[17]),
        .Q(m00_axi_wdata[17]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[18]),
        .Q(m00_axi_wdata[18]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[19]),
        .Q(m00_axi_wdata[19]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[1]),
        .Q(m00_axi_wdata[1]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[20]),
        .Q(m00_axi_wdata[20]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[21]),
        .Q(m00_axi_wdata[21]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[22]),
        .Q(m00_axi_wdata[22]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[23]),
        .Q(m00_axi_wdata[23]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[24]),
        .Q(m00_axi_wdata[24]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[25]),
        .Q(m00_axi_wdata[25]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[26]),
        .Q(m00_axi_wdata[26]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[27]),
        .Q(m00_axi_wdata[27]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[28]),
        .Q(m00_axi_wdata[28]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[29]),
        .Q(m00_axi_wdata[29]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[2]),
        .Q(m00_axi_wdata[2]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[30]),
        .Q(m00_axi_wdata[30]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[31]),
        .Q(m00_axi_wdata[31]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[32] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[32]),
        .Q(m00_axi_wdata[32]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[33] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[33]),
        .Q(m00_axi_wdata[33]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[34] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[34]),
        .Q(m00_axi_wdata[34]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[35] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[35]),
        .Q(m00_axi_wdata[35]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[36] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[36]),
        .Q(m00_axi_wdata[36]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[37] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[37]),
        .Q(m00_axi_wdata[37]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[38] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[38]),
        .Q(m00_axi_wdata[38]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[39] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[39]),
        .Q(m00_axi_wdata[39]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[3]),
        .Q(m00_axi_wdata[3]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[40] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[40]),
        .Q(m00_axi_wdata[40]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[41] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[41]),
        .Q(m00_axi_wdata[41]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[42] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[42]),
        .Q(m00_axi_wdata[42]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[43] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[43]),
        .Q(m00_axi_wdata[43]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[44] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[44]),
        .Q(m00_axi_wdata[44]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[45] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[45]),
        .Q(m00_axi_wdata[45]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[46] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[46]),
        .Q(m00_axi_wdata[46]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[47] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[47]),
        .Q(m00_axi_wdata[47]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[48] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[48]),
        .Q(m00_axi_wdata[48]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[49] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[49]),
        .Q(m00_axi_wdata[49]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[4]),
        .Q(m00_axi_wdata[4]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[50] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[50]),
        .Q(m00_axi_wdata[50]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[51] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[51]),
        .Q(m00_axi_wdata[51]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[52] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[52]),
        .Q(m00_axi_wdata[52]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[53] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[53]),
        .Q(m00_axi_wdata[53]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[54] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[54]),
        .Q(m00_axi_wdata[54]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[55] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[55]),
        .Q(m00_axi_wdata[55]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[56] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[56]),
        .Q(m00_axi_wdata[56]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[57] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[57]),
        .Q(m00_axi_wdata[57]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[58] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[58]),
        .Q(m00_axi_wdata[58]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[59] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[59]),
        .Q(m00_axi_wdata[59]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[5]),
        .Q(m00_axi_wdata[5]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[60] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[60]),
        .Q(m00_axi_wdata[60]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[61] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[61]),
        .Q(m00_axi_wdata[61]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[62] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[62]),
        .Q(m00_axi_wdata[62]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[63] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[63]),
        .Q(m00_axi_wdata[63]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[6]),
        .Q(m00_axi_wdata[6]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[7]),
        .Q(m00_axi_wdata[7]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[8]),
        .Q(m00_axi_wdata[8]),
        .R(w_sys_rst));
  FDRE \r_wdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(take_sample),
        .D(s_data[9]),
        .Q(m00_axi_wdata[9]),
        .R(w_sys_rst));
  LUT6 #(
    .INIT(64'h0000AAAA00800080)) 
    r_wvalid_i_1
       (.I0(m00_axi_aresetn),
        .I1(r_awvalid_i_2_n_0),
        .I2(s_valid),
        .I3(r_inflight),
        .I4(m00_axi_wready),
        .I5(m00_axi_wvalid),
        .O(r_wvalid_i_1_n_0));
  FDRE r_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(r_wvalid_i_1_n_0),
        .Q(m00_axi_wvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000005557FFFF)) 
    s_ready_INST_0
       (.I0(r_done_cnt_reg[5]),
        .I1(r_done_cnt_reg[2]),
        .I2(r_done_cnt_reg[3]),
        .I3(r_done_cnt_reg[4]),
        .I4(r_done_cnt_reg[6]),
        .I5(r_inflight),
        .O(s_ready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
