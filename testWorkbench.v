`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:22:53 03/28/2020
// Design Name:   workbench
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/testWorkbench.v
// Project Name:  ledTest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: workbench
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testWorkbench;

	// Inputs
	reg i_clk;
	reg [15:0] i_value;

	// Outputs
	wire [15:0] o_value;

	// Instantiate the Unit Under Test (UUT)
	workbench uut (
		.i_clk(i_clk), 
		.i_value(i_value),  
		.o_value(o_value)
	);

	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_value = 0;

		// Wait 100 ns for global reset to finish
		#100;      
		forever #1 i_clk = ~i_clk;
		// Add stimulus here

	end
	
	initial begin
	#100
	
	i_value = 88;
	#10
	i_value = 66;
	
	
	end
      
endmodule

