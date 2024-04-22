`timescale 1 ns / 1 ps

module shift_left_arr_module_tb
  ();

  localparam WIDTH = 4;
  localparam SHIFT = 1;

  logic [WIDTH - 1 : 0] a_s;
  logic [WIDTH - 1 : 0] out_s;

  shift_left_arr_module # (
    .WIDTH_I(WIDTH),
    .SHIFT(SHIFT)
  )

  shift_left_arr_module_inst (
    .a(a_s),
    .out(out_s)
  );

  integer i;

  initial
  begin
    for (i = 0; i < $pow(2, WIDTH); i = i + 1)
    begin
        #1 a_s = i;
    end

    $display ("Sim Finish!");
    $stop;

  end

endmodule
