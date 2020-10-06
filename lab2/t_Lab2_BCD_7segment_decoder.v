`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 16:29:16
// Design Name: 
// Module Name: t_Lab2_BCD_7segment_decoder
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


module t_Lab2_BCD_7segment_decoder(
    );
reg clk;
reg [3:0]D_in;
wire [6:0]A_out;

Lab2_BCD_7segment_decoder__behavior Lab2_BCD_7segment_decoder__behavior(
    .D(D_in),
    .A(A_out),
    .clk_in(clk)
);

/*
Lab2_BCD_7segment_decoder_dataflow Lab2_BCD_7segment_decoder_dataflow(
    .D(D_in),
    .A(A_out)
);
*/
integer count;



initial begin
    clk = 1'b0;
    D_in = 4'b0000;
    count = 1'b0;
end

always@(posedge clk)begin
    if(count==0)begin
       D_in=4'b0000;
    end
    if(count==1)begin
       D_in=4'b0001;
    end
    if(count==2)begin
       D_in=4'b0010;
    end
    if(count==3)begin
       D_in=4'b0011;
    end
    if(count==4)begin
       D_in=4'b0100;
    end
    if(count==5)begin
       D_in=4'b0101;
    end
    if(count==6)begin
       D_in=4'b0110;
    end
    if(count==7)begin
       D_in=4'b0111;
    end
    if(count==8)begin
       D_in=4'b1000;
    end
    if(count==9)begin
       D_in=4'b1001;
    end
    
    if(count==10)begin
       D_in[3:1]=3'b101;
    end
    if(count==11)begin
       D_in[3:2]=2'b11;
    end
    
    count=count+1;
    if(count==12)begin
        count=0;
    end
    end
always #5 clk= ~clk;
endmodule
