`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/05 01:34:03
// Design Name: 
// Module Name: Lab3_Pos_Edge_D_FF_gatelevel
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


module Lab3_Pos_Edge_D_FF_gatelevel(
    D,
    clock,
    Q,
    NQ   
    );
    
input D;
input clock;
output Q;
output NQ;
wire w1,w2,w3,w4,w5,w6;

nand g1(w1,w4,w2);
nand g2(w2,clock,w1);
and g5(w5,clock,w2);
nand g3(w3,w5,w4);
nand g4(w4,D,w3);

Lab3_SbRb_Latch_gatelevel SR(w2,w3,Q,NQ);

endmodule

module Lab3_SbRb_Latch_gatelevel(
    Sb,
    Rb,
    Q,
    NQ
    );
    
input Sb;
input Rb;
output NQ;
output Q;

nand g1(Q,NQ,Sb);
nand g2(NQ,Rb,Q); 
    
    
endmodule
