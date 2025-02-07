`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 22:41:47
// Design Name: 
// Module Name: Clock_Divider_tb
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


module Clock_Divider_tb();

    // Inputs
    reg clk_ip;
    reg rst;
    reg [3:0] factor;

    // Output
    wire clk_op;

    // Instantiate the Unit Under Test (UUT)
    Clock_Divider uut (
        .clk_ip(clk_ip),
        .rst(rst),
        .factor(factor),
        .clk_op(clk_op)
    );

    // Clock generation: 10ns period => 100MHz clock
    initial begin
        clk_ip = 0;
        forever #5 clk_ip = ~clk_ip;
    end

    // Test sequence
    initial begin
        // Initialize inputs
        rst = 1;
        #5 rst =0;
        factor = 4'd5; // Set division factor to 5

        // Apply reset
        #200;
        rst = 1;

        // Test 2
        #5 rst = 0;
        factor = 4'd8; // Set division factor to 5

        // Apply reset
        #200;
        rst = 1;
        // Test 3
        #5 rst = 0;
        factor = 4'd10; // Set division factor to 5

        // Apply reset
        #200;
        rst = 1;
        // Run simulation for a sufficient time to observe the output
        #1000;

        // Finish simulation
        $finish;
    end
endmodule

