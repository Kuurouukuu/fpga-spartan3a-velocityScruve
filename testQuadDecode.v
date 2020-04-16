`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:51:17 04/16/2020
// Design Name:   quadDecode
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/testQuadDecode.v
// Project Name:  ledTest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: quadDecode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testQuadDecode;

	// Inputs
	reg i_A;
	reg i_B;
	reg Clk;
	reg i_sClr;
	reg i_setOrigin;

	// Outputs
	wire o_Direction;
	wire [0:15] o_Position;

	// Instantiate the Unit Under Test (UUT)
	quadDecode uut (
		.i_A(i_A), 
		.i_B(i_B), 
		.Clk(Clk), 
		.i_sClr(i_sClr), 
		.i_setOrigin(i_setOrigin), 
		.o_Direction(o_Direction), 
		.o_Position(o_Position)
	);

	initial begin
		// Initialize Inputs
		i_A = 0;
		i_B = 0;
		Clk = 0;
		i_sClr = 0;
		i_setOrigin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

