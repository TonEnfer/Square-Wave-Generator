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
		if(qz)
			out = 0;
		else begin
				if((count >= 125 && count < 250)||(count >=375))
					out = 1;
				else
					out = 0;
		end
		
	end
endmodule
