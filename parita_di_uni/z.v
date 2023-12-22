module ZZ(output z, input nr, input x);
assign z = ((~nr) & (~x)) | (nr & x);
endmodule
