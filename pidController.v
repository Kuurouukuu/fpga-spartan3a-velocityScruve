/*This is my PID controller, based on an OpenCores project */

module PID(i_clk, i_rst, o_un, o_valid, sp, pv, kp, ki, kd);

input i_clk;
input i_rst;
input [15:0] kp, ki, kd;
input [15:0] sp, pv;

output [15:0] o_un;
output o_valid;



// Hardwired value for kp, ki, kd; Fix later;

//TODO: manual edit value of kp, ki, kd

//TODO: add overflow checking

reg [15:0] kpd;
reg [15:0] err[0:1];

wire [15:0] mr,md; //select signal for multiplier

reg [31:0] p; 
reg [31:0] a, sigma, un;

reg cout;

wire cin;
wire [31:0] sum;
wire [31:0] product;

reg start; //start signal for multiplier

reg [1:0] mr_index;
reg [1:0] md_index;

assign mr=	mr_index==1?kpd:
		mr_index==2?kd:ki;
assign md=	md_index==2?err[1]:
		md_index==1?err[0]:sum[15:0];


//TODO: add reset

reg [9:0] state_1;

reg w_valid;

always@(posedge i_clk or posedge i_rst)
	if (i_rst) begin
		state_1 <= 12'b000000000001;
		w_valid <= 0;
		kpd <= 0;
		err[0] <= 0;
		err[1] <= 0;
		p<=0;
		a <= 0;
		sigma <= 0;
		un <= 0;
		start <= 0;
		mr_index <= 0;
		md_index <= 0;
		cout <= 0;
	end
	else begin
		case(state_1)
		10'b0000000001: begin
			//if(update_kpd) 
				w_valid <= 'b0;
				state_1 <= 10'b0000000010;
			//else if (update_esu) 
				//state_1 <= 10'b0000001000;
		end

		10'b0000000010: begin
			p <= {{16{kp[15]}},kp}; //sign extenstion
			a <= {{16{kd[15]}},kd};
			state_1 <= 10'b0000000100;
		end

		10'b0000000100:begin
			kpd <= sum[15:0];
			//state_1 <= 10'b0000000001; TODO: add function
			state_1 <= 10'b0000001000;
		end

		10'b0000001000: begin
			p <= {{16{sp[15]}},sp};
			a <= {{16{~pv[15]}},~pv};
			cout <= 1;
			start <= 1; //calculate error0*ki
			state_1 <= 10'b0000010000;
		end

		10'b0000010000: begin
			err[0] <= sum[15:0];
			p <= {{16{~err[0][15]}}, ~err[0]};
			a <= {31'b0, 1'b1};
			cout <= 0;
			mr_index <= 1;
			md_index <= 1;
			state_1 <= 10'b0000100000;
		end

		10'b0000100000: begin
			err[1] <= sum[15:0];
			mr_index <= 2;
			md_index <= 2;
			state_1 <= 10'b0001000000;
		end

		10'b0001000000: begin
			mr_index <= 0;
			md_index <= 0;
			start <= 0;
			p <= product;
			a <= sigma;
			state_1 <= 10'b0010000000;
		end

		10'b0010000000: begin
			a <= sum;
			sigma <= sum;
			p <= product;
			state_1 <= 10'b0100000000;
		end

		10'b0100000000: begin
			a <= sum;
			p <= product;
			state_1 <= 10'b1000000000;
		end

		10'b1000000000: begin
			un <= sum;
			state_1 <= 10'b0000000001;
			w_valid <= 'b1;
		end
		
		default:
			state_1 <= 10'b0000000001;
			
		endcase
	end

wire ready;

assign o_un = un;

multiplier_16x16bit_pipelined	multiplier_16x16bit_pipelined(
i_clk,
~i_rst,
start,
md,
mr,
product,
ready
);

adder_32bit	adder_32bit_0(
a,
p,
cout,
sum,
cin
);


endmodule

















