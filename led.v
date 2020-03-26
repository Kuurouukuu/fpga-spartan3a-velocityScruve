`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:29:09 03/10/2020 
// Design Name: 
// Module Name:    led 
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
module led(Clk, Switch, SevenSegment, Enable, i_A, i_B
    );
	 
	 input Clk;
	 input [5:0] Switch;
	 input i_A, i_B;
	 output [7:0] SevenSegment;
	 output [2:0] Enable;
	 
	 parameter [1:0] s_Segment1 = 'd1, s_Segment2 = 'd2, s_Segment3 = 'd3, s_Idle = 'd0;
	 parameter [5:0] button0 = 'b111110, button1 = 'b111101, button2 = 'b111011;
	 
	 wire [12:0] w_value;
	 wire w_Clk_5;
	 wire w_Direction;
	 wire DV;
	 wire w_Clk_10;
	 wire [15:0] bcdValue;
	
	  
	 reg Clk_23;
	 reg start;
	 reg Clk_10;
	 reg [12:0] value = 'd500;
	 reg [15:0] r_displayValue = 'd0;
	 reg [2:0] r_Enable = 'd0;
	 reg [7:0] r_SevenSegment ='d0;
	 reg [1:0] s_Main = s_Idle;
	 reg Clk_5;
	 reg [23:0] counter; 
	
	  
	 Binary_to_BCD #(.INPUT_WIDTH('d13), .DECIMAL_DIGITS('d4))
			converter	(.i_Clock(Clk),
					.i_Binary(w_value),
					.i_Start('b1),
					.o_BCD(bcdValue),
					.o_DV(DV));
	
	 // Update display value when the bcd converter output is ready 
	 always@(posedge DV)
	 begin
		r_displayValue <= bcdValue;
	 end
	 
	 assign w_Clk_10 = Clk_10;
	 
	 always@(posedge Clk)
	 begin
		counter <= counter+1;			
		Clk_5 <= counter[15];
		Clk_23 <= counter[23];
		Clk_10 <= counter[10];
	 end
	 
	 assign w_Clk_5 = Clk_5;
	 
	 wire debounced_A, debounced_B;
	 
	 //quadDecode decoder(.i_A(i_A), .i_B(i_B), .Clk(Clk_10), .o_Direction(w_Direction), .o_Position(w_value));
	 quad decoder(.quadA(debounced_A), .quadB(debounced_B), .clk(Clk), .count(w_value), .rst(~Switch[0]));
	 DeBounce debouncerA(.clk(Clk), .button_in(i_A), .DB_out(debounced_A), .n_reset('b1));
	 DeBounce debouncerB(.clk(Clk), .button_in(i_B), .DB_out(debounced_B), .n_reset('b1));
	 
	 always@(posedge w_Clk_5)
	 begin
		case (s_Main)
			s_Segment1: begin
				r_Enable <= 'b011;
				case (r_displayValue[15:12])
					4'd0: r_SevenSegment <= 'b00000010;
					4'd1: r_SevenSegment <= 'b10011110;
					4'd2: r_SevenSegment <= 'b00100100;
					4'd3: r_SevenSegment <= 'b00001100;
					4'd4: r_SevenSegment <= 'b10011000;
					4'd5: r_SevenSegment <= 'b01001000;
					4'd6: r_SevenSegment <= 'b01000000;
					4'd7: r_SevenSegment <= 'b00011110;
					4'd8: r_SevenSegment <= 'b00000000;
					4'd9: r_SevenSegment <= 'b00011000;	
				default: r_SevenSegment <= 'b11111111;
				endcase
				s_Main <= s_Segment2;				
			end
			
			s_Segment2: begin
				r_Enable <= 'b101;
				case (r_displayValue[11:8])
					4'd0: r_SevenSegment <= 'b00000010;
					4'd1: r_SevenSegment <= 'b10011110;
					4'd2: r_SevenSegment <= 'b00100100;
					4'd3: r_SevenSegment <= 'b00001100;
					4'd4: r_SevenSegment <= 'b10011000;
					4'd5: r_SevenSegment <= 'b01001000;
					4'd6: r_SevenSegment <= 'b01000000;
					4'd7: r_SevenSegment <= 'b00011110;
					4'd8: r_SevenSegment <= 'b00000000;
					4'd9: r_SevenSegment <= 'b00011000;	
					default: r_SevenSegment <= 'b11111111;
				endcase
				s_Main <= s_Segment3;
			end
			
			s_Segment3: begin
				r_Enable <= 'b110;
				case (r_displayValue[7:4])
					4'd0: r_SevenSegment <= 'b00000010;
					4'd1: r_SevenSegment <= 'b10011110;
					4'd2: r_SevenSegment <= 'b00100100;
					4'd3: r_SevenSegment <= 'b00001100;
					4'd4: r_SevenSegment <= 'b10011000;
					4'd5: r_SevenSegment <= 'b01001000;
					4'd6: r_SevenSegment <= 'b01000000;
					4'd7: r_SevenSegment <= 'b00011110;
					4'd8: r_SevenSegment <= 'b00000000;
					4'd9: r_SevenSegment <= 'b00011000;	
					default: r_SevenSegment <= 'b11111111;
				endcase
				s_Main <= s_Segment1;
			end
			
			default: begin
				r_Enable <= r_Enable;
				r_SevenSegment <= r_SevenSegment;
				s_Main <= s_Segment1;
			end
			
			endcase
		end

	assign Enable = r_Enable;
	assign SevenSegment = r_SevenSegment;

endmodule
