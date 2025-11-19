// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Oct 21 12:55:30 2025
// Host        : OMEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/liuzh/Desktop/high_speed_adc/fpga_prjs/ad9238/ad9238.gen/sources_1/bd/design_1/ip/design_1_adc12_to_16_0_2/design_1_adc12_to_16_0_2_sim_netlist.v
// Design      : design_1_adc12_to_16_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_adc12_to_16_0_2,adc12_to_16,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "adc12_to_16,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_adc12_to_16_0_2
   (clk,
    rst_n,
    ch1_din,
    ch1_otr,
    en,
    ch1_dout,
    data_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [11:0]ch1_din;
  input ch1_otr;
  input en;
  output [15:0]ch1_dout;
  output data_valid;

  wire \<const0> ;
  wire [11:0]ch1_din;
  wire [11:0]\^ch1_dout ;
  wire ch1_otr;
  wire clk;
  wire data_valid;
  wire en;
  wire rst_n;

  assign ch1_dout[15] = \<const0> ;
  assign ch1_dout[14] = \<const0> ;
  assign ch1_dout[13] = \<const0> ;
  assign ch1_dout[12] = \<const0> ;
  assign ch1_dout[11:0] = \^ch1_dout [11:0];
  GND GND
       (.G(\<const0> ));
  design_1_adc12_to_16_0_2_adc12_to_16 inst
       (.ch1_din(ch1_din),
        .ch1_dout(\^ch1_dout ),
        .ch1_otr(ch1_otr),
        .clk(clk),
        .data_valid(data_valid),
        .en(en),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "adc12_to_16" *) 
module design_1_adc12_to_16_0_2_adc12_to_16
   (ch1_dout,
    data_valid,
    clk,
    ch1_din,
    ch1_otr,
    en,
    rst_n);
  output [11:0]ch1_dout;
  output data_valid;
  input clk;
  input [11:0]ch1_din;
  input ch1_otr;
  input en;
  input rst_n;

  wire [11:0]ch1_din;
  wire [11:0]ch1_dout;
  wire \ch1_dout[11]_i_2_n_0 ;
  wire ch1_otr;
  wire clk;
  wire data_valid;
  wire data_valid_i_1_n_0;
  wire [11:0]din_mux;
  wire en;
  wire rst_n;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[0]_i_1 
       (.I0(ch1_din[0]),
        .I1(ch1_otr),
        .O(din_mux[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[10]_i_1 
       (.I0(ch1_din[10]),
        .I1(ch1_otr),
        .O(din_mux[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[11]_i_1 
       (.I0(ch1_din[11]),
        .I1(ch1_otr),
        .O(din_mux[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \ch1_dout[11]_i_2 
       (.I0(rst_n),
        .O(\ch1_dout[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[1]_i_1 
       (.I0(ch1_din[1]),
        .I1(ch1_otr),
        .O(din_mux[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[2]_i_1 
       (.I0(ch1_din[2]),
        .I1(ch1_otr),
        .O(din_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[3]_i_1 
       (.I0(ch1_din[3]),
        .I1(ch1_otr),
        .O(din_mux[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[4]_i_1 
       (.I0(ch1_din[4]),
        .I1(ch1_otr),
        .O(din_mux[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[5]_i_1 
       (.I0(ch1_din[5]),
        .I1(ch1_otr),
        .O(din_mux[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[6]_i_1 
       (.I0(ch1_din[6]),
        .I1(ch1_otr),
        .O(din_mux[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[7]_i_1 
       (.I0(ch1_din[7]),
        .I1(ch1_otr),
        .O(din_mux[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[8]_i_1 
       (.I0(ch1_din[8]),
        .I1(ch1_otr),
        .O(din_mux[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ch1_dout[9]_i_1 
       (.I0(ch1_din[9]),
        .I1(ch1_otr),
        .O(din_mux[9]));
  FDCE \ch1_dout_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[0]),
        .Q(ch1_dout[0]));
  FDCE \ch1_dout_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[10]),
        .Q(ch1_dout[10]));
  FDCE \ch1_dout_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[11]),
        .Q(ch1_dout[11]));
  FDCE \ch1_dout_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[1]),
        .Q(ch1_dout[1]));
  FDCE \ch1_dout_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[2]),
        .Q(ch1_dout[2]));
  FDCE \ch1_dout_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[3]),
        .Q(ch1_dout[3]));
  FDCE \ch1_dout_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[4]),
        .Q(ch1_dout[4]));
  FDCE \ch1_dout_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[5]),
        .Q(ch1_dout[5]));
  FDCE \ch1_dout_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[6]),
        .Q(ch1_dout[6]));
  FDCE \ch1_dout_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[7]),
        .Q(ch1_dout[7]));
  FDCE \ch1_dout_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[8]),
        .Q(ch1_dout[8]));
  FDCE \ch1_dout_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(din_mux[9]),
        .Q(ch1_dout[9]));
  LUT2 #(
    .INIT(4'h2)) 
    data_valid_i_1
       (.I0(en),
        .I1(ch1_otr),
        .O(data_valid_i_1_n_0));
  FDCE data_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\ch1_dout[11]_i_2_n_0 ),
        .D(data_valid_i_1_n_0),
        .Q(data_valid));
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
