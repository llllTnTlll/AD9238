// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Oct 17 16:05:29 2025
// Host        : OMEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_fifo_16_64_fwft_0_0_sim_netlist.v
// Design      : design_2_fifo_16_64_fwft_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_fifo_16_64_fwft_0_0,fifo_16_64_fwft,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "fifo_16_64_fwft,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (wr_clk,
    rd_clk,
    rst_n,
    in_data,
    in_valid,
    data_drop,
    out_data,
    out_valid,
    out_ready,
    fifo_full,
    fifo_almost_full,
    fifo_empty,
    wr_rst_busy,
    rd_rst_busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 wr_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME wr_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_clk_0, INSERT_VIP 0" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_clk_0, INSERT_VIP 0" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [15:0]in_data;
  input in_valid;
  output data_drop;
  output [63:0]out_data;
  output out_valid;
  input out_ready;
  output fifo_full;
  output fifo_almost_full;
  output fifo_empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire data_drop;
  wire fifo_almost_full;
  wire fifo_empty;
  wire fifo_full;
  wire [15:0]in_data;
  wire in_valid;
  wire [63:0]out_data;
  wire out_ready;
  wire out_valid;
  wire rd_clk;
  wire rd_rst_busy;
  wire rst_n;
  wire wr_clk;
  wire wr_rst_busy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_16_64_fwft inst
       (.data_drop(data_drop),
        .fifo_almost_full(fifo_almost_full),
        .fifo_empty(fifo_empty),
        .fifo_full(fifo_full),
        .in_data(in_data),
        .in_valid(in_valid),
        .out_data(out_data),
        .out_ready(out_ready),
        .out_valid(out_valid),
        .rd_clk(rd_clk),
        .rd_rst_busy(rd_rst_busy),
        .rst_n(rst_n),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_16_64_fwft
   (fifo_full,
    fifo_almost_full,
    fifo_empty,
    wr_rst_busy,
    rd_rst_busy,
    data_drop,
    out_data,
    out_valid,
    wr_clk,
    rd_clk,
    in_data,
    in_valid,
    out_ready,
    rst_n);
  output fifo_full;
  output fifo_almost_full;
  output fifo_empty;
  output wr_rst_busy;
  output rd_rst_busy;
  output data_drop;
  output [63:0]out_data;
  output out_valid;
  input wr_clk;
  input rd_clk;
  input [15:0]in_data;
  input in_valid;
  input out_ready;
  input rst_n;

  wire data_drop;
  wire fifo_almost_full;
  wire [15:0]fifo_din_w;
  wire [63:0]fifo_dout_w;
  wire fifo_empty;
  wire fifo_full;
  wire fifo_rd_en_w;
  wire fifo_wr_en_w;
  wire [15:0]in_data;
  wire in_valid;
  wire [63:0]out_data;
  wire out_ready;
  wire out_valid;
  wire rd_clk;
  wire rd_rst_busy;
  wire rst_n;
  wire u_fifo_reader_n_1;
  wire wr_clk;
  wire wr_rst_busy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_reader u_fifo_reader
       (.D(fifo_dout_w),
        .fifo_empty(fifo_empty),
        .out_data(out_data),
        .out_ready(out_ready),
        .out_valid(out_valid),
        .rd_clk(rd_clk),
        .rd_en(fifo_rd_en_w),
        .rd_rst_busy(rd_rst_busy),
        .rst(u_fifo_reader_n_1),
        .rst_n(rst_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_writer u_fifo_writer
       (.Q(fifo_din_w),
        .data_drop(data_drop),
        .fifo_almost_full(fifo_almost_full),
        .fifo_full(fifo_full),
        .in_data(in_data),
        .in_valid(in_valid),
        .rst(u_fifo_reader_n_1),
        .wr_clk(wr_clk),
        .wr_en(fifo_wr_en_w),
        .wr_rst_busy(wr_rst_busy));
  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_0 your_instance_name
       (.almost_full(fifo_almost_full),
        .din(fifo_din_w),
        .dout(fifo_dout_w),
        .empty(fifo_empty),
        .full(fifo_full),
        .rd_clk(rd_clk),
        .rd_en(fifo_rd_en_w),
        .rd_rst_busy(rd_rst_busy),
        .rst(u_fifo_reader_n_1),
        .wr_clk(wr_clk),
        .wr_en(fifo_wr_en_w),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [15:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [63:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_full;
  wire [15:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [7:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "64" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_13 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_reader
   (rd_en,
    rst,
    out_valid,
    out_data,
    rd_clk,
    out_ready,
    fifo_empty,
    rd_rst_busy,
    rst_n,
    D);
  output rd_en;
  output rst;
  output out_valid;
  output [63:0]out_data;
  input rd_clk;
  input out_ready;
  input fifo_empty;
  input rd_rst_busy;
  input rst_n;
  input [63:0]D;

  wire [63:0]D;
  wire fifo_empty;
  wire \hold_data[63]_i_1_n_0 ;
  wire hold_valid_i_1_n_0;
  wire [63:0]out_data;
  wire out_ready;
  wire out_valid;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire rst_n;

  LUT1 #(
    .INIT(2'h1)) 
    data_drop_i_2
       (.I0(rst_n),
        .O(rst));
  FDCE fifo_rd_en_reg
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\hold_data[63]_i_1_n_0 ),
        .Q(rd_en));
  LUT4 #(
    .INIT(16'h000B)) 
    \hold_data[63]_i_1 
       (.I0(out_ready),
        .I1(out_valid),
        .I2(fifo_empty),
        .I3(rd_rst_busy),
        .O(\hold_data[63]_i_1_n_0 ));
  FDCE \hold_data_reg[0] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[0]),
        .Q(out_data[0]));
  FDCE \hold_data_reg[10] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[10]),
        .Q(out_data[10]));
  FDCE \hold_data_reg[11] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[11]),
        .Q(out_data[11]));
  FDCE \hold_data_reg[12] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[12]),
        .Q(out_data[12]));
  FDCE \hold_data_reg[13] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[13]),
        .Q(out_data[13]));
  FDCE \hold_data_reg[14] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[14]),
        .Q(out_data[14]));
  FDCE \hold_data_reg[15] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[15]),
        .Q(out_data[15]));
  FDCE \hold_data_reg[16] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[16]),
        .Q(out_data[16]));
  FDCE \hold_data_reg[17] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[17]),
        .Q(out_data[17]));
  FDCE \hold_data_reg[18] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[18]),
        .Q(out_data[18]));
  FDCE \hold_data_reg[19] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[19]),
        .Q(out_data[19]));
  FDCE \hold_data_reg[1] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[1]),
        .Q(out_data[1]));
  FDCE \hold_data_reg[20] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[20]),
        .Q(out_data[20]));
  FDCE \hold_data_reg[21] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[21]),
        .Q(out_data[21]));
  FDCE \hold_data_reg[22] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[22]),
        .Q(out_data[22]));
  FDCE \hold_data_reg[23] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[23]),
        .Q(out_data[23]));
  FDCE \hold_data_reg[24] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[24]),
        .Q(out_data[24]));
  FDCE \hold_data_reg[25] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[25]),
        .Q(out_data[25]));
  FDCE \hold_data_reg[26] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[26]),
        .Q(out_data[26]));
  FDCE \hold_data_reg[27] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[27]),
        .Q(out_data[27]));
  FDCE \hold_data_reg[28] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[28]),
        .Q(out_data[28]));
  FDCE \hold_data_reg[29] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[29]),
        .Q(out_data[29]));
  FDCE \hold_data_reg[2] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[2]),
        .Q(out_data[2]));
  FDCE \hold_data_reg[30] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[30]),
        .Q(out_data[30]));
  FDCE \hold_data_reg[31] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[31]),
        .Q(out_data[31]));
  FDCE \hold_data_reg[32] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[32]),
        .Q(out_data[32]));
  FDCE \hold_data_reg[33] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[33]),
        .Q(out_data[33]));
  FDCE \hold_data_reg[34] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[34]),
        .Q(out_data[34]));
  FDCE \hold_data_reg[35] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[35]),
        .Q(out_data[35]));
  FDCE \hold_data_reg[36] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[36]),
        .Q(out_data[36]));
  FDCE \hold_data_reg[37] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[37]),
        .Q(out_data[37]));
  FDCE \hold_data_reg[38] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[38]),
        .Q(out_data[38]));
  FDCE \hold_data_reg[39] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[39]),
        .Q(out_data[39]));
  FDCE \hold_data_reg[3] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[3]),
        .Q(out_data[3]));
  FDCE \hold_data_reg[40] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[40]),
        .Q(out_data[40]));
  FDCE \hold_data_reg[41] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[41]),
        .Q(out_data[41]));
  FDCE \hold_data_reg[42] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[42]),
        .Q(out_data[42]));
  FDCE \hold_data_reg[43] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[43]),
        .Q(out_data[43]));
  FDCE \hold_data_reg[44] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[44]),
        .Q(out_data[44]));
  FDCE \hold_data_reg[45] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[45]),
        .Q(out_data[45]));
  FDCE \hold_data_reg[46] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[46]),
        .Q(out_data[46]));
  FDCE \hold_data_reg[47] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[47]),
        .Q(out_data[47]));
  FDCE \hold_data_reg[48] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[48]),
        .Q(out_data[48]));
  FDCE \hold_data_reg[49] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[49]),
        .Q(out_data[49]));
  FDCE \hold_data_reg[4] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[4]),
        .Q(out_data[4]));
  FDCE \hold_data_reg[50] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[50]),
        .Q(out_data[50]));
  FDCE \hold_data_reg[51] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[51]),
        .Q(out_data[51]));
  FDCE \hold_data_reg[52] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[52]),
        .Q(out_data[52]));
  FDCE \hold_data_reg[53] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[53]),
        .Q(out_data[53]));
  FDCE \hold_data_reg[54] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[54]),
        .Q(out_data[54]));
  FDCE \hold_data_reg[55] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[55]),
        .Q(out_data[55]));
  FDCE \hold_data_reg[56] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[56]),
        .Q(out_data[56]));
  FDCE \hold_data_reg[57] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[57]),
        .Q(out_data[57]));
  FDCE \hold_data_reg[58] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[58]),
        .Q(out_data[58]));
  FDCE \hold_data_reg[59] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[59]),
        .Q(out_data[59]));
  FDCE \hold_data_reg[5] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[5]),
        .Q(out_data[5]));
  FDCE \hold_data_reg[60] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[60]),
        .Q(out_data[60]));
  FDCE \hold_data_reg[61] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[61]),
        .Q(out_data[61]));
  FDCE \hold_data_reg[62] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[62]),
        .Q(out_data[62]));
  FDCE \hold_data_reg[63] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[63]),
        .Q(out_data[63]));
  FDCE \hold_data_reg[6] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[6]),
        .Q(out_data[6]));
  FDCE \hold_data_reg[7] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[7]),
        .Q(out_data[7]));
  FDCE \hold_data_reg[8] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[8]),
        .Q(out_data[8]));
  FDCE \hold_data_reg[9] 
       (.C(rd_clk),
        .CE(\hold_data[63]_i_1_n_0 ),
        .CLR(rst),
        .D(D[9]),
        .Q(out_data[9]));
  LUT4 #(
    .INIT(16'h444F)) 
    hold_valid_i_1
       (.I0(out_ready),
        .I1(out_valid),
        .I2(fifo_empty),
        .I3(rd_rst_busy),
        .O(hold_valid_i_1_n_0));
  FDCE hold_valid_reg
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(hold_valid_i_1_n_0),
        .Q(out_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_writer
   (wr_en,
    data_drop,
    Q,
    wr_clk,
    rst,
    in_data,
    in_valid,
    fifo_almost_full,
    fifo_full,
    wr_rst_busy);
  output wr_en;
  output data_drop;
  output [15:0]Q;
  input wr_clk;
  input rst;
  input [15:0]in_data;
  input in_valid;
  input fifo_almost_full;
  input fifo_full;
  input wr_rst_busy;

  wire [15:0]Q;
  wire data_drop;
  wire fifo_almost_full;
  wire fifo_din0_n_0;
  wire fifo_full;
  wire [15:0]in_data;
  wire in_valid;
  wire p_0_in;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  LUT4 #(
    .INIT(16'hFEFF)) 
    data_drop_i_1
       (.I0(wr_rst_busy),
        .I1(fifo_full),
        .I2(fifo_almost_full),
        .I3(in_valid),
        .O(p_0_in));
  FDCE data_drop_reg
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in),
        .Q(data_drop));
  LUT4 #(
    .INIT(16'h0002)) 
    fifo_din0
       (.I0(in_valid),
        .I1(fifo_almost_full),
        .I2(fifo_full),
        .I3(wr_rst_busy),
        .O(fifo_din0_n_0));
  FDCE \fifo_din_reg[0] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[0]),
        .Q(Q[0]));
  FDCE \fifo_din_reg[10] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[10]),
        .Q(Q[10]));
  FDCE \fifo_din_reg[11] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[11]),
        .Q(Q[11]));
  FDCE \fifo_din_reg[12] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[12]),
        .Q(Q[12]));
  FDCE \fifo_din_reg[13] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[13]),
        .Q(Q[13]));
  FDCE \fifo_din_reg[14] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[14]),
        .Q(Q[14]));
  FDCE \fifo_din_reg[15] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[15]),
        .Q(Q[15]));
  FDCE \fifo_din_reg[1] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[1]),
        .Q(Q[1]));
  FDCE \fifo_din_reg[2] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[2]),
        .Q(Q[2]));
  FDCE \fifo_din_reg[3] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[3]),
        .Q(Q[3]));
  FDCE \fifo_din_reg[4] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[4]),
        .Q(Q[4]));
  FDCE \fifo_din_reg[5] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[5]),
        .Q(Q[5]));
  FDCE \fifo_din_reg[6] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[6]),
        .Q(Q[6]));
  FDCE \fifo_din_reg[7] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[7]),
        .Q(Q[7]));
  FDCE \fifo_din_reg[8] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[8]),
        .Q(Q[8]));
  FDCE \fifo_din_reg[9] 
       (.C(wr_clk),
        .CE(fifo_din0_n_0),
        .CLR(rst),
        .D(in_data[9]),
        .Q(Q[9]));
  FDCE fifo_wr_en_reg
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(fifo_din0_n_0),
        .Q(wr_en));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__1
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 141120)
`pragma protect data_block
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
`pragma protect end_protected
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
