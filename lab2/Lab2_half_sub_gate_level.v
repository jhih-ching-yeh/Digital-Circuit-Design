`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 02:15:03
// Design Name: 
// Module Name: Lab2_half_sub_gate_level(output D, B, input x, y)
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


module Lab2_half_sub_gate_level(
    x,
    y,
    B,
    D
    );
    
input x;
input y;
output B;
output D;


xor g1(D,x,y);
and g2(B,~x,y);

endmodule
