`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 23:56:37
// Design Name: 
// Module Name: Lab2_ BCD_7segment_decoder _dataflow
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


module Lab2_BCD_7segment_decoder_dataflow(
	D,
	A
    );
input [3:0]D;
output [6:0]A;
wire [6:0]A;
    
assign A[6]=(D==2||D==3||D==4||D==5||D==6||D==8||D==9)? 1'b1:1'b0;
assign A[5]=(D==0||D==4||D==5||D==6||D==8||D==9)? 1'b1:1'b0;
assign A[4]=(D==0||D==2||D==6||D==8)? 1'b1:1'b0;
assign A[3]=(D==0||D==2||D==3||D==5||D==6||D==8||D==9)? 1'b1:1'b0;
assign A[2]=(D==0||D==1||D==3||D==4||D==5||D==6||D==7||D==8||D==9)? 1'b1:1'b0;
assign A[1]=(D==0||D==1||D==2||D==3||D==4||D==7||D==8||D==9)? 1'b1:1'b0;
assign A[0]=(D==0||D==2||D==3||D==5||D==6||D==7||D==8||D==9)? 1'b1:1'b0;



endmodule
