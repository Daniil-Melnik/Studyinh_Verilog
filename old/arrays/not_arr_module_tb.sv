`timescale 1 ns / 1 ps

module not_arr_module_tb
  ();

  localparam WIDTH = 3;

  logic [WIDTH - 1 : 0] a_s = 3'b000;
  logic [WIDTH - 1 : 0] out_s;

  not_arr_module # (
                   .WIDTH_I(WIDTH)
                 )
                 not_arr_module_inst (
                   .a(a_s),
                   .out(out_s)
                 );
  integer i;
  initial
  begin
    for (i = 1; i < $pow(2, WIDTH); i = i + 1)
    begin
        #1 a_s = i;
    end;

    $display ("Sim Finish!");
    $stop;

  end

endmodule
