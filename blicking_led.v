`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/05 16:58:51
// Design Name: 
// Module Name: blicking_led
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


module blicking_led(
    input clk,
    input reset,
    output pulse
    );
    reg [31:0] clk_regs;
    wire pulse;
    assign pulse=clk_regs[22];
    always@(posedge clk)
        if (reset)
            begin
            clk_regs<=32'b0;
            end
        else
            clk_regs<=clk_regs+1;
            
            
            
endmodule
