`timescale 1 ns / 1 ps
module and_param_module_tb ();

  localparam WIDTH = 3;

  logic [2:0] in;
  logic out;

  and_param_module # (
                     .WIDTH_I(WIDTH)
                   )
                   and_param_module_inst (
                     .in(in),
                     .out(out)
                   );
  initial
  begin
    $display ("Sim Started!");
    in = 3'b000;
    #0.1 in = 3'b001;
    #0.1 in = 3'b010;
    #0.1 in = 3'b011;
    #0.1 in = 3'b100;
    #0.1 in = 3'b101;
    #0.1 in = 3'b110;
    #0.1 in = 3'b111;

    $display ("Sim Finish!");
    #0.1 $stop;
  end
endmodule
