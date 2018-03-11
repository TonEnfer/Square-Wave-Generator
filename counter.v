module counter
(
	input clk,
	input up,
	input reset,
	output reg[10:0] result
);

initial result = 0;
	
	always @(posedge reset or posedge clk)
	begin
		if(reset == 1)
			result = 0;
		else begin
			if(up == 1)
				result = result + 11'd1;
			else
				if(result == 0)
					result = 2000;
				else
					result = result - 11'd1;
		end
	end
	
endmodule