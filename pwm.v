/*This is my PWM generator based on EDGAR RODRIGO MANCIPE TOLOZA*/
module pwm(Clk, pwm_in, pwm_out);

input Clk; 
input [15:0] pwm_in; //Input, reference value
output pwm_out;// Output pwm signal

reg pwm_out; 
reg [15:0] rampa=15'b0000_0000_0000_0000; // Initialize ramp value
	//esta rampa tiene una frecuencia de 763Hz para el reloj de 50Mhz	
always @(posedge Clk) 
	begin
		rampa <= rampa + 1'b1; // Increase ramp value each clock
		pwm_out <= (pwm_in > rampa);// Compare ramp value with DC value, output accordingly
	end

endmodule
