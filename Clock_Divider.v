`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 22:23:22
// Design Name: 
// Module Name: Clock_Divider
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


module Clock_Divider(
    input clk_ip,rst,
    input [3:0] factor,
    output reg clk_op
    );
    integer counter;
    
    always @(posedge clk_ip or posedge rst)
    begin
        if(rst)
        begin
            counter<=0;
            clk_op<=0;
        end
        else if(counter == factor-1)
        begin
            clk_op <= ~clk_op;
            counter <= 0;
        end
        else    counter<=counter+1;
            
    end
    
    
endmodule
