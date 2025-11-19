// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Oct 22 13:04:12 2025
// Host        : OMEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/liuzh/Desktop/high_speed_adc/fpga_prjs/ad9238/ad9238.gen/sources_1/bd/design_1/ip/design_1_fifo_16_64_fwft_0_1/design_1_fifo_16_64_fwft_0_1_sim_netlist.v
// Design      : design_1_fifo_16_64_fwft_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_16_64_fwft_0_1,fifo_16_64_fwft,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "fifo_16_64_fwft,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_fifo_16_64_fwft_0_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 wr_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME wr_clk, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_clk, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input rd_clk;
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

  design_1_fifo_16_64_fwft_0_1_fifo_16_64_fwft inst
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

(* ORIG_REF_NAME = "fifo_16_64_fwft" *) 
module design_1_fifo_16_64_fwft_0_1_fifo_16_64_fwft
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
    rst_n,
    out_ready,
    in_valid);
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
  input rst_n;
  input out_ready;
  input in_valid;

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

  design_1_fifo_16_64_fwft_0_1_fifo_reader u_fifo_reader
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
  design_1_fifo_16_64_fwft_0_1_fifo_writer u_fifo_writer
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
  design_1_fifo_16_64_fwft_0_1_fifo_generator_0 your_instance_name
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

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_generator_0" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module design_1_fifo_16_64_fwft_0_1_fifo_generator_0
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
  design_1_fifo_16_64_fwft_0_1_fifo_generator_v13_2_13 U0
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

(* ORIG_REF_NAME = "fifo_reader" *) 
module design_1_fifo_16_64_fwft_0_1_fifo_reader
   (rd_en,
    rst,
    out_valid,
    out_data,
    rd_clk,
    rst_n,
    out_ready,
    fifo_empty,
    rd_rst_busy,
    D);
  output rd_en;
  output rst;
  output out_valid;
  output [63:0]out_data;
  input rd_clk;
  input rst_n;
  input out_ready;
  input fifo_empty;
  input rd_rst_busy;
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
    data_drop_i_1
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

(* ORIG_REF_NAME = "fifo_writer" *) 
module design_1_fifo_16_64_fwft_0_1_fifo_writer
   (wr_en,
    data_drop,
    Q,
    wr_clk,
    rst,
    in_data,
    wr_rst_busy,
    fifo_full,
    fifo_almost_full,
    in_valid);
  output wr_en;
  output data_drop;
  output [15:0]Q;
  input wr_clk;
  input rst;
  input [15:0]in_data;
  input wr_rst_busy;
  input fifo_full;
  input fifo_almost_full;
  input in_valid;

  wire \/i__n_0 ;
  wire [15:0]Q;
  wire data_drop;
  wire fifo_almost_full;
  wire fifo_din0;
  wire fifo_full;
  wire [15:0]in_data;
  wire in_valid;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  LUT4 #(
    .INIT(16'hFE00)) 
    \/i_ 
       (.I0(wr_rst_busy),
        .I1(fifo_full),
        .I2(fifo_almost_full),
        .I3(in_valid),
        .O(\/i__n_0 ));
  FDCE data_drop_reg
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\/i__n_0 ),
        .Q(data_drop));
  LUT4 #(
    .INIT(16'h0002)) 
    \fifo_din[15]_i_1 
       (.I0(in_valid),
        .I1(fifo_almost_full),
        .I2(fifo_full),
        .I3(wr_rst_busy),
        .O(fifo_din0));
  FDCE \fifo_din_reg[0] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[0]),
        .Q(Q[0]));
  FDCE \fifo_din_reg[10] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[10]),
        .Q(Q[10]));
  FDCE \fifo_din_reg[11] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[11]),
        .Q(Q[11]));
  FDCE \fifo_din_reg[12] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[12]),
        .Q(Q[12]));
  FDCE \fifo_din_reg[13] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[13]),
        .Q(Q[13]));
  FDCE \fifo_din_reg[14] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[14]),
        .Q(Q[14]));
  FDCE \fifo_din_reg[15] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[15]),
        .Q(Q[15]));
  FDCE \fifo_din_reg[1] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[1]),
        .Q(Q[1]));
  FDCE \fifo_din_reg[2] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[2]),
        .Q(Q[2]));
  FDCE \fifo_din_reg[3] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[3]),
        .Q(Q[3]));
  FDCE \fifo_din_reg[4] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[4]),
        .Q(Q[4]));
  FDCE \fifo_din_reg[5] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[5]),
        .Q(Q[5]));
  FDCE \fifo_din_reg[6] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[6]),
        .Q(Q[6]));
  FDCE \fifo_din_reg[7] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[7]),
        .Q(Q[7]));
  FDCE \fifo_din_reg[8] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[8]),
        .Q(Q[8]));
  FDCE \fifo_din_reg[9] 
       (.C(wr_clk),
        .CE(fifo_din0),
        .CLR(rst),
        .D(in_data[9]),
        .Q(Q[9]));
  FDCE fifo_wr_en_reg
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(fifo_din0),
        .Q(wr_en));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_fifo_16_64_fwft_0_1_xpm_cdc_gray
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
module design_1_fifo_16_64_fwft_0_1_xpm_cdc_gray__parameterized1
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module design_1_fifo_16_64_fwft_0_1_xpm_cdc_single
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
module design_1_fifo_16_64_fwft_0_1_xpm_cdc_single__1
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
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module design_1_fifo_16_64_fwft_0_1_xpm_cdc_sync_rst
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
module design_1_fifo_16_64_fwft_0_1_xpm_cdc_sync_rst__1
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 141312)
`pragma protect data_block
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
udkUtNuy9BDw
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
