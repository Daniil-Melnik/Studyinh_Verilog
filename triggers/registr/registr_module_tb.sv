`timescale 1 ns / 1 ps

module registr_module_tb
  ();

  logic in;
  logic out_s;
  logic [4:0] rst;
  logic clk = 1'b0;

  registr_module  registr_module_inst (
    .in(in),
    .clk(clk),
    .rst(rst),
    .out(out)
  );

  always #0.1 clk = ~clk;

  initial
  begin
    rst = 4'b1111;
    #0.2 rst = 4'b1110;
    #0.2 rst = 4'b1100;
    #0.2 rst = 4'b1000;
    #0.2 rst = 4'b0000;

  end

  initial
  begin
    $display ("============");
    $display ("Sim Started!");
    in = 1'bz;
    #0.2    in = 1;
    #0.2    in = 0;
    #0.2    in = 1;
    #0.2    in = 1;
    #0.2    in = 0;
    #0.2    in = 1;
    #0.2    in = 1;
    #0.2    in = 0;
    #0.2    in = 0;
    #0.2    in = 1;
    #0.2    in = 1;
    #0.2    in = 0;
    #0.2    in = 0;
    #0.2    in = 1;
    #0.2    in = 1;
    #0.2    in = 1;

    $display ("Sim Finish!");
    $display ("============");
    #0.2 $stop;

  end


endmodule
