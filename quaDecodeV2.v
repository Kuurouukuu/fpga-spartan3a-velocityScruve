`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:17:15 03/25/2020 
// Design Name: 
// Module Name:    quaDecodeV2 
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
module quad(clk, quadA, quadB, count, rst, o_velocity);
input clk, quadA, quadB, rst;
output [15:0] count;
output [15:0] o_velocity;

reg quadA_delayed, quadB_delayed;
reg [16:0] r_Counter;
wire w_Clk_7;

always @(posedge clk) quadA_delayed <= quadA;
always @(posedge clk) quadB_delayed <= quadB;

wire count_enable = quadA ^ quadA_delayed ^ quadB ^ quadB_delayed;
wire count_direction = quadA ^ quadB_delayed;

reg [15:0] count_prev;
reg [15:0] r_velocity;

reg [15:0] count;

reg [15:0] r_diff = 0;

wire [15:0] w_diff;


always @(posedge clk, posedge rst)
begin
  if (rst)
  begin
   r_Counter <= 0;
	count<=0;
	r_diff <= 0;
	//count_prev <= 0;
  end
  else 
	  begin 
	   //r_diff <= w_diff;
		r_Counter <= r_Counter + 1;
		if(count_enable)
		  begin
			if(count_direction) count<=count+1; else count<=count-1;
			 if (count == 1497)
				count <= 0;
			 else if (count == 'b1111_1111_1111_1111)
				count <= 1496;
		  end
	  end
end

//DEBUG: help
//assign o_velocity = 'd115;

assign w_Clk_7 = r_Counter[16]; // Divide by 2^17

reg [15:0] r_count, r_countPrev;

always @(posedge w_Clk_7, posedge rst)
begin	
   if (rst)
	begin
		r_countPrev <= 0;
		r_count <= 0;
	end
	else begin
		r_countPrev <= r_count;
		r_count <= count;
	end
end

assign w_diff = (r_count >= r_countPrev) ? (r_count - r_countPrev) : (r_countPrev - r_count);

//(count_direction) ? ((r_count >= r_countPrev)	?	(r_count - r_countPrev) : (r_count + 11'd1496 - r_countPrev))
//											 : ((r_count <= r_countPrev)	?	(r_countPrev - r_count) : (r_countPrev + 11'd1496 - r_count));


wire [15:0] w_rShift1, w_lShift1, w_lShift3;
assign w_rShift1 = w_diff >> 1;
assign w_lShift1 = w_diff << 1;
assign w_lShift3 = w_diff >> 3;
assign o_velocity = w_diff + w_rShift1 + w_lShift1 + w_lShift3;// 2+1+1/2+1/8
//assign o_velocity = w_diff;

endmodule
