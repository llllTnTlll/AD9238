// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Oct 22 13:04:11 2025
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_writer
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
