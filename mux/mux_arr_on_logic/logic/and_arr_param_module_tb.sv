`timescale 1 ns / 1 ps
module and_arr_param_module_tb ();

  localparam WIDTH = 2;

  logic [WIDTH - 1 : 0] in;
  logic [WIDTH - 1 : 0] x;
  logic [1 : 0] out;

  and_arr_param_module # (
    .WIDTH_I(WIDTH)
  )
  and_arr_param_module_inst (
    .in(in),
    .x(x),
    .out(out)
  );
  initial
  begin
    $display ("Sim Started!");
    in = 2'b00;
    x = 2'b01;
    
    #0.1
    in = 2'b11;
    x = 2'b01;

    #0.1
    in = 2'b11;
    x = 2'b10;

    #0.1
    in = 2'b10;
    x = 2'b11;

    $display ("Sim Finish!");
    #0.1 $stop;
  end
endmodule
