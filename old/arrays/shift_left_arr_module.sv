 // operation of logic multiplication

module shift_left_arr_module 
#(
    parameter WIDTH_I,
    parameter SHIFT
)
(
    input logic [WIDTH_I - 1 : 0] a,
    output logic [WIDTH_I - 1 : 0] out
);

assign out = a << SHIFT;
    
endmodule