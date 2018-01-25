module counter
(
	input clk,
	input reset,
	output reg[10:0] result
);
	initial
	begin
		result = 0;
	end
	
	always @(posedge clk or posedge reset)
	begin
		if(reset)
			result = 0;
		else
			result = result + 10'd1;
	end
endmodule
