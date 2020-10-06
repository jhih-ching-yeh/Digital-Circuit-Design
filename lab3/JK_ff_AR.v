`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/05 22:44:11
// Design Name: 
// Module Name: JK_ff_AR
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


module JK_ff_AR(
    J,
    K,
    clk,
    reset,
    Q,
    NQ
    );

input J;
input K;
input clk;
input reset;
output Q;
output NQ;
reg Q;
wire NQ;

assign NQ=~Q;

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
