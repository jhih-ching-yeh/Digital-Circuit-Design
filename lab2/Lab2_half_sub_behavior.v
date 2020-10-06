`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 02:58:12
// Design Name: 
// Module Name: Lab2_half_sub_behavior
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


module Lab2_half_sub_behavior(
    x,
    y,
    B,
    D
    );
    
input x;
input y;
output B;
output D;
reg B;
reg D;

always@(*)begin
     B = ~x & y;
     D = x ^ y;
end
endmodule
