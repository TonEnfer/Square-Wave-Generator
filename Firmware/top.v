module top(
	input qa,qb,qz,
	output reg out
);
	wire clk; 
	assign clk	= (!qb)|(!qa);
	wire[10:0] count;
	counter c(clk,qz,count);
	always @(posedge clk or posedge qz)
	begin
		if(qz == 1)
			out = 0;
		else begin
			if((count >= 250 && count < 500)||(count >=750))
				out = 1;
			else
				out = 0;
		end
	end
endmodule
