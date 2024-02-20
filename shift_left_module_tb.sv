`timescale 1 ns / 1 ps

module shift_left_module_tb
  ();

  logic [7:0] a_s = 8'b00000000;
  logic out_s;

  shift_left_module shift_left_module_dut(
               .a(a_s),
               .out (out_s)
             );

  initial
  begin
    $display ("============");
    $display ("Sim Started!");

    #0.1    a_s = 8'b00000001;
    #0.1    a_s = 8'b00000010;
    #0.1    a_s = 8'b00000100;
    #0.1    a_s = 8'b00001000;
    #0.1    a_s = 8'b00010000;
    #0.1    a_s = 8'b00100000;
    #0.1    a_s = 8'b01000000;
    #0.1    a_s = 8'b10000000;

    /*#0.1    a_s = 1'b1;
    b_s = 1'b0;

    #0.1    a_s = 1'b1;
    b_s = 1'b1;*/

    $display ("Sim Finish!");
    $display ("============");
    #0.1 $stop;

  end


endmodule
