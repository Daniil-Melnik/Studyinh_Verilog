`timescale 1 ns / 1 ps

module trigger_rs_module_tb
  ();

  logic r_s = 1'b0;
  logic s_s = 1'b1;
  logic clk_s = 1'b0; 
  logic q_s = 1'b0;
  logic rst;

  trigger_rs_module  trigger_rs_module_inst (
    .r(r_s),
    .s(s_s),
    .clk(clk_s),
    .q(q_s),
    .rst(rst)
  );

  always #0.1 clk_s = ~clk_s;

  // initializing of R

  initial
  begin
    rst = 1;

    #0.18 rst = 0;
  end

  initial
  begin
    $display ("============");
    $display ("Sim Started!");
    
    #0.24 r_s = 1'b1;


    #0.37 r_s = 1'b0;
    #0.21 r_s = 1'b1;
    #0.23 r_s = 1'b0;
    #0.36 r_s = 1'b1;

    $display ("Sim Finish!");
    $display ("============");
    #0.1 $stop;

  end

  //initializing of S
  initial
  begin
    $display ("============");
    $display ("Sim Started!");

    #0.18 s_s = 1'b0;

    #0.46 s_s = 1'b1;
    #0.31 s_s = 1'b0;
    #0.23 s_s = 1'b1;
    #0.31 s_s = 1'b0;

    $display ("Sim Finish!");
    $display ("============");
    #0.1 $stop;

  end


endmodule
