module jkfflop(
  input  J,
  input  K,
  input  clk,
  output Q );
  
 always @(posedge clk) begin
    case({J,K})
      2'b0_0 : Q <= Q   ;
      2'b0_1 : Q <= 1'b0;
      2'b1_0 : Q <= 1'b1;
      2'b1_1 : Q <= ~Q  ;
    endcase
  end
 endmodule
 