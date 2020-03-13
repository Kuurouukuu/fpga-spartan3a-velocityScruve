`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:27 03/12/2020 
// Design Name: 
// Module Name:    testInput 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module testInput(i_A, i_B, o_LED
    );

	input i_A, i_B;
	output reg [1:0] o_LED = 'd0;
		
	always@(i_A, i_B)
	begin
		o_LED[1] <= i_A;
		o_LED[0] <= i_B;
	end
	

endmodule
