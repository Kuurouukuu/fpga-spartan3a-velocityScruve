`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:55:16 04/08/2020
// Design Name:   uartTest
// Module Name:   /home/kuro/Documents/FPGA/ElbertV2/ledTest/uartTb.v
// Project Name:  ledTest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uartTest
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uartTb;

	// Inputs
	reg Clk;
	reg [31:0] i_data;
	reg rst;

	// Outputs
	wire o_uart_tx;

	// Instantiate the Unit Under Test (UUT)
	uartTest uut (
		.Clk(Clk), 
		.i_data(i_data), 
		.o_uart_tx(o_uart_tx),
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		i_data = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
      forever #1 Clk = ~Clk;
		// Add stimulus here
		
	end
	
	reg [20:0] counter = 'd0;
	always@(Clk)
	begin
		counter <= counter + 1;
	end
	
	always@(counter[10])
	begin
		i_data <= i_data + 'd5;
	end      
endmodule

