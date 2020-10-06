`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 01:35:01
// Design Name: 
// Module Name: Lab2_borrow_lookahead_sub
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


module Lab2_borrow_lookahead_sub(
    X,
    Y,
    Bin,
    Bout,
    Diff
    );

input [3:0]X;
input [3:0]Y;
input Bin;
output Bout;
output [3:0]Diff;

wire B0;
wire B1;
wire B2;



assign B0=Bin*(X[0]^Y[0])+X[0]*Y[0];
assign B1=(X[1]^Y[1])*(X[0]^Y[0])*Bin+(X[1]^Y[1])*X[0]*Y[0]+X[1]*Y[1];
assign B2=(X[2]^Y[2])*(X[1]^Y[1])*(X[0]^Y[0])*Bin+(X[2]^Y[2])*(X[1]^Y[1])*X[0]*Y[0]+(X[2]^Y[2])*X[1]*Y[1]+X[2]*Y[2];
assign Bout=(X[3]^Y[3])*(X[2]^Y[2])*(X[1]^Y[1])*(X[0]^Y[0])*Bin+(X[3]^Y[3])*(X[2]^Y[2])*(X[1]^Y[1])*X[0]*Y[0]+(X[3]^Y[3])*(X[2]^Y[2])*X[1]*Y[1]+(X[3]^Y[3])*X[2]*Y[2]+X[3]*Y[3];
assign Diff=X^Y^Bin;

endmodule
