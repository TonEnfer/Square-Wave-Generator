module counter_pos
(
	input clk,
	input reset,
	output reg[10:0] result
);
reg[10:0] tmpRes[1:0] = {11'h0,11'h0};
	always @(clk or reset) begin
		if (reset == 1) begin
			tmpRes[0] = 0;
			tmpRes[1] = 0;
		end else begin
			if(clk == 1)
				tmpRes[0] = tmpRes[0]+1;
			else if(clk == 0)
				tmpRes[1] = tmpRes[1]+1;
		end
		result = tmpRes[0]+tmpRes[1];
	end
endmodule
