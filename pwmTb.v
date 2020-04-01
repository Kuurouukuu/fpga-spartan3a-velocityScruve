`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:17:13 03/31/2020
// Design Name:   pwm
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/pwmTb.v
// Project Name:  ledTest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pwm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pwmTb;

	// Inputs
	reg Clk;
	reg [15:0] pwm_in;

	// Outputs
	wire pwm_out;

	// Instantiate the Unit Under Test (UUT)
	pwm uut (
		.Clk(Clk), 
		.pwm_in(pwm_in), 
		.pwm_out(pwm_out)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		pwm_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
      forever #1 Clk = ~Clk;
		// Add stimulus here

	end
      
endmodule

