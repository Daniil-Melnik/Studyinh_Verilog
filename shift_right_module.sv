module shift_right_module (
    input logic [5:0] a,
    output logic [5:0] out
);

logic [5:0] a_s;
logic [5:0] out_s;

assign a_s = a;

assign out = a_s >> 2;

endmodule