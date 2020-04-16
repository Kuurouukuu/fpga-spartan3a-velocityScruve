`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:52:47 04/16/2020
// Design Name:   quad
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/testQuadDecodeV2.v
// Project Name:  ledTest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: quad
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testQuadDecodeV2;

	// Inputs
	reg clk;
	reg quadA;
	reg quadB;
	reg rst;

	// Outputs
	wire [15:0] count;
	wire [15:0] o_velocity;

	// Instantiate the Unit Under Test (UUT)
	quad uut (
		.clk(clk), 
		.quadA(quadA), 
		.quadB(quadB), 
		.count(count), 
		.rst(rst), 
		.o_velocity(o_velocity)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		quadA = 0;
		quadB = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		// Add stimulus here
		forever #1 clk = ~clk;
	end
	
	initial begin
	
	#100;
	quadA = 1;
	quadB = 0;
	#5;
	quadA = 1;
	quadB = 1;
	#5;
	quadA = 0;
	quadB = 1;
	#5;
	quadA = 0;
	quadB = 0;
	#5;
	#5;
	quadA = 0;
	quadB = 1;
	#5;
	quadA = 1;
	quadB = 1;
	#5;
	quadA = 1;
	quadB = 0;
	#5;
	quadA = 0;
	quadB = 0;
	end
      
endmodule

