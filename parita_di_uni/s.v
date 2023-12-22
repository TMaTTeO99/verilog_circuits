module s(output nr, input cs, input x);

	assign nr = ((~cs) & x) | (cs & (~x));

endmodule
