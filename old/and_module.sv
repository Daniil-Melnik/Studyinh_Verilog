// operation of logic multiplication

module and_module (
    input a, b,
    output out
);

logic a_s, b_s;
logic out_s;

assign a_s = a;
assign b_s = b;

assign out = a_s & b_s;
    
endmodule