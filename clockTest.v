`timescale 1ms / 1ms
module clockTest();
wire qa,qb,z;
reg clk;
clocker cl(clk,qa,qb,z);


always begin
	#1 clk = ~clk;
end

initial
begin
	$display("Start test");
	//$display("Testing");
	clk = 0;
	#20000
	$finish;
end

initial
begin
  $dumpfile("out.vcd");
  $dumpvars(0,clockTest);
end

//initial 
//$monitor($stime,, qa,qb,z,out); 


endmodule