module mux_arr_module
#(
    parameter WIDTH_IN,
    parameter WIDTH_OP,
    parameter WIDTH_BUS
)
(
    input logic [WIDTH_IN - 1 : 0] in,
    input logic [WIDTH_OP - 1 : 0][WIDTH_BUS - 1 : 0] opt,

    output logic [WIDTH_BUS - 1 : 0] out
);

initial begin
    assign out = opt[in];
end
    
endmodule