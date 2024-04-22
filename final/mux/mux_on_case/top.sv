module top (
    input logic [3:0] opt,
    input logic [1:0] s,
    output logic out
);
mux_case_module # (
    .WIDTH_IN(2),
    .WIDTH_OP(4),
    .WIDTH_BUS(0)
  )
  mux_case_module_inst (
    .in(s),
    .options(opt),
    .out(out)
  );
endmodule