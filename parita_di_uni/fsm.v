module fsm(output z, input x, input clk);

	wire ns, nr;
	
	reg1 instanza_r(nr, ns, 1'b1, clk);
	ZZ instanza_z(z, nr ,x);
	s istanza_s(ns, nr, x);
	
endmodule

		
	
