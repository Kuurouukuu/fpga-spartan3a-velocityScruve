`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:09:28 04/21/2020
// Design Name:   led_velocity
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/ledVelocityTestBench.v
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

module ledVelocityTestBench;

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
		Switch = 'b000000;
		i_A = 0;
		i_B = 0;
		DPSwitch = 0;

		// Wait 100 ns for global reset to finish
		#100;

		forever #83 Clk = ~Clk;
		// Add stimulus here
	end
   
	initial begin
		#50000
			Switch[0] = 'b1;
	end
	
	reg [10:0] counter = 0;
	
	always@(posedge Clk)
		counter <= counter + 'd1;
		
	wire Clk_10;
	assign Clk_10 = counter[10];
	reg[2:0] state = 'd1;
	
//	always@(Clk_10)
//		case(state)
//			'd1: begin
//				{i_A, i_B} <= 2'b10;
//				state <= 'd2;
//			end
//			'd2: begin
//				{i_A, i_B} <= 2'b11;
//				state <= 'd3;
//			end
//			'd3: begin
//				{i_A, i_B} <= 2'b01;
//				state <= 'd4;
//			end
//			'd4: begin
//				{i_A, i_B} <= 2'b00;
//				state <= 'd1;
//			end
//		endcase
endmodule

