`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 02:25:11
// Design Name: 
// Module Name: Lab2_half_sub_dataflow
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


module Lab2_half_sub_dataflow(
    x,
    y,
    B,
    D
    );
    
input x;
input y;
output B;
output D;

assign B=(~x&y);
assign D=(x^y);
endmodule
