module counter
(
	input clk,
	input up,
	input down,
	input reset,
	output reg[10:0] result
);

reg[10:0] tmpRes = 11'h0;
	
	always @(posedge reset or posedge clk)
	begin
		if(reset == 1)
			tmpRes = 0;
		else begin
			if(up == 1 && down != 1)
				tmpRes = tmpRes + 11'd1;
			else if (up != 1 && down == 1)
				if(tmpRes == 0)
					tmpRes = 2000;
				else
					tmpRes = tmpRes - 11'd1;
		end
		result = tmpRes;
	end
	
endmodule