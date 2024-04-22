`timescale 1 ns / 1 ps
module or_param_module_tb ();

  localparam WIDTH = 4;

  logic [3:0] in;
  logic out;

  or_param_module # (
                     .WIDTH_I(WIDTH)
                   )
                   or_param_module_inst (
                     .in(in),
                     .out(out)
                   );
  initial
  begin
    $display ("Sim Started!");
    in = 4'b0000;
    for (integer i = 1; i < $pow(2, WIDTH); i = i + 1) begin
        #0.1 in = i;
    end
    $display ("Sim Finish!");
    #0.1 $stop;
  end
endmodule
