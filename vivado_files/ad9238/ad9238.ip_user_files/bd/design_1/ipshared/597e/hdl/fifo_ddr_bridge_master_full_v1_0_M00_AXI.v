`timescale 1 ns / 1 ps

module fifo_ddr_bridge_v1_0_M00_AXI #(
    // ===== User params =====
    parameter integer C_M_TOTAL_BURST           = 100,                // 一共写多少次
    // ===== Don’t edit below =====
    parameter        C_M_TARGET_SLAVE_BASE_ADDR = 32'h0100_0000,      // 基地址
    parameter integer C_M_AXI_BURST_LEN         = 1,                  // 固定单拍
    parameter integer C_M_AXI_ID_WIDTH          = 1,
    parameter integer C_M_AXI_ADDR_WIDTH        = 32,
    parameter integer C_M_AXI_DATA_WIDTH        = 64,                 
    parameter integer C_M_AXI_AWUSER_WIDTH      = 0,
    parameter integer C_M_AXI_ARUSER_WIDTH      = 0,
    parameter integer C_M_AXI_WUSER_WIDTH       = 0,
    parameter integer C_M_AXI_RUSER_WIDTH       = 0,
    parameter integer C_M_AXI_BUSER_WIDTH       = 0
)(
    // ===== User side stream (单拍 valid/ready) =====
    input  wire [63:0] s_data,
    input  wire        s_valid,
    output wire        s_ready,

    // ===== Status =====
    output reg TXN_DONE,           // 全部完成标志
    output reg  ERROR,

    // ===== AXI =====
    input  wire M_AXI_ACLK,
    input  wire M_AXI_ARESETN,

    // 写地址
    output wire [C_M_AXI_ID_WIDTH-1:0]     M_AXI_AWID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_AWADDR,
    output wire [7:0]                      M_AXI_AWLEN,
    output wire [2:0]                      M_AXI_AWSIZE,
    output wire [1:0]                      M_AXI_AWBURST,
    output wire                            M_AXI_AWLOCK,
    output wire [3:0]                      M_AXI_AWCACHE,
    output wire [2:0]                      M_AXI_AWPROT,
    output wire [3:0]                      M_AXI_AWQOS,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0] M_AXI_AWUSER,
    output wire                            M_AXI_AWVALID,
    input  wire                            M_AXI_AWREADY,

    // 写数据
    output wire [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1:0] M_AXI_WSTRB,
    output wire                            M_AXI_WLAST,
    output wire [C_M_AXI_WUSER_WIDTH-1:0]  M_AXI_WUSER,
    output wire                            M_AXI_WVALID,
    input  wire                            M_AXI_WREADY,

    // 写响应
    input  wire [C_M_AXI_ID_WIDTH-1:0]     M_AXI_BID,
    input  wire [1:0]                      M_AXI_BRESP,
    input  wire [C_M_AXI_BUSER_WIDTH-1:0]  M_AXI_BUSER,
    input  wire                            M_AXI_BVALID,
    output wire                            M_AXI_BREADY,

    // 读地址（未用，绑 0）
    output wire [C_M_AXI_ID_WIDTH-1:0]     M_AXI_ARID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_ARADDR,
    output wire [7:0]                      M_AXI_ARLEN,
    output wire [2:0]                      M_AXI_ARSIZE,
    output wire [1:0]                      M_AXI_ARBURST,
    output wire                            M_AXI_ARLOCK,
    output wire [3:0]                      M_AXI_ARCACHE,
    output wire [2:0]                      M_AXI_ARPROT,
    output wire [3:0]                      M_AXI_ARQOS,
    output wire [C_M_AXI_ARUSER_WIDTH-1:0] M_AXI_ARUSER,
    output wire                            M_AXI_ARVALID,
    input  wire                            M_AXI_ARREADY,

    // 读数据（未用，绑 0）
    input  wire [C_M_AXI_ID_WIDTH-1:0]     M_AXI_RID,
    input  wire [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_RDATA,
    input  wire [1:0]                      M_AXI_RRESP,
    input  wire                            M_AXI_RLAST,
    input  wire [C_M_AXI_RUSER_WIDTH-1:0]  M_AXI_RUSER,
    input  wire                            M_AXI_RVALID,
    output wire                            M_AXI_RREADY
);

    // ===== helpers =====
    function integer clogb2 (input integer bit_depth);
        begin
            for (clogb2 = 0; bit_depth > 0; clogb2 = clogb2 + 1)
                bit_depth = bit_depth >> 1;
        end
    endfunction

    localparam integer DATA_BYTES = (C_M_AXI_DATA_WIDTH/8); // 8

    // ===== write control =====
    wire w_sys_rst = ~M_AXI_ARESETN;

    reg  [C_M_AXI_ADDR_WIDTH-1:0] r_awaddr_off;   // 相对基地址偏移
    reg                           r_awvalid;
    reg  [C_M_AXI_DATA_WIDTH-1:0] r_wdata;
    reg                           r_wvalid;

    wire                          w_aw_hs = r_awvalid & M_AXI_AWREADY;
    wire                          w_w_hs  = r_wvalid  & M_AXI_WREADY;

    reg  [15:0]                   r_done_cnt;     // 已完成笔数（按 B 通道）
    reg                           r_inflight;     // 是否有一笔写在途（等待 AW/W/B）

    // 用户侧 ready：仅当没有在途且尚未写满
    assign s_ready = (~r_inflight) && (r_done_cnt < C_M_TOTAL_BURST);

    // 接收一拍用户数据 -> 立刻发起单拍写（AW/W 同时拉起，直到各自握手）
    wire take_sample = s_valid & s_ready;

    // AW
    always @(posedge M_AXI_ACLK) begin
        if (w_sys_rst) begin
            r_awvalid    <= 1'b0;
            r_awaddr_off <= {C_M_AXI_ADDR_WIDTH{1'b0}};
        end else begin
            // 拉起
            if (take_sample)
                r_awvalid <= 1'b1;
            // 握手完成拉低
            if (w_aw_hs)
                r_awvalid <= 1'b0;

            // 地址递增在 B 应答后（单在途，避免乱序）
            if (M_AXI_BVALID && M_AXI_BREADY && (r_done_cnt < C_M_TOTAL_BURST))
                r_awaddr_off <= r_awaddr_off + DATA_BYTES[ C_M_AXI_ADDR_WIDTH-1:0 ];
        end
    end

    // W
    always @(posedge M_AXI_ACLK) begin
        if (w_sys_rst) begin
            r_wvalid <= 1'b0;
            r_wdata  <= {C_M_AXI_DATA_WIDTH{1'b0}};
        end else begin
            if (take_sample) begin
                r_wvalid <= 1'b1;
                r_wdata  <= s_data; // 采样锁存
            end
            if (w_w_hs)
                r_wvalid <= 1'b0;
        end
    end

    // 在途标志：接样本 -> 置位；收到 B -> 清零
    always @(posedge M_AXI_ACLK) begin
        if (w_sys_rst) begin
            r_inflight <= 1'b0;
        end else begin
            if (take_sample)
                r_inflight <= 1'b1;
            else if (M_AXI_BVALID && M_AXI_BREADY)
                r_inflight <= 1'b0;
        end
    end

    // 完成计数
    always @(posedge M_AXI_ACLK) begin
        if (w_sys_rst) begin
            r_done_cnt <= 16'd0;
        end else if (M_AXI_BVALID && M_AXI_BREADY && (r_done_cnt < C_M_TOTAL_BURST)) begin
            r_done_cnt <= r_done_cnt + 1'b1;
        end
        // 收满后保持计数不再变化，直到复位
    end

    // ===== AXI assignments =====
    // AW
    assign M_AXI_AWID    = 'b0;
    assign M_AXI_AWLEN   = 8'd0; // 单拍
    assign M_AXI_AWSIZE  = clogb2(DATA_BYTES-1); // =3
    assign M_AXI_AWBURST = 2'b01; // INCR
    assign M_AXI_AWLOCK  = 1'b0;
    assign M_AXI_AWCACHE = 4'b0010;
    assign M_AXI_AWPROT  = 3'h0;
    assign M_AXI_AWQOS   = 4'h0;
    assign M_AXI_AWUSER  = {C_M_AXI_AWUSER_WIDTH{1'b0}};
    assign M_AXI_AWVALID = r_awvalid;
    assign M_AXI_AWADDR  = C_M_TARGET_SLAVE_BASE_ADDR + r_awaddr_off;

    // W
    assign M_AXI_WDATA  = r_wdata;
    assign M_AXI_WSTRB  = {DATA_BYTES{1'b1}};
    assign M_AXI_WLAST  = 1'b1; // 单拍
    assign M_AXI_WUSER  = {C_M_AXI_WUSER_WIDTH{1'b0}};
    assign M_AXI_WVALID = r_wvalid;

    // B
    assign M_AXI_BREADY = 1'b1;

    // R/AR（未用）
    assign M_AXI_ARID    = 'b0;
    assign M_AXI_ARADDR  = {C_M_AXI_ADDR_WIDTH{1'b0}};
    assign M_AXI_ARLEN   = 8'd0;
    assign M_AXI_ARSIZE  = clogb2(DATA_BYTES-1);
    assign M_AXI_ARBURST = 2'b01;
    assign M_AXI_ARLOCK  = 1'b0;
    assign M_AXI_ARCACHE = 4'b0010;
    assign M_AXI_ARPROT  = 3'h0;
    assign M_AXI_ARQOS   = 4'h0;
    assign M_AXI_ARUSER  = {C_M_AXI_ARUSER_WIDTH{1'b0}};
    assign M_AXI_ARVALID = 1'b0;
    assign M_AXI_RREADY  = 1'b0;

    // DONE（在最后一个 B 握手时打一拍脉冲）
    reg r_txn_done;
    always @(posedge M_AXI_ACLK) begin
        if (w_sys_rst) r_txn_done <= 1'b0;
        else           r_txn_done <= (M_AXI_BVALID && M_AXI_BREADY && (r_done_cnt + 1'b1 == C_M_TOTAL_BURST));
    end

    always @(posedge M_AXI_ACLK) begin
        if (w_sys_rst) TXN_DONE <= 1'b0;
        else if (r_txn_done == 1'b1) TXN_DONE <= 1'b1;
    end

    // ERROR
    always @(posedge M_AXI_ACLK) begin
        if (w_sys_rst) ERROR <= 1'b0;
        else if (M_AXI_BVALID && M_AXI_BRESP[1]) ERROR <= 1'b1; // SLVERR/DECERR
    end

endmodule
