module registro(output [N-1:0]ns, input [N-1:0]cs, input en, input clk);

parameter N = 8;
reg [N-1: 0]s;

initial 
 s = 2'b00;
 
 always @(posedge clk)
 	begin
 	if(en == 1)
 	s = cs;
 	end
 	
 assign ns = s;
 
 endmodule
