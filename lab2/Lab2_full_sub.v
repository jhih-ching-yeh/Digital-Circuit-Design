`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 03:17:20
// Design Name: 
// Module Name: Lab2_full_sub
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


module Lab2_full_sub(
    x,
    y,
    z,
    B,
    D

    );
    
input x;
input y;
input z;
output B;
output D;

wire w1;
wire w2;
wire w3;

xor g1(w1,x,y);
and g2(w2,~x,y);
and g3(w3,~w1,z);
or g4(B,w2,w3);
xor g5(D,w1,z);

endmodule
