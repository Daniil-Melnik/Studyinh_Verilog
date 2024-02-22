`timescale 1 ns / 1 ps

module trigger_t_module_tb
  ();

  logic t = 1'b0;
  logic clk = 1'b0; 
  logic q = 1'b0;
  logic rst;

  trigger_t_module  trigger_t_module_inst (
    .t(t),
    .clk(clk),
    .rst(rst),
    .q(q)
  );

  always #0.1 clk = ~clk;

  initial
  begin
    $display ("============");
    $display ("Sim Started!");

    rst = 1;
    
    #0.23 t = 1'b1;

    rst = 0;
    
    #0.38 t = 1'b0;
    #0.23 t = 1'b1;
    #0.25 t = 1'b0;
    #0.12 t = 1'b1;

    $display ("Sim Finish!");
    $display ("============");
    #0.1 $stop;

  end


endmodule
