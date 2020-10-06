`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 01:04:02
// Design Name: 
// Module Name: t_Lab2_4_bit_sub
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


module t_Lab2_4_bit_sub(
    );
reg clk;
reg [3:0]X_in;
reg [3:0]Y_in;
reg Bin_in;
wire [3:0]Diff_out;
wire Bout_out;
/*
Lab2_ripple_borrow_4_bit_sub Lab2_ripple_borrow_4_bit_sub(
    .X(X_in),
    .Y(Y_in),
    .Bin(Bin_in),
    .Diff(Diff_out),
    .Bout(Bout_out)
);
*/
Lab2_borrow_lookahead_sub Lab2_borrow_lookahead_sub(
    .X(X_in),
    .Y(Y_in),
    .Bin(~Bin_in),
    .Diff(Diff_out),
    .Bout(Bout_out)
);

integer count;
always #5 clk=~clk;

initial begin
    clk=1'b0;
    count = 0;
    X_in=4'b1100;
    Y_in=4'b0101;
    Bin_in=1'b0;
end

always@(posedge clk)begin
    if(count==0)begin
    X_in=4'b1101;
    Y_in=4'b0101;
    Bin_in=1'b0;
    end
    if(count==1)begin
    X_in=4'b1100;
    Y_in=4'b1000;
    Bin_in=1'b1;
    end
    if(count==2)begin
    X_in=4'b0101;
    Y_in=4'b1101;
    Bin_in=1'b0;
    end
    if(count==3)begin
    X_in=4'b1000;
    Y_in=4'b1100;
    Bin_in=1'b1;
    end
    if(count==4)begin
    X_in=4'b0101;
    Y_in=4'b0101;
    Bin_in=1'b0;
    end
    if(count==5)begin
    X_in=4'b1011;
    Y_in=4'b1011;
    Bin_in=1'b1;
    end
    if(count==6)begin
    count=0;
    end
    
count=count+1;
end

    
endmodule
