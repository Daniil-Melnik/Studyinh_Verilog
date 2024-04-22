module and_param_module 
#(
    parameter WIDTH_I
)
(
    input logic [WIDTH_I - 1 : 0] in,
    output logic out
);

integer i = 0;
logic out_s = 1;

assign out = &in;
    
endmodule