module u(output y, input [1:0]cs, input [1:0]in);

assign y = (cs[1] & cs[0] & (~in[1]) & (in[0]));

endmodule
