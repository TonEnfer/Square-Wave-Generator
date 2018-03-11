module top(
	input qa,qb,qz,clk,
	output reg out
);

	wire[10:0] count;
	wire up,down;
	decoder d(clk,qa,qb,up);
	counter c(clk,up,qz,count);
	always @(posedge clk or posedge qz)
	begin
		if(qz)
			out = 0;
		else begin
				if((count >= 500 && count < 1000)||(count >=1500))
					out = 1;
				else
					out = 0;
		end
	end
endmodule
