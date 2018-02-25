module decoder
(
	input clk,a,b,
	output reg up,down
);

	reg oldA = 0, oldB = 0;
	reg[3:0] q;
	always @(posedge clk) begin
		q[0] = a;
		q[1] = b;
		q[2] = oldA;
		q[3] = oldB;
		case(q)
			4'b0001,4'b0111,4'b1000,4'b1110: begin up <= 1; down <= 0; end
			4'b0010,4'b0100,4'b1011,4'b1101: begin up <= 0; down <= 1; end
			default:begin up = 1'b0; down = 1'b0;end
		endcase
		oldA = a;
		oldB = b;
	end

endmodule