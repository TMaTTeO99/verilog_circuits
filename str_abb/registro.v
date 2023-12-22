module registro(output [N-1:0]ns2, input [N-1:0]ns1, input en, input clk);

parameter N = 8;
reg [N-1:0]s;

initial 
s = 2'b00;

always @(posedge clk)
	begin
	if(en == 1)
	s = ns1;
	end

assign ns2 = s;
endmodule
