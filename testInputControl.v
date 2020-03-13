`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:38:03 03/12/2020
// Design Name:   led
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/testInputControl.v
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

module testInputControl;

	// Inputs
	reg Clk;
	reg [5:0] Switch;
	reg i_A;
	reg i_B;

	// Outputs
	wire [7:0] SevenSegment;
	wire [2:0] Enable;

	// Instantiate the Unit Under Test (UUT)
	led uut (
		.Clk(Clk), 
		.Switch(Switch), 
		.SevenSegment(SevenSegment), 
		.Enable(Enable), 
		.i_A(i_A), 
		.i_B(i_B)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Switch = 0;
		i_A = 0;
		i_B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #5 Clk = ~Clk;
	end
	
	initial begin
	#100
	
	forever #50 
		begin
			i_A = 1;
			#500
			i_A = 0;
		end	
	end
      
endmodule

