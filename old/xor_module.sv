// module of xr operation

module xor_module (
    input a,
    input b,
    output out
);

logic a0_s, a1_s;

assign a0_s = a;
assign a1_s = b;
assign out = a0_s ^ a1_s;
    
endmodule