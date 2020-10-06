`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 15:08:43
// Design Name: 
// Module Name: Lab2_BCD_7segment_decoder__behavior
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


module Lab2_BCD_7segment_decoder__behavior(
    D,
    A,
    clk_in
    );
    
input clk_in;
input [3:0] D;
output [6:0] A;

reg [7-1:0]A ;

//reg [6:0]A = 7'b0000000;
//assign AA = A;
always@(posedge clk_in) begin

   //A <= 7'b0001000;
    if(D==4'b0000)begin
    A=7'b0111111;
    end 
    else if(D==4'b0001)begin
    A=7'b0000110;
    end  
    else if(D==4'b0010)begin
    A=7'b1011011;
    end
    else if(D==4'b0011)begin
    A=7'b1001111;
    end
    else if(D==4'b0100)begin
    A=7'b1100110;
    end
    else if(D==4'b0101)begin
    A=7'b1101101;
    end
    else if(D==4'b0110)begin
    A=7'b1111101;
    end
    else if(D==4'b0111)begin
    A=7'b0000111;
    end
    else if(D==4'b1000)begin
    A=7'b1111111;
    end        
    else if(D==4'b1001)begin
    A=7'b1101111;
    end
    
    else if(D[3:1]==3'b101)begin
    A=7'b0000000;
    end  
    else if(D[3:2]==2'b11)begin
    A=7'b0000000;
    end  
    
end

endmodule
