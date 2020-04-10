`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:54:55 04/10/2020
// Design Name:   led_velocity
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/ledUartTest.v
// Project Name:  ledTest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led_velocity
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ledUartTest;

	// Inputs
	reg Clk;
	reg [5:0] Switch;
	reg i_A;
	reg i_B;
	reg [7:0] DPSwitch;

	// Outputs
	wire [7:0] SevenSegment;
	wire [2:0] Enable;
	wire [1:0] o_controlPin;
	wire [7:0] LED;
	wire o_uart_tx;

	// Instantiate the Unit Under Test (UUT)
	led_velocity uut (
		.Clk(Clk), 
		.Switch(Switch), 
		.SevenSegment(SevenSegment), 
		.Enable(Enable), 
		.i_A(i_A), 
		.i_B(i_B), 
		.DPSwitch(DPSwitch), 
		.o_controlPin(o_controlPin), 
		.LED(LED), 
		.o_uart_tx(o_uart_tx)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Switch = 0;
		i_A = 0;
		i_B = 0;
		DPSwitch = 0;

		// Wait 100 ns for global reset to finish
		#100;
      forever #1 Clk = ~Clk;
		// Add stimulus here

	end
      
endmodule

