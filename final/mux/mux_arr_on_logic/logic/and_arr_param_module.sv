module and_arr_param_module 
#(
    parameter WIDTH_I
)
(
    input logic [1 : 0] in,
    input logic [1 : 0] x,
    output logic [1 : 0] out
);

logic [2 : 0] cond1;
logic [2 : 0] cond2;
logic [1 : 0] cond3;

assign cond1 = ((in[0] & in[1]) << 2);
assign cond2 = ((in[0] & in[1]) << 1);
assign cond3 = (cond1 | cond2) >> 1;

assign out = cond3 & x;
    
endmodule