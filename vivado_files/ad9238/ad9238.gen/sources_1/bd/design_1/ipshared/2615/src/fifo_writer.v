`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/06 16:49:19
// Design Name: 
// Module Name: fifo_writer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo_writer(
    input wr_clk,
    input rst_n,

    input [15:0] in_data,
    input in_valid,

    output reg [15:0] fifo_din,
    output reg fifo_wr_en,
    output reg data_drop,
    input  fifo_almost_full,  
    input  wr_rst_busy,       
    input  fifo_full          
    );

    wire backpressure = wr_rst_busy | fifo_full | fifo_almost_full;
    wire can_write = ~backpressure;

    always @(posedge wr_clk or negedge rst_n) begin
        if (!rst_n) begin
            fifo_din   <= 16'h0000;
            fifo_wr_en <= 1'b0;
            data_drop  <= 1'b0;
        end else begin
        if (in_valid && can_write) begin
            fifo_din   <= in_data;
            fifo_wr_en <= 1'b1;
            data_drop  <= 1'b0;
        end else begin
            fifo_wr_en <= 1'b0;
            if (in_valid && !can_write)
                data_drop <= 1'b1;
            else
                data_drop <= 1'b0;
        end
    end
end


endmodule
