`timescale 1 ns / 1 ps

module trigger_d_module_tb
  ();

  logic d_s = 1'b0;
  logic clk_s = 1'b0; 
  logic q_s = 1'b0;

  trigger_d_module  trigger_d_module_inst (
    .d(d_s),
    .clk(clk_s),
    .q(q_s)
  );

  always #0.1 clk_s = ~clk_s;

  initial
  begin
    $display ("============");
    $display ("Sim Started!");
    
    #0.25 d_s = 1'b1;
    #0.4 d_s = 1'b0;
    #0.2 d_s = 1'b1;
    #0.3 d_s = 1'b0;

    $display ("Sim Finish!");
    $display ("============");
    #0.1 $stop;

  end


endmodule
