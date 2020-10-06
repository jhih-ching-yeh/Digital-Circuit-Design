`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/05 21:57:50
// Design Name: 
// Module Name: t_Lab3_Mealy
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


module t_Lab3_Mealy(
    );
reg x_in;    
reg clock_in;
reg reset_in;
wire z_out;
/*
Lab3_Mealy_state_diagram Lab3_Mealy_state_diagram(
    .x(x_in),
    .clock(clock_in),
    .reset(reset_in),
    .z(z_out)
);
*/
Lab3_Mealy_structural Lab3_Mealy_structural(
    .x(x_in),
    .clock(clock_in),
    .reset(reset_in),
    .z(z_out)
);
/*
JK_ff_AR JK_ff_AR(
    .J(J_in),
    .K(K_in),
    .Q(Q_in),
    .NQ(NQ_out)
);
*/
initial #200 $finish;
initial begin clock_in=0;
forever #5 clock_in=~clock_in;
end

initial fork
    reset_in=0;
#2 reset_in=1;
#87 reset_in=0;
#89 reset_in=1;

#10 x_in=1;
#30 x_in=0;
#40 x_in=1;
#50 x_in=0;
#52 x_in=1;
#54 x_in=0;
#70 x_in=1;
#80 x_in=1;
#70 x_in=0;
#90 x_in=1;
#100 x_in=0;
#120 x_in=1;
#160 x_in=0;
#170 x_in=1;
join

endmodule
