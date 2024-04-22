`timescale 1 ns / 1 ps

module mux_arr_module_tb ();
localparam WIDTH_IN = 2;
localparam WIDTH_OP = 4;
localparam WIDTH_BUS = 2;

logic [WIDTH_OP - 1 : 0][WIDTH_BUS - 1 : 0] opt = {2'b01, 2'b10, 2'b11, 2'b00};
logic [WIDTH_IN - 1 : 0] in;
logic [WIDTH_BUS - 1 : 0] out;

mux_arr_module # (
    .WIDTH_IN(WIDTH_IN),
    .WIDTH_OP(WIDTH_OP),
    .WIDTH_BUS(WIDTH_BUS)
  )
  mux_arr_module_inst (
    .in(in),
    .opt(opt),
    .out(out)
  );

  initial begin
    in = 0;
    #0.1 in = 1;
    #0.1 in = 2;
    #0.1 in = 3;
    //for (i = 1; i < WIDTH_OP; i++) begin
    //    #0.1 in = i;
    //end

    #0.1 $stop;
  end
endmodule