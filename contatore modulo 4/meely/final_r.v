module f_r(output [1:0]y, input val, input clock);

wire [1:0]k;
wire [1:0]m;

registro #(2) stato(m, k, 1'b1, clock); 
nsta prossimostato(k, m, val);
uscita uscita(y, m, val);
endmodule
