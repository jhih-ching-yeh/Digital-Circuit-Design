`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 03:24:09
// Design Name: 
// Module Name: t_Lab2_full_sub
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


module t_Lab2_full_sub(

    );
reg clk;    
reg x_in;
reg y_in;
reg z_in;
wire B_out;
wire D_out;

Lab2_full_sub Lab2_full_sub(
    .x(x_in),
    .y(y_in),
    .z(z_in),
    .B(B_out),
    .D(D_out)
);


integer count;

always #5 clk= ~clk;

initial begin
    clk = 1'b0;
    x_in = 1'b0;
    y_in = 1'b0;
    z_in = 1'b0;
    count = 1'b0;
end

always@(posedge clk)begin
    if(count==0)begin
        x_in=1'b0;
        y_in=1'b0;
        z_in=1'b0;
    end
    if(count==1)begin
        x_in=1'b0;
        y_in=1'b0;
        z_in=1'b1;
    end
    if(count==2)begin
        x_in=1'b0;
        y_in=1'b1;
        z_in=1'b0;
    end
    if(count==3)begin
        x_in=1'b0;
        y_in=1'b1;
        z_in=1'b1;
    end
    if(count==4)begin
        x_in=1'b1;
        y_in=1'b0;
        z_in=1'b0;
    end
    if(count==5)begin
        x_in=1'b1;
        y_in=1'b0;
        z_in=1'b1;
    end
    if(count==6)begin
        x_in=1'b1;
        y_in=1'b1;
        z_in=1'b0;
    end
    if(count==7)begin
        x_in=1'b1;
        y_in=1'b1;
        z_in=1'b1;
    end
    count=count+1;//為什麼這行不是每個都打
    if(count==8)begin
        count=0;
    end
    end
endmodule
