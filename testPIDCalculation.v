`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:28:51 04/01/2020
// Design Name:   PID
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/testPIDCalculation.v
// Project Name:  ledTest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PID
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testPIDCalculation;

	// Inputs
	reg i_clk;
	reg i_rst;
	reg [15:0] sp;
	reg [15:0] pv;

	// Outputs
	wire [15:0] o_un;
	wire o_valid;

	// Instantiate the Unit Under Test (UUT)
	PID uut (
		.i_clk(i_clk), 
		.i_rst(i_rst), 
		.o_un(o_un), 
		.o_valid(o_valid), 
		.sp(sp), 
		.pv(pv)
	);

	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_rst = 1;
		sp = 0;
		pv = 0;

		// Wait 100 ns for global reset to finish
		#100;
      i_rst = 0;
		sp = 450;
		pv = 300;
		forever #1 i_clk = ~i_clk;
		// Add stimulus here

	end
      
endmodule

