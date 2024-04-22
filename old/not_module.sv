// inversion operation

module not_module
(
    input a,
    output out
);

logic a_s;
logic out_s;

assign a_s = a;
assign out_s = ~a_s;
assign out = out_s;
    
endmodule