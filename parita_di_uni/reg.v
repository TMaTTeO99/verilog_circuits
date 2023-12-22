module reg1(output nr, input ns, input we, input clk);

	reg st;
	
	initial 
	st = 0;
	
	always @(posedge clk)
	
		begin
		if(we == 1)
		st = ns;
		end
	
	assign nr = st;
	
endmodule	


