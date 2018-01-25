module clocker(input clk, output reg a,b,z);
	reg[12:0] c;
	initial
	begin
		a = 0;
		b = 0;
		z = 0;
		c = 0;
	end
	always @(posedge clk)
	begin
		c = c+1;
		if(c == 8000)
		begin
			z = 1;
			c = 0;
		end
		else
			z = 0;
		case(c[1:0])
			2'b00: begin a = 0; b = 0; end
			2'b01: begin a = 0; b = 1; end
			2'b10: begin a = 1; b = 1; end
			2'b11: begin a = 1; b = 0; end
		endcase
	end
endmodule