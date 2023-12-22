module fsm(output y, input [1:0]in, input clock);

wire [1:0]m;
wire [1:0]k;

registro #(2) stato(k, m, 1'b1, clock);
ns nesxt(m, k, in);
u uscita(y, k, in);

endmodule
