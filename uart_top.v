`timescale 1ns / 1ps

//--------------------------------------------------------------------//
// ElbertV2 UART RTL Sample Code
// Numato Lab
// http://www.numato.com
// http://www.numato.cc
// License : CC BY-SA (http:-creativecommons.org/licenses/by-sa/2.0/)
//--------------------------------------------------------------------//

module uart_top(      
   output     tx,
	output	  o_full,
	output [3:0] probe,
	input [7:0] data_in,
	input [8:0] address,
	input i_wr_uart,
	input      clk,        
	input      reset
);
                 
    // Signals for UART submodule 
    reg        rd_uart   = 1'b0;
    reg        wr_uart   ;
    reg        rx        = 1'b0;
    //reg  [31:0] data_in   = 0   ;   
    wire [31:0] data_out        ;    
    wire       full            ;
    wire       empty           ;
	 //wire			full;
   assign o_full = full;
    
    // Parameters for memory
    parameter   WIDTH     =   8 ,
                DEPTH     =   2048,
                ADDR      =   11 ;
                 
    // Ram & address
    //reg  [ADDR-1:0] address   = 0   ;
    //wire [WIDTH-1:0] arr_mem [DEPTH-1:0];
    
    // Assuming clk frequency 12MHz
    parameter CLK_FREQ = 12000000;
    
    // Assigning data to ram memory
	 // Will be read from memory
//    assign  arr_mem[0]  =   "H";
//    assign  arr_mem[1]  =   "e";
//    assign  arr_mem[2]  =   "l";        
//    assign  arr_mem[3]  =   "l";         
//    assign  arr_mem[4]  =   "o";        
//    assign  arr_mem[5]  =   " ";         
//    assign  arr_mem[6]  =   "W";        
//    assign  arr_mem[7]  =   "o";         
//    assign  arr_mem[8]  =   "r";         
//    assign  arr_mem[9]  =   "l";        
//    assign  arr_mem[10] =   "d";        
//    assign  arr_mem[11] =   "!";         
//    assign  arr_mem[12] =   "\n";      //  new line character
//    assign  arr_mem[13] =   8'hD;      //  carriage return character 
    
    // Timer logic, no need for delay
/*    always@(posedge clk)
    begin
        if(reset)
            timer_cnt   <=  0;
        else if(timer_cnt == CLK_FREQ-1) // 11999999 = 1s, we are setting some delay to display string next time. 
        begin
            timer_timeout    <=  1'b1;
            timer_cnt        <=  0;
        end
        else if(address == 13)
            timer_timeout    <=  0; 
        else
            timer_cnt   <=  timer_cnt + 1'b1;
    end*/
    
    // writing data to uart and incrementing address for memory 
    always@(posedge clk)
    begin
			if (~full) wr_uart     <=  i_wr_uart;
			else wr_uart <= 0;
    end                                             
    
    // Instantiation of uart module
    // DIVISOR = 13 for 57600 baudrate, 12MHz sys clock, 8 bit data
    uart #(     .DIVISOR		(7'd13),   
                .DVSR_BIT		(4'd7) ,
                .Data_Bits		(4'd8) , // 8 bits per transmission
                .FIFO_Add_Bit	(4'd5) // 2^5 = 32 => 256-bit buffer. or 64-bit data
    ) uart (    .clk				(clk)			,
                .rd_uart		(rd_uart)	,
                .reset			(reset)		,
                .rx				(rx)			,
                .w_data			(data_in)	,
                .wr_uart		(i_wr_uart)	,
                .r_data			(data_out)	,
                .rx_empty		(empty)		,
                .tx				(tx)			,
                .tx_full		(full)		,
					 
					 .probe			(probe)
           );             
endmodule
