`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/04 23:43:54
// Design Name: 
// Module Name: Lab3_SbRb_Latch_gatelevel
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


module Lab3_SbRb_Latch_gatelevel(
    Sb,
    Rb,
    NQ,
    Q
    );
    
input Sb;
input Rb;
output NQ;
output Q;

nand g1(Q,NQ,Sb);
nand g2(NQ,Rb,Q); 
    
    
endmodule
