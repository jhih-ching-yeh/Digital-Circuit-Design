`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/05 02:03:14
// Design Name: 
// Module Name: t_Lab3_Pos_Edge_D_FF_gatelevel
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


module t_Lab3_Pos_Edge_D_FF_gatelevel(
    );
reg clock_in;    
reg D_in;
wire Q_out;
wire NQ_out;

Lab3_Pos_Edge_D_FF_gatelevel Lab3_Pos_Edge_D_FF_gatelevel(
    .clock(clock_in),
    .D(D_in),
    .Q(Q_out),
    .NQ(NQ_out)
);


integer count;

always #10 clock_in= ~clock_in;

initial begin
    clock_in = 1'b0;
    D_in = 1'b0;
    count = 1'b0;
end

always@(posedge clock_in)begin
    if(count==0)begin
        clock_in=1'b0;
        D_in=1'b0;
    end
    if(count==1)begin
        clock_in=1'b1;
        D_in=1'b1;
    end
    if(count==2)begin
        clock_in=1'b0;
        D_in=1'b0;
    end
    if(count==3)begin
        clock_in=1'b1;
        D_in=1'b1;
    end
    if(count==4)begin
        clock_in=1'b0;
        D_in=1'b0;
    end
    if(count==5)begin
        clock_in=1'b1;
        D_in=1'b1;
    end
    if(count==6)begin
        clock_in=1'b0;
        D_in=1'b0;
    end
    count=count+1;
    if(count==7)begin
        count=0;
    end

end
endmodule

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

endmodule
