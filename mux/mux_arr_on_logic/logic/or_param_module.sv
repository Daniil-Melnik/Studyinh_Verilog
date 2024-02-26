module or_arr_param_module 
#(
    parameter WIDTH_I,
    parameter WIDTH_I_X
)
(
    input logic [WIDTH_I - 1 : 0][WIDTH_I_X - 1 : 0] in,
    output logic [WIDTH_I_X - 1 : 0] out
);

assign out = |in;
    
endmodule