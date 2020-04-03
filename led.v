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
module led(Clk, Switch, SevenSegment, Enable, i_A, i_B, DPSwitch, o_controlPin, LED
    );
	 
	input Clk;
	input [5:0] Switch; // Switch 6 is reset
	input i_A, i_B;
	input [7:0] DPSwitch;
	output [1:0] o_controlPin;
	output [7:0] SevenSegment;
	output [2:0] Enable;
	output [7:0] LED;

	parameter [1:0] s_Segment1 = 'd1, s_Segment2 = 'd2, s_Segment3 = 'd3, s_Idle = 'd0;
	parameter [5:0] button1 = 'b111110, button2 = 'b111101, button3 = 'b111011, button4 = 'b110111, button5 = 'b101111, button6 = 'b011111;
	
	wire [12:0] w_value;
	wire w_Clk_5;
	wire w_Direction;
	wire DV;
	wire w_Clk_10;
	wire [15:0] bcdValue;
	wire [15:0] w_velocity;
	wire [12:0] w_position;
	wire debounced_kp, debounced_ki, debounced_kd;
	wire debounced_A, debounced_B;
	wire [15:0] w_un;
	wire w_pwm_out;	
	wire [1:0] w_PWM_CW;
	wire [1:0] w_PWM_CCW;
	wire [15:0] w_error;
	  
	reg [15:0] w_setpoint;
	reg [1:0] r_controllerPin;
	reg [16:0] r_error_unsigned;
	reg [15:0] r_kp = 5;
	reg [15:0] r_kd = 0;
	reg [15:0] r_ki = 0;
	reg [7:0] r_LED;
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
	
	
	quad decoder(.quadA(debounced_A), .quadB(debounced_B), .clk(Clk), .count(w_position), .rst(~Switch[0]), .o_velocity(w_velocity));
	DeBounce debouncerA(.clk(Clk), .button_in(i_A), .DB_out(debounced_A), .n_reset('b1));
	DeBounce debouncerB(.clk(Clk), .button_in(i_B), .DB_out(debounced_B), .n_reset('b1));
	DeBounce debouncer1(.clk(Clk), .button_in(Switch[2]), .DB_out(debounced_increaseKp), .n_reset('b1));
	DeBounce debouncer2(.clk(Clk), .button_in(Switch[3]), .DB_out(debounced_decreaseKp), .n_reset('b1));
	DeBounce debouncer3(.clk(Clk), .button_in(Switch[4]), .DB_out(debounced_increaseKi), .n_reset('b1));
	DeBounce debouncer4(.clk(Clk), .button_in(Switch[5]), .DB_out(debounced_decreaseKi), .n_reset('b1));
	PID pidController(.i_clk(Clk), .i_rst(~Switch[1]), .o_un(w_un), .o_valid(w_pidValid), .sp(w_setpoint), .pv(w_position), .kp(r_kp), .kd(r_kd), .ki(r_ki));
	pwm pwmGenerator(.Clk(Clk), .pwm_in(w_un), .pwm_out(w_pwm_out));
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
	 
	 // Frequency division using counter
	 always@(posedge Clk)
	 begin
		counter <= counter+1;			
		Clk_5 <= counter[15];
		Clk_23 <= counter[23];
		Clk_10 <= counter[10];
	 end
	 
	 
	 
	 //quadDecode decoder(.i_A(i_A), .i_B(i_B), .Clk(Clk_10), .o_Direction(w_Direction), .o_Position(w_value));
	 
	 // Display LED by fast sweeping over time 
	 always@(posedge w_Clk_5)
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


	// Set setpoint based on DPSwitch	
	always@*
	begin
		case (DPSwitch[4:1])
			4'b0001: w_setpoint = 'd374;
			4'b0010: w_setpoint = 'd748;
			4'b0100: w_setpoint = 'd1122;
			4'b1000: w_setpoint = 'd195;
			default: w_setpoint = 'd999;	
		endcase
	end

	//abs w_error
	always @(posedge Clk)	
		if (w_error[15]==1'b1) 
			r_error_unsigned<=((~w_error)+(1'b1)); 
		else
			r_error_unsigned<=w_error;
	
	
	// Button for increase and decrease kp, ki

	always@*
		begin
		if (debounced_increaseKp)
			r_kp <= r_kp + 1;
		if (debounced_decreaseKp)
			r_kp <= r_kp - 1;
		if (debounced_increaseKi)
			r_ki <= r_ki + 1;
		if (debounced_decreaseKi)
			r_ki <= r_ki - 1;
		end
	
	
	// Check error and fire PWM based on error.
	always @(posedge Clk)
	 begin
		if ((w_position<14'd50) &&  (r_error_unsigned<14'd50))
			begin
				r_controllerPin<=2'd0;
				r_LED <= 'b00000001;
			end
		else if ((w_error>14'd10) && (w_error<14'd1496))// Error is between 0.4 and 360 degrees
				begin 
					r_controllerPin <= w_PWM_CW;
					r_LED <= 'b00000010;
				end
		else if ((w_error>16'b1111__1110_0010_1000)&&(w_error<16'b1111_1111_1111_1110))// Error is between -0.4 and -360
				begin 
					r_controllerPin <= w_PWM_CCW;
					r_LED <= 'b00000100;
				end
		else
				begin
					r_controllerPin <= 2'd0;
					r_LED <= 'b00001000;
				end
	 end

	// Assignment section
	
	assign w_error = w_setpoint - w_position; // control Velocity first TODO: generalize, control position	
	assign w_PWM_CW[1:0]={w_pwm_out,1'b0}; // Concatenation 2 output for 2 port
	assign w_value = DPSwitch[0] ? w_position : w_setpoint;
	assign w_PWM_CCW[1:0]={1'b0,w_pwm_out};
	assign w_Clk_5 = Clk_5;
	assign SevenSegment = r_SevenSegment;
	assign w_Clk_10 = Clk_10;
	assign LED = {r_controllerPin, r_LED[5:0]};
	assign o_controlPin = r_controllerPin;
	assign Enable = r_Enable;

endmodule
