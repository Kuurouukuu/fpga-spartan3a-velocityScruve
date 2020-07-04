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
module led_velocity(Clk, Switch, SevenSegment, Enable, i_A, i_B, DPSwitch, o_controlPin, LED, o_uart_tx
    );
	 
	input Clk;
	input [5:0] Switch; // Switch 6 is reset
	input i_A, i_B;
	input [7:0] DPSwitch;

	output [1:0] o_controlPin;
	output [7:0] SevenSegment;
	output [2:0] Enable;
	output [7:0] LED;
	output o_uart_tx;

	parameter [1:0] s_Segment1 = 'd1, s_Segment2 = 'd2, s_Segment3 = 'd3, s_Idle = 'd0;
	parameter [5:0] button1 = 'b111110, button2 = 'b111101, button3 = 'b111011, button4 = 'b110111, button5 = 'b101111, button6 = 'b011111;
	
	wire [12:0] w_value;
	wire w_uartFull;
	wire w_Clk_5;
	wire w_Direction;
	wire DV;
	wire w_Clk_10;
	wire [15:0] bcdValue;
	wire [15:0] w_velocity;
	wire [15:0] w_position;
	wire debounced_kp, debounced_ki, debounced_kd, debounced_hold;
	wire debounced_A, debounced_B;
	wire [15:0] w_un;
	wire w_pwm_out;	
	wire [1:0] w_PWM_CW;
	wire [1:0] w_PWM_CCW;
	wire [15:0] w_error;
	wire w_of;
	
	wire [31:0] w_probe; // For Debugging
	
	reg [15:0] w_setpoint = 'd150;
	reg [1:0] r_controllerPin = 'd0;
	reg [16:0] r_error_unsigned = 'd0;
	reg [15:0] r_kp = 16'd80;
	reg [15:0] r_kd = 16'd0;
	reg [15:0] r_ki = 16'd2;
	reg [15:0] r_ki_pidInput = 'd0;
	reg [7:0] r_LED;
	reg Clk_23;
	reg start;
	reg Clk_8;
	reg Clk_10;
	reg [12:0] value = 'd500;
	reg [15:0] r_displayValue = 'd0;
	reg [2:0] r_Enable = 'd0;
	reg [7:0] r_SevenSegment ='d0;
	reg [1:0] s_Main = s_Idle;
	reg Clk_5;
	reg [23:0] counter = 'd0, counter2 = 'd0; 
	reg [15:0] w_processvalue = 'd0;
	reg Clk_50ms = 'd0;
	
	wire [31:0] pulse_count;
	
	quad decoder(.quadA(debounced_A), .quadB(debounced_B), .clk(Clk), .count(w_position), .rst(~debounced_reset), .o_velocity(w_velocity), .count2(pulse_count));
	
	DeBounce debouncerA(.clk(Clk), .button_in(i_A), .DB_out(debounced_A), .n_reset(1'b1));
	DeBounce debouncerB(.clk(Clk), .button_in(i_B), .DB_out(debounced_B), .n_reset(1'b1));
	DeBounce debouncer0(.clk(Clk), .button_in(Switch[0]), .DB_out(debounced_reset), .n_reset(1'b1));
	DeBounce debouncer1(.clk(Clk), .button_in(Switch[1]), .DB_out(debounced_hold), .n_reset(1'b1));
//	DeBounce debouncer2(.clk(Clk), .button_in(Switch[2]), .DB_out(debounced_increaseKp), .n_reset(1'b1));
//	DeBounce debouncer3(.clk(Clk), .button_in(Switch[3]), .DB_out(debounced_decreaseKp), .n_reset(1'b1));
//	DeBounce debouncer4(.clk(Clk), .button_in(Switch[4]), .DB_out(debounced_increaseKi), .n_reset(1'b1));
//	DeBounce debouncer5(.clk(Clk), .button_in(Switch[5]), .DB_out(debounced_decreaseKi), .n_reset(1'b1));
	
	reg [10:0] r_readAddr = 'd0;
	wire [15:0] w_pwmInputData;
	
	blk_mem_gen_v7_3 inputRAMData(  .clka(Clk),
					.wea('b0), //No write, readonly
					.addra(r_readAddr),
					//.dina,
					.douta(w_pwmInputData)
		);
		
	reg r_LEDComplete = 'b0;
	
	always@(posedge Clk_50ms) // Increase every 1s
	begin
		if (r_readAddr == 'h7FF)
		begin
			r_LEDComplete <= 'b1;
			r_readAddr <= 'h7FF;
		end
		else
			r_readAddr <= r_readAddr + 'd1;
	end

	/* Disable comment if using PID module */
	
	//PID pidController(.probe(w_probe), .i_clk(Clk), .i_rst(~debounced_reset), .i_clk_sp(Clk_5), .o_un(w_un), .o_valid(w_pidValid), .sp(w_setpoint), .pv(w_processvalue), .kp(r_kp), .kd(r_kd), .ki(r_ki_pidInput), .overflow(w_of));
	
	pwm pwmGenerator(.Clk(Clk), .pwm_in(w_pwmInputData), .pwm_out(w_pwm_out));
	
	// Display BCD value
	
	Binary_to_BCD #(.INPUT_WIDTH('d13), .DECIMAL_DIGITS('d4))
			converter	(.i_Clock(Clk),
					.i_Binary(w_value),
					.i_Start(1'b1),
					.o_BCD(bcdValue),
					.o_DV(DV));
					
	always@(posedge Clk_5) // Sampling frequency about 1465Hz
		w_processvalue <= pulse_count[23:8];
		
	 // Update display value when the bcd converter output is ready 
	 always@(posedge DV)
	 begin
		if (~debounced_hold)
			r_displayValue <= r_displayValue;
		else
			r_displayValue <= bcdValue;
	 end
	 
	 // Frequency division using counter
	 always@(posedge Clk)
	 begin
		counter <= counter+1;			
		Clk_5 <= counter[12]; // Sampling frequency
		Clk_23 <= counter[22]; // change every one second
		Clk_8 <= counter[13];
		Clk_10 <= counter[13]; //732 hezt
	 end
	 
	 always@(posedge Clk)
	 begin
	 if (counter2 == 'h493E0) //generate 20Hz clock
		begin
		counter2 <= 'd0;
		Clk_50ms <= ~Clk_50ms;
		end
		else
		counter2 <= counter2+'d1;
	 end
	 
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


	// DPSwitch Usage, uncomment if use	
	
	/*always@*
	begin
		case (DPSwitch[4:1])
			4'b0001: w_setpoint = 'd75;
			4'b0010: w_setpoint = 'd175;
			4'b0100: w_setpoint = 'd50;
			4'b1000: w_setpoint = 'd100;
			default: w_setpoint = 'd150;		
		endcase
	end*/

       // find abs error
/*	always @(posedge Clk)	
		if (w_error[15]==1'b1) 
			r_error_unsigned<=((~w_error)+(1'b1)); 
		else
			r_error_unsigned<=w_error;*/
	
	// Check error and fire PWM based on error. Position case 
	
	/*always @(posedge Clk)
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
	 end*/
	 
	 // Update K_i to prevent windup

/*	 always@(Clk)
	 begin
		r_ki_pidInput <= (w_of) ? 'd0 : r_ki;
	 end*/
	 
	 //Check error and fire PWM based on error. Velocity case 	 
	 /*always @(posedge Clk)
	 begin
		if ((w_velocity<14'd10) &&  (r_error_unsigned<14'd3))
			begin
				r_controllerPin<=2'd0;
				r_LED <= 'b00000001;
			end
		else if (w_error[15] == 'b1)// Error is negative, rotate too fast
				begin 
					r_controllerPin <= w_PWM_CW; // Keep turning anyway, because of Ki
					r_LED <= 'b00000100;
				end
		else // Error is between 5 and 320 rpm
				begin 
					r_controllerPin <= w_PWM_CW;
					r_LED <= 'b00000010;
				end*/
/*		else
				begin
					r_controllerPin <= 2'd0;
					r_LED <= 'b00001000;
				end*/
//	 end
//
	
	
	// Assignment section
	assign w_error = w_setpoint - w_velocity; // control Velocity first TODO: generalize, control position	
	assign w_PWM_CW[1:0]={w_pwm_out,1'b0}; // Concatenation 2 output for 2 port
	assign w_value = DPSwitch[0] ? w_velocity : w_setpoint;
	assign w_PWM_CCW[1:0]={1'b0,w_pwm_out};
	assign w_Clk_5 = Clk_5;
	assign SevenSegment = r_SevenSegment;
	assign w_Clk_10 = Clk_10; //Div by 2^16

	assign o_controlPin = w_PWM_CW;
	assign Enable = r_Enable;


// Implement Uart module for communication
	reg [0:7] r_uart_data_in, r_uart_data_prev;
	reg r_uart_update = 'b0, r_uart_update_prev, rDataUpdate = 'b0, rDataUpdatePrev;
	wire w_uart_write, wDataUpdate;
	wire [3:0] probe;
	
	reg [1:0] temp_counter = 'b0;
	reg [31:0] dataIn = 'd0;
	
	reg [2:0] sSample = 'd8, sSampleNext = 'd8;
	reg rUartWrite = 'b0;
	
	
	reg [31:0] dataTemp;
	
//	Purpose: Use for debug data send on UART

//	always@*
//	begin
//		case(temp_counter)
//			'b00:
//				dataIn <= 32'h48_65_6C_6F;
//			'b01:
//				dataIn <= 32'h6F_48_65_6C;
//			'b10:
//				dataIn <= 32'h6C_6F_48_65;
//			'b11:
//				dataIn <= 32'h65_6C_6F_48;
//			endcase
//	end

	reg [15:0] r_velocity, r_pwmInputData;

	always@(posedge Clk)
	begin
		// use this for buffering
		r_velocity <= w_velocity;
		r_pwmInputData <= w_pwmInputData;
	end
	
	always@(posedge Clk_10)
	begin
		
		//temp_counter <= temp_counter + 'd1;
		if (r_readAddr == 'h7FF)
			dataTemp <= 'hFFFF_FFFF;
		else
			//dataTemp <= dataIn;
			dataTemp <= {r_pwmInputData, r_velocity};
			
		rDataUpdate <= ~rDataUpdate; // To signal that there is change in Data
	end
	
// FSM for latching 8-bit each time
	
	always@(*) // use this for sampling, 4 time faster
	begin
		case (sSample)

			3'd1: begin
				r_uart_data_in = dataTemp[7:0];
				sSampleNext = 3'd2;
				r_uart_update = ~r_uart_update;
				rUartWrite = 'b1;
			end
			3'd2: begin
				r_uart_data_in = dataTemp[15:8];
				sSampleNext = 3'd3;
				r_uart_update = ~r_uart_update;
				rUartWrite = 'b1;
			end
			3'd3: begin
				r_uart_data_in = dataTemp[23:16];
				sSampleNext = 3'd4;
				r_uart_update = ~r_uart_update;
				rUartWrite = 'b1;
			end			
			3'd4: begin
				r_uart_data_in = dataTemp[31:24];
				sSampleNext = 3'd5;
				r_uart_update = ~r_uart_update;
				rUartWrite = 'b1;
			end
			
			default: begin // stay in this state if no data update
				rUartWrite = 'b0;
				if (rDataUpdate == ~rDataUpdatePrev)
				begin
					sSampleNext = 3'd1;
				end
				else
					sSampleNext = sSample;
			end				
				
			endcase
	end
	
	always@(posedge Clk)
	begin
			sSample <= sSampleNext;
	end

//End
	
	always@(posedge Clk)
	begin
		rDataUpdatePrev <= rDataUpdate;
		r_uart_update_prev <= r_uart_update;
	end
	
	assign w_uart_write = rUartWrite;
	//assign w_uart_write = ~(r_uart_update_prev == r_uart_update); // If there is change, high for one cycle
	assign wDataUpdate = ~(rDataUpdatePrev == rDataUpdate);
	
	uart_top myUart( 	.tx(o_uart_tx),
				.data_in(r_uart_data_in),
				.address(r_uart_address),
				.i_wr_uart(w_uart_write),
				.o_full(w_uartFull),
				.clk(Clk),
				.reset('b0),
				.probe(probe)
			);
			
	assign LED[7:1] = {r_controllerPin, probe};
	assign LED[0] = r_LEDComplete;
	
endmodule
