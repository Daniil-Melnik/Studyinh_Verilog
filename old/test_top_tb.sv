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
  $display ("Sim A Started!");
  $display ("0 - A = ", a_s);

  #1 a_s = 1'b0;
  $display ("1 - A = ", a_s);

  #1 a_s = 1'b1;
  $display ("2 - A = ", a_s);

  #1 a_s = 1'b1;
  $display ("3 - A = ", a_s);

  $display ("Sim A Finish!");
  #1 $stop;
end

initial
begin
  $display ("Sim B Started!");
  $display ("0 - B = ", b_s);

  #1 b_s = 1'b1;
  $display ("1 - B = ", b_s);

  #1 b_s = 1'b0;
  $display ("2 - B = ", b_s);

  #1 b_s = 1'b1;
  $display ("3 - B = ", b_s);

  $display ("Sim B Finish!");
  #1 $stop;
end
endmodule

