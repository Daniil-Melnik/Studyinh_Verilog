`timescale 1 ns / 1 ps

module or_arr_module_tb
  ();

  localparam WIDTH = 3;

  logic [WIDTH - 1 : 0] a_s;
  logic [WIDTH - 1 : 0] b_s;
  logic [WIDTH - 1 : 0] out_s;

  or_arr_module # (
                   .WIDTH_I(WIDTH)
                 )
                 or_arr_module_inst (
                   .a(a_s),
                   .b(b_s),
                   .out(out_s)
                 );
  integer i, j;
  initial
  begin
    for (i = 0; i < $pow(2, WIDTH); i = i + 1)
    begin
      for (j = 0; j < $pow(2, WIDTH); j = j + 1)
      begin
        #1 a_s = i;
        b_s = j;
      end;
    end

    $display ("Sim Finish!");
    $stop;

  end

endmodule
