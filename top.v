module top(
	input qa,qb,z,
	output reg out
);
	initial
	begin
		out = 0;
	end
	wire clk;
	assign clk	= qa|qb;
	wire[10:0] count;
	counter c(clk,z,count);
	always @(count[0])
	begin
		if(count == 11'd500)
			out = 1;
		else if (count == 11'd1000)
			out = 0;
		else if (count == 11'd1500)
			out = 1;
		else
			out = 0;		
	end
endmodule