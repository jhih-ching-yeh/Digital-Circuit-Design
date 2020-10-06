`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/04 23:44:44
// Design Name: 
// Module Name: t_Lab3_SbRb_Latch_gatelevel
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


module t_Lab3_SbRb_Latch_gatelevel(
    );
reg clk;    
reg Sb_in;
reg Rb_in;
wire Q_out;
wire NQ_out;

Lab3_SbRb_Latch_gatelevel Lab3_SbRb_Latch_gatelevel(
    .Sb(Sb_in),
    .Rb(Rb_in),
    .Q(Q_out),
    .NQ(NQ_out)
);

integer count;



initial begin
    Sb_in = 1'b1;
    Rb_in = 1'b0;
    #10 Sb_in = 1'b1;
        Rb_in = 1'b1; 
    #20 Sb_in = 1'b0;
        Rb_in = 1'b1; 
    #30 Sb_in = 1'b1;
        Rb_in = 1'b1;
    #40 Sb_in = 1'b0;
        Rb_in = 1'b0;
    #50 Sb_in = 1'b1;
        Rb_in = 1'b1;
    #60 Sb_in = 1'b1;
        Rb_in = 1'b0;    
end



endmodule
