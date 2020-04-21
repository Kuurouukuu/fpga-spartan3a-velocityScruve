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
	reg i_clk_sp;
	reg [15:0] sp;
	reg [15:0] pv;
	reg [15:0] kp, ki, kd;
	

	// Outputs
	wire [15:0] o_un;
	wire o_valid;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	PID uut (
		.i_clk(i_clk), 
		.i_rst(i_rst), 
		.o_un(o_un), 
		.o_valid(o_valid), 
		.sp(sp), 
		.pv(pv),
		.kp(kp),
		.kd(kd),
		.ki(ki),
		.i_clk_sp(i_clk_sp),
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_rst = 1;
		i_clk_sp = 0;
		sp = 0;
		pv = 0;

		// Wait 100 ns for global reset to finish
		#100;
      i_rst = 0;
		sp = 150;
		pv = 0;
		kp = 40;
		ki = 0;
		kd = 0;
		forever #1 i_clk = ~i_clk;
		// Add stimulus here

	end

	reg [3:0] counter = 'd0, counter_next = 'd0;
	
	always@(posedge i_clk)
	begin
		counter <= counter_next;
	end
   

	always@*
		if (counter == 9) begin
			i_clk_sp = ~i_clk_sp;
			counter_next = counter + 'd1;
		end
		else if (counter == 15)
		begin
			counter_next = 0;
				if(pv < 300)
					pv = pv + 'd15;
		end
		else
			counter_next = counter + 'd1;
	
endmodule

