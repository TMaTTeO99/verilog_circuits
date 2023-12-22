module ns(output [1:0]ns, input [1:0]cs, input [1:0]let);

assign ns[1] = ((~cs[1]) & (cs[0]) & (~let[1]) & (let[0]));

assign ns[0] = ((~cs[1]) & (~let[1]) & (~let[0])) | ((~let[1]) & (~cs[1]) & (cs[0])) | ((~let[1]) & (~let[0]) & (cs[0]));
endmodule
