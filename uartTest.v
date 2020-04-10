module uartTest(Clk, i_data, o_uart_tx, rst);

	input Clk;
	input [31:0] i_data;
	input rst;
	output o_uart_tx;
	
	reg [2:0] counter = 'd0;
	reg [31:0] r_uart_data_in;
	reg [31:0] r_uart_data_prev;
	wire w_uart_write;
	
	wire Clk_10 = counter[1];
	
	
	always@(posedge Clk_10)
	begin
		r_uart_data_in <= i_data;
	end
	
	always@(posedge Clk)
	begin
		counter <= counter + 1;
		r_uart_data_prev <= r_uart_data_in;			
	end

	assign w_uart_write = ~(r_uart_data_prev == r_uart_data_in); // If there is change, high for one cycle

	uart_top myUart( 	.tx(o_uart_tx),
				.data_in(r_uart_data_in),
				//.address(r_uart_address),
				.i_wr_uart(w_uart_write),
				.clk(Clk),
				.reset(rst)
			);
			
endmodule