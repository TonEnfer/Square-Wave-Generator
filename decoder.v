module decoder
(
	input clk,a,b,
	output reg up
);
	reg oldA = 0, oldB = 0;
	wire[3:0] q;
	assign q[0] = a;
	assign q[1] = b;
	assign q[2] = oldA;
	assign q[3] = oldB;
	always @(posedge clk) begin
		case(q)
			4'b0001,4'b0111,4'b1000,4'b1110: begin up <= 1;end
			4'b0010,4'b0100,4'b1011,4'b1101: begin up <= 0;end
			default:begin up = 1'b0;end
		endcase
		oldA = a;
		oldB = b;
	end

endmodule