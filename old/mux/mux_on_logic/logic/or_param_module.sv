module or_param_module 
#(
    parameter WIDTH_I
)
(
    input logic [WIDTH_I - 1 : 0] in,
    output logic out
);

assign out = |in;
    
endmodule