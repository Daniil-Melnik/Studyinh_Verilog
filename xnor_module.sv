// module of inversion of xor operation

module xnor_module (
    input a, b,
    output out
);

logic a_s, b_s;

assign a_s = a;
assign b_s = b;

assign out = a_s ~^ b_s;

endmodule