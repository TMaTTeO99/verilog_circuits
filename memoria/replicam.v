module mem(output [N-1:0]out, input [N-1:0]in, input [N-1:0]address,input we, input clk);

	parameter N = 32;
	
	reg [N-1:0]m[0: 2**N -1];
	
	integer i;
	initial 
		begin
			for(i = 0; i<2**N; i++)
			m[i] = 0;
		end
		
	always @(posedge clk)
	begin	
		if(we == 1)
		m[address] = in;
	end
	
	assign out = m[address];
	
endmodule
