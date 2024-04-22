`timescale 1 ns / 1 ps

module registr_concat_module_tb ();

localparam WIDTH = 8;
    
logic clk = 0;
logic in;
logic rst;
logic out;

registr_concat_module # (
    .WIDTH(WIDTH)
  )
  registr_concat_module_inst (
    .in(in),
    .rst(rst),
    .clk(clk),
    .out(out)
  );

  always #0.1 clk = ~clk;

  initial begin
    rst = 1;
    #0.15 rst = 0;
  end

  initial begin
    #0.2 in =1;
    #0.2 in =0;
    #0.2 in =1;
    #0.2 in =0;
    #0.2 in =1;
    #0.2 in =1;
    #0.2 in =0;
    #0.2 in =1;
    #0.2 in =1;
    #0.2 in =0;
    #0.2 in =1;
    #0.2 in =1;
    #0.2 in =0;
    #0.2 in =1;
    #0.1 $stop;
  end
endmodule