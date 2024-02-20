// module of left shifting operation

module shift_left_module (
    input logic [7:0] a,
    output logic [7:0] out
);

logic [7:0] a_s;
logic [10:0] out_s;

assign a_s = a;

assign out = a_s << 3;

endmodule

