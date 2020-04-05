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
	reg i_reset;
	reg [15:0] i_value;

	// Outputs
	wire [15:0] o_value;

	// Instantiate the Unit Under Test (UUT)
	workbench uut (
		.i_clk(i_clk),
		.i_reset(i_reset),
		.i_value(i_value),  
		.o_value(o_value)
	);

	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_value = 0;
		i_reset = 0;

		// Wait 100 ns for global reset to finish
		#100     
		forever #1 i_clk = ~i_clk;
		// Add stimulus here

	end
	
	initial begin
	#90
	i_reset = 1;
	#5
	i_reset = 0;
	#5	
	i_value = 8;
	repeat(20) begin
		#5
		i_value = i_value*0.9 - 'd10;
		if ( (i_value > 'd1496) && (i_value < 'b0111_1111_1111_111) ) 
			i_value = i_value - 'd1496;
		if ( (i_value < 'b1111_1111_1111_1111) && ( i_value > 'b1000_0000_0000_000))
			i_value = i_value + 'd1496;
	end
	
	
	end
      
endmodule

