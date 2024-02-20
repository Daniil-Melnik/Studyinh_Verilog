// operation of logic sum

module test_top (
    input logic a,
    input logic b,
    output logic [5:0] out
  );

  logic [5:0] bus;
  logic a_s = a;
  logic b_s = b;

  not_module logic_not1(
               .a(a),
               .out(out[0])
             );

  not_module logic_not2(
               .a(b),
               .out(out[1])
             );

  or_module logic_or(
              .a(a),
              .b(b),
              .out(out[2])
            );

  and_module logic_and(
               .a(a),
               .b(b),
               .out(out[3])
             );

  xor_module logic_xor(
               .a(a),
               .b(b),
               .out(out[4])
             );

  xnor_module logic_xnor(
               .a(a),
               .b(b),
               .out (out[5])
             );

endmodule
