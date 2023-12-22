module test();

	reg clk, x;
	wire z;
	
	fsm istanza_fnl(z, x, clk);
	
	
	
	always
	begin
	#2 clk = ~clk;
	end
	
	initial
	begin
	$dumpfile("gtw.vcd");
	$dumpvars;
	
	clk = 0;
	x = 0;
	
	#3 x=1;
	#3 x=0;
	#3 x=1;
	#3 x=1;
	#3 x=0;
	#3 x=1;
	#3 x=0;
	#3 x=0;
	
	
	$finish;
	end
endmodule
