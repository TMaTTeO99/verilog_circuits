module test();

reg clock;
reg [1:0]inp;
wire y;

fsm prova(y, inp, clock);

always 
begin 
#1 clock = ~clock;
end

initial
begin
$dumpfile("file.vcd");
$dumpvars;

clock = 0;
inp = 0;

#2 inp = 0;
#2 inp = 1;
#2 inp = 3;
#2 inp = 0;
#2 inp = 0;
#2 inp = 3;
#2 inp = 0;
#2 inp = 0;
#2 inp = 1;
#2 inp = 1;
#2 inp = 0;


end
endmodule
