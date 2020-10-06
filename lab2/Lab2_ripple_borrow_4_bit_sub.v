`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 18:24:11
// Design Name: 
// Module Name: Lab2_ripple_borrow_4_bit_sub
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
//end_of_full_sub

module Lab2_ripple_borrow_4_bit_sub(
    X,
    Y,
    Bin,
    Bout,
    Diff
       
    );

input [3:0]X;
input [3:0]Y;
input Bin;
output [3:0]Diff;
output Bout;

   
wire	B0; 
wire	B1; 
wire	B2; 

Lab2_full_sub f1(X[0],Y[0],Bin,B0,Diff[0]);
Lab2_full_sub f2(X[1],Y[1],B0,B1,Diff[1]);
Lab2_full_sub f3(X[2],Y[2],B1,B2,Diff[2]);
Lab2_full_sub f4(X[3],Y[3],B2,Bout,Diff[3]);
 
endmodule
