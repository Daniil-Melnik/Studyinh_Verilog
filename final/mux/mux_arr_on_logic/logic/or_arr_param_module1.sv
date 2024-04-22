module or_arr_param_module1
(
    input logic [3 : 0][1 : 0] in,
    output logic [1 : 0] out
);

assign out = in[0] | in[1] | in[2] | in[3];
    
endmodule