// operation of logic multiplication

module xor_arr_module 
#(
    parameter WIDTH_I,
    localparam WIDTH_O = WIDTH_I
)
(
    input logic [WIDTH_I - 1 : 0] a,
    input logic [WIDTH_I - 1 : 0] b,
    output logic [WIDTH_O - 1 : 0] out
);

logic a_s, b_s;
logic out_s;

assign a_s = a;
assign b_s = b;

assign out = a ^ b;
    
endmodule