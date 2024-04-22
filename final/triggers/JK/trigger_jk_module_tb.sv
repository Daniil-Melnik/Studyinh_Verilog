`timescale 1 ns / 1 ps

module trigger_jk_module_tb
  ();

  logic j_s = 1'b0;
  logic k_s = 1'b0;
  logic clk_s = 1'b0; 
  logic q_s = 1'b0;
  logic rst;

  trigger_rs_module  trigger_rs_module_inst (
    .j(j_s),
    .k(k_s),
    .clk(clk_s),
    .rst(rst),
    .q(q_s)
  );

  always #0.1 clk_s = ~clk_s;

  // initializing of R

  initial
  begin
    rst = 1;

    #0.12 rst = 0;
  end

  initial
  begin
    $display ("============");
    $display ("Sim Started!");
    
    #0.2 j_s = 1'b1;


    #0.4 j_s = 1'b0;
    #0.25 j_s = 1'b1;
    #0.3 j_s = 1'b0;
    #0.2 j_s = 1'b1;

    $display ("Sim Finish!");
    $display ("============");
    #0.1 $stop;

  end

  //initializing of S
  initial
  begin
    $display ("============");
    $display ("Sim Started!");

    #0.15 k_s = 1'b1;
    #0.2 k_s = 1'b0;
    #0.2 k_s = 1'b1;
    #0.2 k_s = 1'b0;
    #0.25 k_s = 1'b1;
    #0.25 k_s = 1'b0;
    #0.2 k_s = 1'b1;

    $display ("Sim Finish!");
    $display ("============");
    #0.1 $stop;

  end


endmodule
