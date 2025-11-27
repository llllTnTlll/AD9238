//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Wed Nov 26 10:51:41 2025
//Host        : OMEN running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    SYS_CLK_50M,
    all_done_tri_io,
    aux_reset_in_0,
    ch1_din_0,
    ch1_otr_0,
    clk_out1_0,
    data_drop_0,
    m00_axi_txn_done_0,
    start_btn_0);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input SYS_CLK_50M;
  inout [0:0]all_done_tri_io;
  input aux_reset_in_0;
  input [11:0]ch1_din_0;
  input ch1_otr_0;
  output clk_out1_0;
  output data_drop_0;
  output m00_axi_txn_done_0;
  input start_btn_0;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire SYS_CLK_50M;
  wire [0:0]all_done_tri_i_0;
  wire [0:0]all_done_tri_io_0;
  wire [0:0]all_done_tri_o_0;
  wire [0:0]all_done_tri_t_0;
  wire aux_reset_in_0;
  wire [11:0]ch1_din_0;
  wire ch1_otr_0;
  wire clk_out1_0;
  wire data_drop_0;
  wire m00_axi_txn_done_0;
  wire start_btn_0;

  IOBUF all_done_tri_iobuf_0
       (.I(all_done_tri_o_0),
        .IO(all_done_tri_io[0]),
        .O(all_done_tri_i_0),
        .T(all_done_tri_t_0));
  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .SYS_CLK_50M(SYS_CLK_50M),
        .all_done_tri_i(all_done_tri_i_0),
        .all_done_tri_o(all_done_tri_o_0),
        .all_done_tri_t(all_done_tri_t_0),
        .aux_reset_in_0(aux_reset_in_0),
        .ch1_din_0(ch1_din_0),
        .ch1_otr_0(ch1_otr_0),
        .clk_out1_0(clk_out1_0),
        .data_drop_0(data_drop_0),
        .m00_axi_txn_done_0(m00_axi_txn_done_0),
        .start_btn_0(start_btn_0));
endmodule
