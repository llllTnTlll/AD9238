// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Oct 17 13:41:42 2025
// Host        : OMEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_16_64_fwft_0_0_sim_netlist.v
// Design      : design_1_fifo_16_64_fwft_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_16_64_fwft_0_0,fifo_16_64_fwft,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 wr_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME wr_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input rd_clk;
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
   (rd_rst_busy,
    fifo_empty,
    fifo_full,
    fifo_almost_full,
    wr_rst_busy,
    out_valid,
    data_drop,
    out_data,
    wr_clk,
    rd_clk,
    in_data,
    out_ready,
    in_valid,
    rst_n);
  output rd_rst_busy;
  output fifo_empty;
  output fifo_full;
  output fifo_almost_full;
  output wr_rst_busy;
  output out_valid;
  output data_drop;
  output [63:0]out_data;
  input wr_clk;
  input rd_clk;
  input [15:0]in_data;
  input out_ready;
  input in_valid;
  input rst_n;

  wire data_drop;
  wire fifo_almost_full;
  wire [15:0]fifo_din_w;
  wire [63:0]fifo_dout_w;
  wire fifo_empty;
  wire fifo_full;
  wire fifo_wr_en_w;
  wire [15:0]in_data;
  wire in_valid;
  wire [63:0]out_data;
  wire out_ready;
  wire out_valid;
  wire rd_clk;
  wire rd_rst_busy;
  wire rst_n;
  wire u_fifo_reader_n_0;
  wire wr_clk;
  wire wr_rst_busy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_reader u_fifo_reader
       (.D(fifo_dout_w),
        .fifo_empty(fifo_empty),
        .out_data(out_data),
        .out_ready(out_ready),
        .out_valid(out_valid),
        .rd_clk(rd_clk),
        .rd_rst_busy(rd_rst_busy),
        .rst(u_fifo_reader_n_0),
        .rst_n(rst_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_writer u_fifo_writer
       (.Q(fifo_din_w),
        .data_drop(data_drop),
        .fifo_almost_full(fifo_almost_full),
        .fifo_full(fifo_full),
        .in_data(in_data),
        .in_valid(in_valid),
        .rst(u_fifo_reader_n_0),
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
        .rd_en(out_valid),
        .rd_rst_busy(rd_rst_busy),
        .rst(u_fifo_reader_n_0),
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
   (rst,
    out_valid,
    out_data,
    rd_rst_busy,
    fifo_empty,
    out_ready,
    rd_clk,
    rst_n,
    D);
  output rst;
  output out_valid;
  output [63:0]out_data;
  input rd_rst_busy;
  input fifo_empty;
  input out_ready;
  input rd_clk;
  input rst_n;
  input [63:0]D;

  wire [63:0]D;
  wire fifo_empty;
  wire fifo_rd_en0_n_0;
  wire [63:0]out_data;
  wire out_ready;
  wire out_valid;
  wire rd_clk;
  wire rd_rst_busy;
  wire rst;
  wire rst_n;
  wire t1;
  wire t2;

  LUT1 #(
    .INIT(2'h1)) 
    data_drop_i_2
       (.I0(rst_n),
        .O(rst));
  LUT4 #(
    .INIT(16'h0002)) 
    fifo_rd_en0
       (.I0(t1),
        .I1(rd_rst_busy),
        .I2(t2),
        .I3(fifo_empty),
        .O(fifo_rd_en0_n_0));
  FDCE fifo_rd_en_reg
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(fifo_rd_en0_n_0),
        .Q(out_valid));
  FDCE \out_data_reg[0] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[0]),
        .Q(out_data[0]));
  FDCE \out_data_reg[10] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[10]),
        .Q(out_data[10]));
  FDCE \out_data_reg[11] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[11]),
        .Q(out_data[11]));
  FDCE \out_data_reg[12] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[12]),
        .Q(out_data[12]));
  FDCE \out_data_reg[13] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[13]),
        .Q(out_data[13]));
  FDCE \out_data_reg[14] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[14]),
        .Q(out_data[14]));
  FDCE \out_data_reg[15] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[15]),
        .Q(out_data[15]));
  FDCE \out_data_reg[16] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[16]),
        .Q(out_data[16]));
  FDCE \out_data_reg[17] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[17]),
        .Q(out_data[17]));
  FDCE \out_data_reg[18] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[18]),
        .Q(out_data[18]));
  FDCE \out_data_reg[19] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[19]),
        .Q(out_data[19]));
  FDCE \out_data_reg[1] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[1]),
        .Q(out_data[1]));
  FDCE \out_data_reg[20] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[20]),
        .Q(out_data[20]));
  FDCE \out_data_reg[21] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[21]),
        .Q(out_data[21]));
  FDCE \out_data_reg[22] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[22]),
        .Q(out_data[22]));
  FDCE \out_data_reg[23] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[23]),
        .Q(out_data[23]));
  FDCE \out_data_reg[24] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[24]),
        .Q(out_data[24]));
  FDCE \out_data_reg[25] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[25]),
        .Q(out_data[25]));
  FDCE \out_data_reg[26] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[26]),
        .Q(out_data[26]));
  FDCE \out_data_reg[27] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[27]),
        .Q(out_data[27]));
  FDCE \out_data_reg[28] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[28]),
        .Q(out_data[28]));
  FDCE \out_data_reg[29] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[29]),
        .Q(out_data[29]));
  FDCE \out_data_reg[2] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[2]),
        .Q(out_data[2]));
  FDCE \out_data_reg[30] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[30]),
        .Q(out_data[30]));
  FDCE \out_data_reg[31] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[31]),
        .Q(out_data[31]));
  FDCE \out_data_reg[32] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[32]),
        .Q(out_data[32]));
  FDCE \out_data_reg[33] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[33]),
        .Q(out_data[33]));
  FDCE \out_data_reg[34] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[34]),
        .Q(out_data[34]));
  FDCE \out_data_reg[35] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[35]),
        .Q(out_data[35]));
  FDCE \out_data_reg[36] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[36]),
        .Q(out_data[36]));
  FDCE \out_data_reg[37] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[37]),
        .Q(out_data[37]));
  FDCE \out_data_reg[38] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[38]),
        .Q(out_data[38]));
  FDCE \out_data_reg[39] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[39]),
        .Q(out_data[39]));
  FDCE \out_data_reg[3] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[3]),
        .Q(out_data[3]));
  FDCE \out_data_reg[40] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[40]),
        .Q(out_data[40]));
  FDCE \out_data_reg[41] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[41]),
        .Q(out_data[41]));
  FDCE \out_data_reg[42] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[42]),
        .Q(out_data[42]));
  FDCE \out_data_reg[43] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[43]),
        .Q(out_data[43]));
  FDCE \out_data_reg[44] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[44]),
        .Q(out_data[44]));
  FDCE \out_data_reg[45] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[45]),
        .Q(out_data[45]));
  FDCE \out_data_reg[46] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[46]),
        .Q(out_data[46]));
  FDCE \out_data_reg[47] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[47]),
        .Q(out_data[47]));
  FDCE \out_data_reg[48] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[48]),
        .Q(out_data[48]));
  FDCE \out_data_reg[49] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[49]),
        .Q(out_data[49]));
  FDCE \out_data_reg[4] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[4]),
        .Q(out_data[4]));
  FDCE \out_data_reg[50] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[50]),
        .Q(out_data[50]));
  FDCE \out_data_reg[51] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[51]),
        .Q(out_data[51]));
  FDCE \out_data_reg[52] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[52]),
        .Q(out_data[52]));
  FDCE \out_data_reg[53] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[53]),
        .Q(out_data[53]));
  FDCE \out_data_reg[54] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[54]),
        .Q(out_data[54]));
  FDCE \out_data_reg[55] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[55]),
        .Q(out_data[55]));
  FDCE \out_data_reg[56] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[56]),
        .Q(out_data[56]));
  FDCE \out_data_reg[57] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[57]),
        .Q(out_data[57]));
  FDCE \out_data_reg[58] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[58]),
        .Q(out_data[58]));
  FDCE \out_data_reg[59] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[59]),
        .Q(out_data[59]));
  FDCE \out_data_reg[5] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[5]),
        .Q(out_data[5]));
  FDCE \out_data_reg[60] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[60]),
        .Q(out_data[60]));
  FDCE \out_data_reg[61] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[61]),
        .Q(out_data[61]));
  FDCE \out_data_reg[62] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[62]),
        .Q(out_data[62]));
  FDCE \out_data_reg[63] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[63]),
        .Q(out_data[63]));
  FDCE \out_data_reg[6] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[6]),
        .Q(out_data[6]));
  FDCE \out_data_reg[7] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[7]),
        .Q(out_data[7]));
  FDCE \out_data_reg[8] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[8]),
        .Q(out_data[8]));
  FDCE \out_data_reg[9] 
       (.C(rd_clk),
        .CE(fifo_rd_en0_n_0),
        .CLR(rst),
        .D(D[9]),
        .Q(out_data[9]));
  FDCE t1_reg
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(out_ready),
        .Q(t1));
  FDCE t2_reg
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(t1),
        .Q(t2));
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
