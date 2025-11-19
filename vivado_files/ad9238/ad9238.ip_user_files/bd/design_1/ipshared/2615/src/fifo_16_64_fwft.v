`timescale 1ns / 1ps


module fifo_16_64_fwft (
    // clocks & reset
    input  wire        wr_clk,
    input  wire        rd_clk,
    input  wire        rst_n,            // 低有效复位

    // write-side 
    input  wire [15:0] in_data,
    input  wire        in_valid,
    output wire        data_drop,

    // === read-side standard ready/valid ===
    output wire [63:0] out_data,           // 读侧输出数据（接 AXI 写 IP 的 S_DATA）
    output wire        out_valid,          // 数据有效（接 AXI 写 IP 的 S_VALID）
    input  wire        out_ready,          // 下游可接收（接 AXI 写 IP 的 S_READY）

    // (optional) debug/status
    output wire        fifo_full,
    output wire        fifo_almost_full,
    output wire        fifo_empty,
    output wire        wr_rst_busy,
    output wire        rd_rst_busy
);

    // -------------------------
    // 线路连接信号
    // -------------------------
    wire [15:0] fifo_din_w;
    wire        fifo_wr_en_w;
    wire        fifo_rd_en_w;
    wire [63:0] fifo_dout_w;


    fifo_writer u_fifo_writer (
        .wr_clk           (wr_clk),
        .rst_n            (rst_n),
        .in_data          (in_data),
        .in_valid         (in_valid),
        .fifo_din         (fifo_din_w),
        .fifo_wr_en       (fifo_wr_en_w),
        .fifo_almost_full (fifo_almost_full),
        .wr_rst_busy      (wr_rst_busy),
        .fifo_full        (fifo_full),
        .data_drop        (data_drop)
    );


    fifo_reader u_fifo_reader (
        .rd_clk      (rd_clk),
        .rst_n       (rst_n),

        // 连接到 FIFO（FWFT）
        .fifo_dout   (fifo_dout_w),
        .fifo_empty  (fifo_empty),
        .rd_rst_busy (rd_rst_busy),
        .fifo_rd_en  (fifo_rd_en_w),

        .out_data    (out_data),     
        .out_valid   (out_valid),
        .out_ready   (out_ready)
    );


    fifo_generator_0 your_instance_name (
        .rst         (~rst_n),          
        .wr_clk      (wr_clk),        
        .rd_clk      (rd_clk),         
        .din         (fifo_din_w),     
        .wr_en       (fifo_wr_en_w),  
        .rd_en       (fifo_rd_en_w),   
        .dout        (fifo_dout_w),     
        .full        (fifo_full),       
        .almost_full (fifo_almost_full),
        .empty       (fifo_empty),      
        .wr_rst_busy (wr_rst_busy),    
        .rd_rst_busy (rd_rst_busy)      
    );

endmodule