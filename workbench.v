module workbench(i_clk, i_value, o_value);

input i_clk;
input [15:0] i_value;
output [15:0] o_value;


reg [15:0] r_result;
reg [15:0] r_input = 'd88;
reg [15:0] r_prevValue;
reg [15:0] r_currValue;

reg [15:0] r_diff;

wire [15:0] w_rShift1, w_lShift1, w_rShift3;

//assign w_diff = (r_currValue > r_prevValue) ? (r_currValue - r_prevValue) : (r_prevValue - r_currValue);

always@(posedge i_clk)
begin
	r_diff <= (r_currValue > r_prevValue) ? (r_currValue - r_prevValue) : (r_prevValue - r_currValue);
	r_result <= w_lShift1 + (r_diff) + w_rShift1 + w_rShift3;
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
