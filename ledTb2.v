`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:04:48 03/10/2020
// Design Name:   led
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/ledTb2.v
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

module ledTb2;

	// Inputs
	reg Clk;
	reg [5:0] Switch;
	reg Rst;

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
		Rst = 0;
		// Wait 100 ns for global reset to finish
		#90;
		Rst = 1;
		#10
		Rst = 0;
        
		// Add stimulus here
		forever #5 Clk = ~Clk;
	end
	
	initial begin
	#100
	
	forever #500 
		begin
			Switch = 'b111110;
			#500
			Switch = 'b111101;
		end	
	end
      
endmodule

