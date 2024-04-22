`timescale 1 ns / 1 ps

module trigger_top_module_tb
  ();

  logic [9:0] inBus_s;
  logic [9:0] outBus_s;
  logic rst;
  logic clk = 1'b0;

  trigger_top_module  trigger_top_module_inst (
    .inBus(inBus_s),
    .clk(clk),
    .outBus(outBus_s),
    .rst(rst)
  );

  always #0.1 clk = ~clk;

  initial
  begin
    rst = 1;
    #0.15 rst = 0;
  end

  initial
  begin
    $display ("============");
    $display ("Sim Started!");

            inBus_s = 10'b1000000001;
    #0.1    inBus_s = 10'b0100000010;
    #0.2    inBus_s = 10'b0010001000;
    #0.3    inBus_s = 10'b0001010000;
    #0.1    inBus_s = 10'b0001100000;
    #0.2    inBus_s = 10'b0010010000;
    #0.3    inBus_s = 10'b0100001000;
    #0.1    inBus_s = 10'b1000000100;

    $display ("Sim Finish!");
    $display ("============");
    #0.1 $stop;

  end


endmodule
