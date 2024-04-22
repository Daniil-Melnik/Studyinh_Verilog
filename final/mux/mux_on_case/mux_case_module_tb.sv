`timescale 1 ns / 1 ps
module mux_case_module_tb ();

localparam WIDTH_IN = 2;
localparam WIDTH_OP = 4;
localparam WIDTH_BUS = 2;

logic [WIDTH_IN - 1 : 0] in;
logic [WIDTH_OP - 1 : 0][WIDTH_BUS - 1 : 0] options = {2'b01, 2'b11, 2'b00, 2'b10};
logic [WIDTH_BUS - 1 : 0] out;

mux_case_module # (
    .WIDTH_IN(WIDTH_IN),
    .WIDTH_OP(WIDTH_OP),
    .WIDTH_BUS(WIDTH_BUS)
  )
  mux_case_module_inst (
    .in(in),
    .options(options),
    .out(out)
  );

  initial begin
    in = 2'b00;
    #0.1 in = 2'b01;
    #0.1 in = 2'b10;
    #0.1 in = 2'b11;

    #0.1 in = 2'bzz;

    #0.1 in = 2'b00;
    #0.1 in = 2'b10;
    #0.1 in = 2'b01;
    #0.1 in = 2'b11;

    #0.1 $stop;
  end
endmodule