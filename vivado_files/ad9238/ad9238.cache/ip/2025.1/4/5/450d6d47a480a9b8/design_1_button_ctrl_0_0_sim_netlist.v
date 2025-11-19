// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Oct 21 17:16:53 2025
// Host        : OMEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_button_ctrl_0_0_sim_netlist.v
// Design      : design_1_button_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_ctrl
   (debounced_level,
    pressed_pulse,
    y,
    clk,
    btn_in,
    rst_n);
  output debounced_level;
  output pressed_pulse;
  output y;
  input clk;
  input btn_in;
  input rst_n;

  wire armed;
  wire armed_i_1_n_0;
  wire btn_in;
  wire btn_n;
  wire clk;
  wire [18:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__3_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire \cnt[18]_i_2_n_0 ;
  wire \cnt[18]_i_3_n_0 ;
  wire \cnt[18]_i_4_n_0 ;
  wire \cnt[18]_i_5_n_0 ;
  wire \cnt[18]_i_6_n_0 ;
  wire \cnt[18]_i_7_n_0 ;
  wire \cnt[18]_i_8_n_0 ;
  wire [18:1]data0;
  wire debounced_level;
  wire level_n_d;
  wire level_n_i_1_n_0;
  wire level_n_i_2_n_0;
  wire level_n_reg_n_0;
  wire [18:0]p_0_in;
  wire pressed_pulse;
  wire rst_n;
  wire s1;
  wire s2;
  wire y;
  wire y_i_1_n_0;
  wire y_i_2_n_0;
  wire [3:1]NLW_cnt0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0_carry__3_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hF6)) 
    armed_i_1
       (.I0(level_n_reg_n_0),
        .I1(level_n_d),
        .I2(armed),
        .O(armed_i_1_n_0));
  FDCE armed_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(armed_i_1_n_0),
        .Q(armed));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({NLW_cnt0_carry__3_CO_UNCONNECTED[3:1],cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__3_O_UNCONNECTED[3:2],data0[18:17]}),
        .S({1'b0,1'b0,cnt[18:17]}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[0]_i_1 
       (.I0(s2),
        .I1(level_n_reg_n_0),
        .I2(cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[10]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[11]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[12]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[12]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[13]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[13]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[14]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[14]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[15]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[15]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[16]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[16]),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[17]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[17]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[18]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[18]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[18]_i_2 
       (.I0(\cnt[18]_i_3_n_0 ),
        .I1(\cnt[18]_i_4_n_0 ),
        .I2(\cnt[18]_i_5_n_0 ),
        .I3(\cnt[18]_i_6_n_0 ),
        .I4(\cnt[18]_i_7_n_0 ),
        .I5(\cnt[18]_i_8_n_0 ),
        .O(\cnt[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt[18]_i_3 
       (.I0(cnt[6]),
        .I1(cnt[5]),
        .I2(cnt[8]),
        .I3(cnt[7]),
        .O(\cnt[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[18]_i_4 
       (.I0(cnt[10]),
        .I1(cnt[9]),
        .I2(cnt[12]),
        .I3(cnt[11]),
        .O(\cnt[18]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt[18]_i_5 
       (.I0(cnt[18]),
        .I1(cnt[17]),
        .I2(cnt[0]),
        .O(\cnt[18]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cnt[18]_i_6 
       (.I0(cnt[13]),
        .I1(cnt[14]),
        .I2(cnt[16]),
        .I3(cnt[15]),
        .O(\cnt[18]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[18]_i_7 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[4]),
        .I3(cnt[3]),
        .O(\cnt[18]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[18]_i_8 
       (.I0(level_n_reg_n_0),
        .I1(s2),
        .O(\cnt[18]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[1]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[2]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[3]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[4]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[5]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[6]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[8]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[9]_i_1 
       (.I0(\cnt[18]_i_2_n_0 ),
        .I1(data0[9]),
        .O(p_0_in[9]));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[0]),
        .Q(cnt[0]));
  FDCE \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[10]),
        .Q(cnt[10]));
  FDCE \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[11]),
        .Q(cnt[11]));
  FDCE \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[12]),
        .Q(cnt[12]));
  FDCE \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[13]),
        .Q(cnt[13]));
  FDCE \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[14]),
        .Q(cnt[14]));
  FDCE \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[15]),
        .Q(cnt[15]));
  FDCE \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[16]),
        .Q(cnt[16]));
  FDCE \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[17]),
        .Q(cnt[17]));
  FDCE \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[18]),
        .Q(cnt[18]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[1]),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[2]),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[3]),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[4]),
        .Q(cnt[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[5]),
        .Q(cnt[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[6]),
        .Q(cnt[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[7]),
        .Q(cnt[7]));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[8]),
        .Q(cnt[8]));
  FDCE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(p_0_in[9]),
        .Q(cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    debounced_level_INST_0
       (.I0(level_n_reg_n_0),
        .O(debounced_level));
  FDCE level_n_d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(level_n_reg_n_0),
        .Q(level_n_d));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    level_n_i_1
       (.I0(s2),
        .I1(level_n_reg_n_0),
        .I2(level_n_i_2_n_0),
        .O(level_n_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    level_n_i_2
       (.I0(\cnt[18]_i_7_n_0 ),
        .I1(\cnt[18]_i_6_n_0 ),
        .I2(\cnt[18]_i_5_n_0 ),
        .I3(\cnt[18]_i_4_n_0 ),
        .I4(\cnt[18]_i_3_n_0 ),
        .O(level_n_i_2_n_0));
  FDCE level_n_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(level_n_i_1_n_0),
        .Q(level_n_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    pressed_pulse_INST_0
       (.I0(armed),
        .I1(level_n_reg_n_0),
        .I2(level_n_d),
        .O(pressed_pulse));
  LUT1 #(
    .INIT(2'h1)) 
    s1_i_1
       (.I0(btn_in),
        .O(btn_n));
  FDCE s1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(btn_n),
        .Q(s1));
  FDCE s2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(s1),
        .Q(s2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    y_i_1
       (.I0(level_n_d),
        .I1(level_n_reg_n_0),
        .I2(armed),
        .I3(y),
        .O(y_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_i_2
       (.I0(rst_n),
        .O(y_i_2_n_0));
  FDCE y_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(y_i_2_n_0),
        .D(y_i_1_n_0),
        .Q(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_button_ctrl_0_0,button_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "button_ctrl,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    btn_in,
    y,
    debounced_level,
    pressed_pulse);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input btn_in;
  output y;
  output debounced_level;
  output pressed_pulse;

  wire btn_in;
  wire clk;
  wire debounced_level;
  wire pressed_pulse;
  wire rst_n;
  wire y;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_ctrl inst
       (.btn_in(btn_in),
        .clk(clk),
        .debounced_level(debounced_level),
        .pressed_pulse(pressed_pulse),
        .rst_n(rst_n),
        .y(y));
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
