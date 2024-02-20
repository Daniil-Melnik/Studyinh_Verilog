`timescale 1 ns / 1 ps

module test_top_tb
();
logic a_s = 1'b0;
logic b_s = 1'b0;
logic [5:0] out_s;

test_top test_top_dut(
             .a(a_s),
             .b(b_s),
             .out (out_s)
           );

initial
begin
  $display ("Sim Started!");
  #1 a_s = 1'b0;
  b_s = 1'b1;
  #1 a_s = 1'b1;
  b_s = 1'b0;

  #1 a_s = 1'b1;
  b_s = 1'b1;
  $display ("Sim A Finish!");
  #1 $stop;
end
endmodule

