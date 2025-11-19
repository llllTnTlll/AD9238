// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Oct 21 12:55:38 2025
// Host        : OMEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_16_64_fwft_0_1_sim_netlist.v
// Design      : design_1_fifo_16_64_fwft_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_16_64_fwft_0_1,fifo_16_64_fwft,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 wr_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME wr_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input rd_clk;
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
