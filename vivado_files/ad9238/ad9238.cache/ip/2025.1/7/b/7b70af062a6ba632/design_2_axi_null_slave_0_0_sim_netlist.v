// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Oct 20 14:40:46 2025
// Host        : OMEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_axi_null_slave_0_0_sim_netlist.v
// Design      : design_2_axi_null_slave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_null_slave
   (S_ARREADY,
    S_WREADY,
    S_RLAST_reg_0,
    S_RVALID_reg_0,
    S_BID,
    S_BVALID,
    S_RID,
    ACLK,
    S_ARVALID,
    S_RREADY,
    S_ARLEN,
    ARESETn,
    S_AWVALID,
    S_WVALID,
    S_WLAST,
    S_AWID,
    S_BREADY,
    S_ARID);
  output S_ARREADY;
  output S_WREADY;
  output S_RLAST_reg_0;
  output S_RVALID_reg_0;
  output [0:0]S_BID;
  output S_BVALID;
  output [0:0]S_RID;
  input ACLK;
  input S_ARVALID;
  input S_RREADY;
  input [7:0]S_ARLEN;
  input ARESETn;
  input S_AWVALID;
  input S_WVALID;
  input S_WLAST;
  input [0:0]S_AWID;
  input S_BREADY;
  input [0:0]S_ARID;

  wire ACLK;
  wire ARESETn;
  wire [0:0]S_ARID;
  wire [7:0]S_ARLEN;
  wire S_ARREADY;
  wire S_ARVALID;
  wire [0:0]S_AWID;
  wire S_AWREADY_i_1_n_0;
  wire S_AWVALID;
  wire [0:0]S_BID;
  wire \S_BID[0]_i_1_n_0 ;
  wire S_BREADY;
  wire S_BVALID;
  wire S_BVALID_i_1_n_0;
  wire [0:0]S_RID;
  wire \S_RID[0]_i_1_n_0 ;
  wire \S_RID[0]_i_2_n_0 ;
  wire S_RLAST_i_1_n_0;
  wire S_RLAST_i_2_n_0;
  wire S_RLAST_i_3_n_0;
  wire S_RLAST_i_4_n_0;
  wire S_RLAST_i_5_n_0;
  wire S_RLAST_i_6_n_0;
  wire S_RLAST_reg_0;
  wire S_RREADY;
  wire S_RVALID0;
  wire S_RVALID_i_1_n_0;
  wire S_RVALID_reg_0;
  wire S_WLAST;
  wire S_WREADY;
  wire S_WVALID;
  wire [7:0]p_1_in;
  wire [7:0]r_cnt;
  wire \r_cnt[1]_i_2_n_0 ;
  wire \r_cnt[2]_i_2_n_0 ;
  wire \r_cnt[4]_i_2_n_0 ;
  wire \r_cnt[4]_i_3_n_0 ;
  wire \r_cnt[7]_i_1_n_0 ;
  wire r_id_hold;
  wire \r_id_hold[0]_i_1_n_0 ;
  wire w_active;
  wire w_active_i_1_n_0;
  wire w_id_hold;
  wire \w_id_hold[0]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    S_AWREADY_i_1
       (.I0(ARESETn),
        .O(S_AWREADY_i_1_n_0));
  FDCE S_AWREADY_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(1'b1),
        .Q(S_ARREADY));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \S_BID[0]_i_1 
       (.I0(S_BID),
        .I1(S_WREADY),
        .I2(w_active),
        .I3(S_WLAST),
        .I4(S_WVALID),
        .I5(w_id_hold),
        .O(\S_BID[0]_i_1_n_0 ));
  FDCE \S_BID_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(\S_BID[0]_i_1_n_0 ),
        .Q(S_BID));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    S_BVALID_i_1
       (.I0(S_BREADY),
        .I1(S_BVALID),
        .I2(S_WVALID),
        .I3(S_WLAST),
        .I4(w_active),
        .I5(S_WREADY),
        .O(S_BVALID_i_1_n_0));
  FDCE S_BVALID_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(S_BVALID_i_1_n_0),
        .Q(S_BVALID));
  LUT6 #(
    .INIT(64'hAFFFCCCCA000CCCC)) 
    \S_RID[0]_i_1 
       (.I0(S_ARID),
        .I1(r_id_hold),
        .I2(S_ARREADY),
        .I3(S_ARVALID),
        .I4(\S_RID[0]_i_2_n_0 ),
        .I5(S_RID),
        .O(\S_RID[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \S_RID[0]_i_2 
       (.I0(S_RREADY),
        .I1(S_RVALID_reg_0),
        .I2(S_RLAST_reg_0),
        .O(\S_RID[0]_i_2_n_0 ));
  FDCE \S_RID_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(\S_RID[0]_i_1_n_0 ),
        .Q(S_RID));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    S_RLAST_i_1
       (.I0(S_RLAST_i_2_n_0),
        .I1(S_RLAST_i_3_n_0),
        .I2(S_RLAST_i_4_n_0),
        .I3(S_RLAST_i_5_n_0),
        .I4(S_RLAST_i_6_n_0),
        .I5(S_RLAST_reg_0),
        .O(S_RLAST_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    S_RLAST_i_2
       (.I0(r_cnt[4]),
        .I1(r_cnt[3]),
        .I2(r_cnt[2]),
        .I3(r_cnt[0]),
        .I4(r_cnt[1]),
        .O(S_RLAST_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    S_RLAST_i_3
       (.I0(S_RLAST_reg_0),
        .I1(S_RVALID_reg_0),
        .I2(S_RREADY),
        .I3(r_cnt[7]),
        .I4(r_cnt[5]),
        .I5(r_cnt[6]),
        .O(S_RLAST_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    S_RLAST_i_4
       (.I0(S_ARLEN[4]),
        .I1(S_ARLEN[5]),
        .I2(S_ARLEN[2]),
        .I3(S_ARLEN[3]),
        .I4(S_ARLEN[7]),
        .I5(S_ARLEN[6]),
        .O(S_RLAST_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10111111)) 
    S_RLAST_i_5
       (.I0(S_ARLEN[1]),
        .I1(S_ARLEN[0]),
        .I2(S_RLAST_reg_0),
        .I3(S_RVALID_reg_0),
        .I4(S_RREADY),
        .O(S_RLAST_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8F888888)) 
    S_RLAST_i_6
       (.I0(S_ARREADY),
        .I1(S_ARVALID),
        .I2(S_RLAST_reg_0),
        .I3(S_RVALID_reg_0),
        .I4(S_RREADY),
        .O(S_RLAST_i_6_n_0));
  FDCE S_RLAST_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(S_RLAST_i_1_n_0),
        .Q(S_RLAST_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55FFC0C0)) 
    S_RVALID_i_1
       (.I0(S_RLAST_reg_0),
        .I1(S_ARREADY),
        .I2(S_ARVALID),
        .I3(S_RREADY),
        .I4(S_RVALID_reg_0),
        .O(S_RVALID_i_1_n_0));
  FDCE S_RVALID_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(S_RVALID_i_1_n_0),
        .Q(S_RVALID_reg_0));
  FDCE S_WREADY_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(w_active),
        .Q(S_WREADY));
  LUT5 #(
    .INIT(32'hAA00AAFE)) 
    \r_cnt[0]_i_1 
       (.I0(S_ARLEN[0]),
        .I1(\r_cnt[1]_i_2_n_0 ),
        .I2(r_cnt[1]),
        .I3(\S_RID[0]_i_2_n_0 ),
        .I4(r_cnt[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hAAC3AAC2)) 
    \r_cnt[1]_i_1 
       (.I0(S_ARLEN[1]),
        .I1(r_cnt[0]),
        .I2(r_cnt[1]),
        .I3(\S_RID[0]_i_2_n_0 ),
        .I4(\r_cnt[1]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_cnt[1]_i_2 
       (.I0(r_cnt[3]),
        .I1(r_cnt[4]),
        .I2(r_cnt[6]),
        .I3(r_cnt[5]),
        .I4(r_cnt[7]),
        .I5(r_cnt[2]),
        .O(\r_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888BBBB8888A)) 
    \r_cnt[2]_i_1 
       (.I0(S_ARLEN[2]),
        .I1(\S_RID[0]_i_2_n_0 ),
        .I2(r_cnt[1]),
        .I3(r_cnt[0]),
        .I4(r_cnt[2]),
        .I5(\r_cnt[2]_i_2_n_0 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_cnt[2]_i_2 
       (.I0(r_cnt[7]),
        .I1(r_cnt[5]),
        .I2(r_cnt[6]),
        .I3(r_cnt[4]),
        .I4(r_cnt[3]),
        .O(\r_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB88BB88BB88BB88A)) 
    \r_cnt[3]_i_1 
       (.I0(S_ARLEN[3]),
        .I1(\S_RID[0]_i_2_n_0 ),
        .I2(\r_cnt[4]_i_3_n_0 ),
        .I3(r_cnt[3]),
        .I4(r_cnt[4]),
        .I5(\r_cnt[4]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hBBBBBB88888888BA)) 
    \r_cnt[4]_i_1 
       (.I0(S_ARLEN[4]),
        .I1(\S_RID[0]_i_2_n_0 ),
        .I2(\r_cnt[4]_i_2_n_0 ),
        .I3(\r_cnt[4]_i_3_n_0 ),
        .I4(r_cnt[3]),
        .I5(r_cnt[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_cnt[4]_i_2 
       (.I0(r_cnt[6]),
        .I1(r_cnt[5]),
        .I2(r_cnt[7]),
        .O(\r_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_cnt[4]_i_3 
       (.I0(r_cnt[1]),
        .I1(r_cnt[0]),
        .I2(r_cnt[2]),
        .O(\r_cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB88888888BBBA)) 
    \r_cnt[5]_i_1 
       (.I0(S_ARLEN[5]),
        .I1(\S_RID[0]_i_2_n_0 ),
        .I2(r_cnt[7]),
        .I3(r_cnt[6]),
        .I4(r_cnt[5]),
        .I5(S_RLAST_i_2_n_0),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hBBBB8888BB8888BA)) 
    \r_cnt[6]_i_1 
       (.I0(S_ARLEN[6]),
        .I1(\S_RID[0]_i_2_n_0 ),
        .I2(r_cnt[7]),
        .I3(r_cnt[5]),
        .I4(r_cnt[6]),
        .I5(S_RLAST_i_2_n_0),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFFE)) 
    \r_cnt[7]_i_1 
       (.I0(S_RVALID0),
        .I1(r_cnt[7]),
        .I2(r_cnt[5]),
        .I3(r_cnt[6]),
        .I4(S_RLAST_i_2_n_0),
        .I5(\S_RID[0]_i_2_n_0 ),
        .O(\r_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888A)) 
    \r_cnt[7]_i_2 
       (.I0(S_ARLEN[7]),
        .I1(\S_RID[0]_i_2_n_0 ),
        .I2(r_cnt[5]),
        .I3(r_cnt[6]),
        .I4(S_RLAST_i_2_n_0),
        .I5(r_cnt[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cnt[7]_i_3 
       (.I0(S_ARVALID),
        .I1(S_ARREADY),
        .O(S_RVALID0));
  FDCE \r_cnt_reg[0] 
       (.C(ACLK),
        .CE(\r_cnt[7]_i_1_n_0 ),
        .CLR(S_AWREADY_i_1_n_0),
        .D(p_1_in[0]),
        .Q(r_cnt[0]));
  FDCE \r_cnt_reg[1] 
       (.C(ACLK),
        .CE(\r_cnt[7]_i_1_n_0 ),
        .CLR(S_AWREADY_i_1_n_0),
        .D(p_1_in[1]),
        .Q(r_cnt[1]));
  FDCE \r_cnt_reg[2] 
       (.C(ACLK),
        .CE(\r_cnt[7]_i_1_n_0 ),
        .CLR(S_AWREADY_i_1_n_0),
        .D(p_1_in[2]),
        .Q(r_cnt[2]));
  FDCE \r_cnt_reg[3] 
       (.C(ACLK),
        .CE(\r_cnt[7]_i_1_n_0 ),
        .CLR(S_AWREADY_i_1_n_0),
        .D(p_1_in[3]),
        .Q(r_cnt[3]));
  FDCE \r_cnt_reg[4] 
       (.C(ACLK),
        .CE(\r_cnt[7]_i_1_n_0 ),
        .CLR(S_AWREADY_i_1_n_0),
        .D(p_1_in[4]),
        .Q(r_cnt[4]));
  FDCE \r_cnt_reg[5] 
       (.C(ACLK),
        .CE(\r_cnt[7]_i_1_n_0 ),
        .CLR(S_AWREADY_i_1_n_0),
        .D(p_1_in[5]),
        .Q(r_cnt[5]));
  FDCE \r_cnt_reg[6] 
       (.C(ACLK),
        .CE(\r_cnt[7]_i_1_n_0 ),
        .CLR(S_AWREADY_i_1_n_0),
        .D(p_1_in[6]),
        .Q(r_cnt[6]));
  FDCE \r_cnt_reg[7] 
       (.C(ACLK),
        .CE(\r_cnt[7]_i_1_n_0 ),
        .CLR(S_AWREADY_i_1_n_0),
        .D(p_1_in[7]),
        .Q(r_cnt[7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \r_id_hold[0]_i_1 
       (.I0(S_ARID),
        .I1(S_ARVALID),
        .I2(S_ARREADY),
        .I3(r_id_hold),
        .O(\r_id_hold[0]_i_1_n_0 ));
  FDCE \r_id_hold_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(\r_id_hold[0]_i_1_n_0 ),
        .Q(r_id_hold));
  LUT6 #(
    .INIT(64'h0FFF8888FFFF8888)) 
    w_active_i_1
       (.I0(S_ARREADY),
        .I1(S_AWVALID),
        .I2(S_WVALID),
        .I3(S_WLAST),
        .I4(w_active),
        .I5(S_WREADY),
        .O(w_active_i_1_n_0));
  FDCE w_active_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(w_active_i_1_n_0),
        .Q(w_active));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \w_id_hold[0]_i_1 
       (.I0(S_AWID),
        .I1(S_AWVALID),
        .I2(S_ARREADY),
        .I3(w_id_hold),
        .O(\w_id_hold[0]_i_1_n_0 ));
  FDCE \w_id_hold_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(S_AWREADY_i_1_n_0),
        .D(\w_id_hold[0]_i_1_n_0 ),
        .Q(w_id_hold));
endmodule

(* CHECK_LICENSE_TYPE = "design_2_axi_null_slave_0_0,axi_null_slave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_null_slave,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ACLK,
    ARESETn,
    S_AWID,
    S_AWADDR,
    S_AWLEN,
    S_AWSIZE,
    S_AWBURST,
    S_AWVALID,
    S_AWREADY,
    S_WDATA,
    S_WSTRB,
    S_WLAST,
    S_WVALID,
    S_WREADY,
    S_BID,
    S_BRESP,
    S_BVALID,
    S_BREADY,
    S_ARID,
    S_ARADDR,
    S_ARLEN,
    S_ARSIZE,
    S_ARBURST,
    S_ARVALID,
    S_ARREADY,
    S_RID,
    S_RDATA,
    S_RRESP,
    S_RLAST,
    S_RVALID,
    S_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S, ASSOCIATED_RESET ARESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_clk_0, INSERT_VIP 0" *) input ACLK;
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

  wire \<const0> ;
  wire ACLK;
  wire ARESETn;
  wire [0:0]S_ARID;
  wire [7:0]S_ARLEN;
  wire S_ARVALID;
  wire [0:0]S_AWID;
  wire S_AWREADY;
  wire S_AWVALID;
  wire [0:0]S_BID;
  wire S_BREADY;
  wire S_BVALID;
  wire [0:0]S_RID;
  wire S_RLAST;
  wire S_RREADY;
  wire S_RVALID;
  wire S_WLAST;
  wire S_WREADY;
  wire S_WVALID;

  assign S_ARREADY = S_AWREADY;
  assign S_BRESP[1] = \<const0> ;
  assign S_BRESP[0] = \<const0> ;
  assign S_RDATA[63] = \<const0> ;
  assign S_RDATA[62] = \<const0> ;
  assign S_RDATA[61] = \<const0> ;
  assign S_RDATA[60] = \<const0> ;
  assign S_RDATA[59] = \<const0> ;
  assign S_RDATA[58] = \<const0> ;
  assign S_RDATA[57] = \<const0> ;
  assign S_RDATA[56] = \<const0> ;
  assign S_RDATA[55] = \<const0> ;
  assign S_RDATA[54] = \<const0> ;
  assign S_RDATA[53] = \<const0> ;
  assign S_RDATA[52] = \<const0> ;
  assign S_RDATA[51] = \<const0> ;
  assign S_RDATA[50] = \<const0> ;
  assign S_RDATA[49] = \<const0> ;
  assign S_RDATA[48] = \<const0> ;
  assign S_RDATA[47] = \<const0> ;
  assign S_RDATA[46] = \<const0> ;
  assign S_RDATA[45] = \<const0> ;
  assign S_RDATA[44] = \<const0> ;
  assign S_RDATA[43] = \<const0> ;
  assign S_RDATA[42] = \<const0> ;
  assign S_RDATA[41] = \<const0> ;
  assign S_RDATA[40] = \<const0> ;
  assign S_RDATA[39] = \<const0> ;
  assign S_RDATA[38] = \<const0> ;
  assign S_RDATA[37] = \<const0> ;
  assign S_RDATA[36] = \<const0> ;
  assign S_RDATA[35] = \<const0> ;
  assign S_RDATA[34] = \<const0> ;
  assign S_RDATA[33] = \<const0> ;
  assign S_RDATA[32] = \<const0> ;
  assign S_RDATA[31] = \<const0> ;
  assign S_RDATA[30] = \<const0> ;
  assign S_RDATA[29] = \<const0> ;
  assign S_RDATA[28] = \<const0> ;
  assign S_RDATA[27] = \<const0> ;
  assign S_RDATA[26] = \<const0> ;
  assign S_RDATA[25] = \<const0> ;
  assign S_RDATA[24] = \<const0> ;
  assign S_RDATA[23] = \<const0> ;
  assign S_RDATA[22] = \<const0> ;
  assign S_RDATA[21] = \<const0> ;
  assign S_RDATA[20] = \<const0> ;
  assign S_RDATA[19] = \<const0> ;
  assign S_RDATA[18] = \<const0> ;
  assign S_RDATA[17] = \<const0> ;
  assign S_RDATA[16] = \<const0> ;
  assign S_RDATA[15] = \<const0> ;
  assign S_RDATA[14] = \<const0> ;
  assign S_RDATA[13] = \<const0> ;
  assign S_RDATA[12] = \<const0> ;
  assign S_RDATA[11] = \<const0> ;
  assign S_RDATA[10] = \<const0> ;
  assign S_RDATA[9] = \<const0> ;
  assign S_RDATA[8] = \<const0> ;
  assign S_RDATA[7] = \<const0> ;
  assign S_RDATA[6] = \<const0> ;
  assign S_RDATA[5] = \<const0> ;
  assign S_RDATA[4] = \<const0> ;
  assign S_RDATA[3] = \<const0> ;
  assign S_RDATA[2] = \<const0> ;
  assign S_RDATA[1] = \<const0> ;
  assign S_RDATA[0] = \<const0> ;
  assign S_RRESP[1] = \<const0> ;
  assign S_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_null_slave inst
       (.ACLK(ACLK),
        .ARESETn(ARESETn),
        .S_ARID(S_ARID),
        .S_ARLEN(S_ARLEN),
        .S_ARREADY(S_AWREADY),
        .S_ARVALID(S_ARVALID),
        .S_AWID(S_AWID),
        .S_AWVALID(S_AWVALID),
        .S_BID(S_BID),
        .S_BREADY(S_BREADY),
        .S_BVALID(S_BVALID),
        .S_RID(S_RID),
        .S_RLAST_reg_0(S_RLAST),
        .S_RREADY(S_RREADY),
        .S_RVALID_reg_0(S_RVALID),
        .S_WLAST(S_WLAST),
        .S_WREADY(S_WREADY),
        .S_WVALID(S_WVALID));
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
