module test();

reg x, clock;
wire [1:0]y;
   

f_r prova(y, x, clock);

	always 
	begin
		#1 clock = ~clock;
	end
initial
begin
$dumpfile("file.vcd");
$dumpvars;

clock = 0;
x = 0;

#1 x=1;
#3 x=0;
#3 x=1;
#3 x=1;
#3 x=0;
#3 x=0;
#3 x=0;
#3 x=1;

end
endmodule
	
