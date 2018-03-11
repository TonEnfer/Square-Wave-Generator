`timescale 1ms / 1ms
module test();
wire qa,qb,z,out;
reg clk;

clocker cl(clk,qa,qb,z);
top t(qa,qb,z,out);


always begin
	#1 clk = ~clk;
end

initial
begin
	$display("Start test");
	//$display("Testing");
	clk = 0;
	#50000
	$finish;
end

initial
begin
  $dumpfile("out.vcd");
  $dumpvars(0,test);
end
 

endmodule