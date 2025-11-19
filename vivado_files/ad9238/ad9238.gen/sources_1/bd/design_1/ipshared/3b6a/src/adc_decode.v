`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/24 16:48:21
// Design Name: 
// Module Name: adc_decode
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

module adc12_to_16 (
    input  wire        clk,
    input  wire        rst_n,      
    input  wire [11:0] ch1_din,    
    input  wire        ch1_otr,    
    input  wire        en,         // 采样使能（1=输出有效）
    output reg  [15:0] ch1_dout,   
    output reg         data_valid  // en=1且未越界时有效
);

    // 越界时输出固定为FFF，否则为输入数据
    wire [11:0] din_mux = ch1_otr ? 12'hFFF : ch1_din;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ch1_dout   <= 16'h0000;
            data_valid <= 1'b0;
        end else begin
            ch1_dout   <= {4'b0000, din_mux};
            data_valid <= en & ~ch1_otr; 
        end
    end

endmodule