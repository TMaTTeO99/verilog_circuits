module test();

	reg we, clk;
	reg [3:0]address;
	reg [3:0]in;
	wire [3:0]z;
	
	mem #(4) memoria(z, in, address, we, clk);
	
	always
	begin
		#1 clk = ~clk;
	end
	
	
	initial
		begin
		$dumpfile("prova.vcd");
		$dumpvars;
		
		clk = 0;
		we = 1;
		
		#1
		in = 7;
		address = 10;
		
		#1
		we = 0;
		in = 4;
		address = 9;
		
		#1
		we = 0;
		in = 3;
		address = 9;
		
		#1
		we = 0;
		in = 3;
		address = 10;
		$finish;
		end
		
endmodule
