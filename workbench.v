module workbench(i_clk, i_value, i_reset, o_value);

input i_clk;
input i_reset;
input [15:0] i_value;
output [15:0] o_value;


reg [15:0] r_result;
reg [15:0] r_input;
reg [15:0] r_prevValue;
reg [15:0] r_currValue;

reg [15:0] r_diff;

wire [15:0] w_rShift1, w_lShift1, w_rShift3;

//assign w_diff = (r_currValue > r_prevValue) ? (r_currValue - r_prevValue) : (r_prevValue - r_currValue);

always@(posedge i_clk, posedge i_reset)
begin
	if (i_reset) begin
		r_result <= 0;
		r_input <= 0;
		r_prevValue <= 0;
		r_currValue <= 0;
		r_diff <= 0;
	end
	else begin
		r_diff <= (r_currValue > r_prevValue) ? (r_currValue - r_prevValue) : (r_currValue + 'd1496 - r_prevValue);
		r_result <= w_lShift1 + (r_diff) + w_rShift1 + w_rShift3;
	end
end

always@(i_value)
begin
	r_prevValue <= r_currValue;
	r_currValue <= i_value;
end

assign w_lShift1 = r_diff << 1;
assign w_rShift1 = r_diff >> 1;
assign w_rShift3 = r_diff >> 3;

assign o_value = r_result;

endmodule
