`timescale 1ns / 1ps
module fifo_reader (
    input  wire        rd_clk,
    input  wire        rst_n,

    // FWFT FIFO：empty=0 时 fifo_dout 已是当前字；rd_en 使指针前进到下一字
    input  wire [63:0] fifo_dout,
    input  wire        fifo_empty,
    input  wire        rd_rst_busy,

    output reg         fifo_rd_en,   // 对 FIFO 的“前进”脉冲
    output reg  [63:0] out_data,     // 下游数据
    output reg         out_valid,    // 我这边手里有可用数据
    input  wire        out_ready     // 下游准备好接收
);

    // 一拍保持寄存器：握手语义 out_valid/out_ready
    reg        hold_valid;
    reg [63:0] hold_data;

    // 输出直连保持寄存器
    always @(*) begin
        out_data  = hold_data;
        out_valid = hold_valid;
    end

    always @(posedge rd_clk or negedge rst_n) begin
        if (!rst_n) begin
            hold_valid <= 1'b0;
            hold_data  <= 64'd0;
            fifo_rd_en <= 1'b0;
        end else begin
            fifo_rd_en <= 1'b0;  // 默认不前进，由条件触发一个拍

            // 情况A：当前没有持有数据 => 试图“装载第一字”
            if (!hold_valid) begin
                // 只要 FIFO 非空且不在复位忙，就把当前 fifo_dout 装进来
                if (!fifo_empty && !rd_rst_busy) begin
                    hold_data  <= fifo_dout; // FWFT：此拍即是当前字
                    hold_valid <= 1'b1;
                    // 立刻前进一次，把“下一字”在下一拍准备好（预取）
                    fifo_rd_en <= 1'b1;
                end
            end
            // 情况B：已经持有一个字
            else begin
                // 与下游握手：当 out_ready=1 时“消费”当前字
                if (out_ready) begin
                    // 若 FIFO 里还有下一字，则边消费边“无缝换入”
                    if (!fifo_empty && !rd_rst_busy) begin
                        hold_data  <= fifo_dout; // 之前已前进过，fifo_dout 此时显示“下一字”
                        hold_valid <= 1'b1;      // 继续保持有效
                        fifo_rd_en <= 1'b1;      // 再前进一步，为再下一字预取
                    end else begin
                        // 没有下一字了：本拍消费后变为空手
                        hold_valid <= 1'b0;
                        // 不拉 rd_en，等待 FIFO 来数后再按A路径装载
                    end
                end
                // 若 out_ready=0 则什么都不做，保持当前字与 valid，不向 FIFO 前进
            end
        end
    end
endmodule
