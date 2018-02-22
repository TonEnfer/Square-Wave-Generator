module counter_neg
(
	input clk,
	input reset,
	output reg[10:0] result
);

reg[10:0] tmpRes = 11'h0;
	
	always @(posedge reset or negedge clk)
	begin
		if(reset == 1)
			tmpRes = 0;
		else
			tmpRes = tmpRes + 11'd1;
		result = tmpRes;
	end
	
endmodule
