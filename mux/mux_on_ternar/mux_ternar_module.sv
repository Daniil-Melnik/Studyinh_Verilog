module mux_ternar_module
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
    assign out = (in == 0) ? opt[0] : ((in == 1) ? opt[1] : ((in == 2) ? opt[2] : ((in == 3) ? opt[3] : 1'b0))) ;
end
    
endmodule