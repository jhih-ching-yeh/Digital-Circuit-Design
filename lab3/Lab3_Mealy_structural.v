`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/05 23:02:22
// Design Name: 
// Module Name: Lab3_Mealy_structural
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


module Lab3_Mealy_structural(
    x,
    clock,
    reset,
    z
    );
input x;
input clock;
input reset;
output z;
wire A,B;
wire JA,KA,JB,KB;

assign JA=x;
assign KA=~x;
assign JB=(~A)*(~x);
assign KB=(~A)*(~x);
assign z=A+B;
//assign A=JA*(~A)+(~KA)*A;
//assign B=JB*(~B)+(~KB)*B;

JK_ff_AR M_A(JA,KA,clock,reset,A);
JK_ff_AR M_B(JB,KB,clock,reset,B);

    
endmodule


module JK_ff_AR(
    J,
    K,
    clk,
    reset,
    Q
    );

input J;
input K;
input clk;
input reset;
output Q;
reg Q;


always@(posedge clk,negedge reset)
if(reset==0) Q=0 ;


always@(posedge clk)
    case({J,K})
        2'b00: Q <= Q;
        2'b01: Q <= 1'b0;
        2'b10: Q <= 1'b1;
        2'b11: Q <= ~Q;
    endcase
 
    
endmodule
