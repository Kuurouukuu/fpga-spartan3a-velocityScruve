`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:20:37 03/10/2020
// Design Name:   led
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/ledTb.v
// Project Name:  ledTest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ledTb;

	// Inputs
	reg Clk;
	reg [5:0] Switch;

	// Outputs
	wire [7:0] SevenSegment;
	wire [2:0] Enable;

	// Instantiate the Unit Under Test (UUT)
	led uut (
		.Clk(Clk), 
		.Switch(Switch), 
		.SevenSegment(SevenSegment), 
		.Enable(Enable)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Switch = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Switch = 'b000001;
		#20
		Switch = 'b000010;
		#20
		Switch = 'b000100;
	end
      
endmodule

