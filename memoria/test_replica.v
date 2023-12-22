module test();

	parameter N = 4;
	reg clk, we; 
	reg [N-1:0]in;
	reg [N-1:0]address;
	wire [N-1:0]out;
	
	mem #(N) memoria(out, in, address, we, clk);
	
	always
	begin
		#1 clk = ~clk;
	end
	
	initial
	begin
		$dumpfile("f_replica.vcd");
		$dumpvars;
	
		clk = 0;
		we = 0;
		
		#1
		we = 1;
		address = 3;
		in = 8;
		
		#2 
		we = 0;
		address = 3;
		in = 15;
		
		#1
		we = 1;
		address = 3;
		in = 8;
		
		$finish;
		
	
	end

endmodule
