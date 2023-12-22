module uscita(output [1:0]ns, input [1:0]cs, input in);

assign ns[1] = ((in) & (~cs[1] & cs[0])) | (cs[1] & (~cs[0])) | ((~in) & cs[1]);
assign ns[0] = ((in) & (~cs[0])) | ((~in) & (cs[0]));

endmodule
