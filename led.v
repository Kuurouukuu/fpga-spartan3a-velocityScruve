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
module led(Clk, Switch, SevenSegment, Enable
    );
	 
	 input Clk;
	 input [5:0] Switch;
	 output [7:0] SevenSegment;
	 output [2:0] Enable;
	 
	 
	 reg [12:0] value = 'd888;
	 reg [15:0] r_displayValue = 'd0;
	 reg [2:0] r_Enable = 'd0;
	 reg [7:0] r_SevenSegment ='d0;
	 
	 parameter [5:0] button0 = 'b111110, button1 = 'b111101, button2 = 'b111011;
	 /*
case bcd is
	     when 0      => SevenSegment_o := B"00000010";
		  when 1      => SevenSegment_o := B"10011110";
		  when 2      => SevenSegment_o := B"00100100";
		  when 3      => SevenSegment_o := B"00001100";
		  when 4      => SevenSegment_o := B"10011000";
		  when 5      => SevenSegment_o := B"01001000";
		  when 6      => SevenSegment_o := B"01000000";
		  when 7      => SevenSegment_o := B"00011110";
		  when 8      => SevenSegment_o := B"00000000";
		  when 9      => SevenSegment_o := B"00011000";
		  when others => SevenSegment_o := B"11111111";
		  
		  'd1: SeventSegment <= 'b10011110;
		  'd2: SeventSegment <= 'b00100100;
		  'd3: SeventSegment <= 'b00001100;
		  'd4: SeventSegment <= 'b10011000;
		  'd5: SeventSegment <= 'b01001000;
		  'd6: SeventSegment <= 'b01000000;
		  'd7: SeventSegment <= 'b00011110;
		  'd8: SeventSegment <= 'b00000000;
		  'd9: SeventSegment <= 'b00011000;
     end case;	 */
	  
	  reg start;
	  wire [15:0] bcdValue;
	  wire DV;
	  
	  // DEBUG

	  //
	  
	 Binary_to_BCD		#(.INPUT_WIDTH('d13),
							.DECIMAL_DIGITS('d4))
		converter		(.i_Clock(Clk),
							.i_Binary(value),
							.i_Start('b1),
							.o_BCD(bcdValue),
							.o_DV(DV));
	
	 //reg [7:0] debounceCounter = 'd0;
//	 always@(Switch)
//	 begin	   
//		case (Switch)			
//			button0:
//			begin
//				start <= 'b1;
//				value <= value+1;
//			end			
//			button1:
//			begin
//				start <= 'b1;
//				value <= value+2;
//			end
//			button2:
//			begin
//				start <= 'b1;
//				value <= value+3;
//			end			
//			default: 
//			begin 
//				start <= 'b0;
//			   value <= value;
//			end
//		endcase
//	 end
	 
	 always@(posedge DV)
	 begin
		r_displayValue <= bcdValue;
	 end
	 
	 parameter [1:0] s_Segment1 = 'd1, s_Segment2 = 'd2, s_Segment3 = 'd3, s_Idle = 'd0;
	 reg [1:0] s_Main = s_Idle;
	 
	 reg Clk_5;
	 reg [23:0] counter;
	 wire o_Clk_5;
	 reg Clk_23;
	 
	 always@(posedge Clk)
	 begin
		counter <= counter+1;			
		Clk_5 <= counter[15];
		Clk_23 <= counter[23];
	 end
	 
	 always@(posedge Clk_23)
	 begin			
		value <= value+1;
		start <=1;
	 end
//	 always@(posedge Clk_5)
//	 begin
//		start <= 1;
//		value <= value + 1;
//	 end
	 
	 assign o_Clk_5 = Clk_5;
	 
	 always@(posedge o_Clk_5)
	 begin
		case (s_Main)
			s_Segment1: begin
				r_Enable <= 'b011;
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
				s_Main <= s_Segment2;				
			end
			
			s_Segment2: begin
				r_Enable <= 'b101;
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
				s_Main <= s_Segment3;
			end
			
			s_Segment3: begin
				r_Enable <= 'b110;
				case (r_displayValue[3:0])
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
//		case (bcdValue)		
//			  4'd0: SevenSegment <= 'b00000010;
//			  4'd1: SevenSegment <= 'b10011110;
//			  4'd2: SevenSegment <= 'b00100100;
//			  4'd3: SevenSegment <= 'b00001100;
//			  4'd4: SevenSegment <= 'b10011000;
//			  4'd5: SevenSegment <= 'b01001000;
//			  4'd6: SevenSegment <= 'b01000000;
//			  4'd7: SevenSegment <= 'b00011110;
//			  4'd8: SevenSegment <= 'b00000000;
//			  4'd9: SevenSegment <= 'b00011000;	
//				default: SevenSegment <= 'b11111111;
//		endcase
//	 end

	assign Enable = r_Enable;
	assign SevenSegment = r_SevenSegment;

endmodule
