`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/03 15:07:38
// Design Name: 
// Module Name: key_debouncer
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


module key_debouncer(
    input clk_50m,
    input key,
    input rst_n,
    output reg key_debounced
    );

    localparam integer CNT_MAX = 500000 - 1; // 10ms所需的计数
    reg [18:0] counter;

    reg key_ff1, key_ff2;
    always @(posedge clk_50m or negedge rst_n) begin
        if (!rst_n) begin
            key_ff1 <= 1'b1;
            key_ff2 <= 1'b1;
        end else begin
            key_ff1 <= key;        
            key_ff2 <= key_ff1;    
        end
    end
    wire key_sync = key_ff2;

    always @(posedge clk_50m or negedge rst_n) begin
        if(!rst_n)
            counter <= 19'b0;
        else if(key_sync == 1'b1)
            counter <= 19'b0;
        else if(key_sync == 1'b0 && counter < CNT_MAX)
            counter <= counter + 1;
        else 
            counter <= counter;
    end

    always @(posedge clk_50m or negedge rst_n) begin
        if(!rst_n)
            key_debounced <= 1'b0;
        else if(counter == CNT_MAX)
            key_debounced <= 1'b1;
        else
            key_debounced <= key_debounced;
    end
    
endmodule
