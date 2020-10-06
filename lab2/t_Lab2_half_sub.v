`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 02:22:15
// Design Name: 
// Module Name: t_Lab2_half_sub
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


module t_Lab2_half_sub(
    );
reg clk;    
reg x_in;
reg y_in;
wire B_out;
wire D_out;
/*
Lab2_half_sub_gate_level Lab2_half_sub_gate_level(
    .x(x_in),
    .y(y_in),
    .B(B_out),
    .D(D_out)
);

Lab2_half_sub_dataflow Lab2_half_sub_dataflow(
    .x(x_in),
    .y(y_in),
    .B(B_out),
    .D(D_out)
);
*/
Lab2_half_sub_behavior Lab2_half_sub_behavior(
    .x(x_in),
    .y(y_in),
    .B(B_out),
    .D(D_out)
);

integer count;

always #5 clk= ~clk;

initial begin
    clk = 1'b0;
    x_in = 1'b0;
    y_in = 1'b0;
    count = 1'b0;
end

always@(posedge clk)begin
    if(count==0)begin
        x_in=1'b0;
        y_in=1'b0;
    end
    if(count==1)begin
        x_in=1'b0;
        y_in=1'b1;
    end
    if(count==2)begin
        x_in=1'b1;
        y_in=1'b0;
    end
    if(count==3)begin
        x_in=1'b1;
        y_in=1'b1;
    end
    count=count+1;
    if(count==4)begin
        count=0;
    end
    end
endmodule
