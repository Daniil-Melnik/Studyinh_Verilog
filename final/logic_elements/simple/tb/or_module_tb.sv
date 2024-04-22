`timescale 1 ns / 1 ps

module or_module_tb
  ();

  logic a_s = 0;
  logic b_s = 0;
  logic out_s;

  or_module oR_module_dut(
               .a(a_s),
               .b(b_s),
               .out (out_s)
             );

  initial
  begin
    $display ("============");
    $display ("Sim Started!");
    //#0.1    a_s = 1'b0;
    //b_s = 1'b0;

    #0.1    a_s = 1'b0;
    b_s = 1'b1;

    #0.1    a_s = 1'b1;
    b_s = 1'b0;

    #0.1    a_s = 1'b1;
    b_s = 1'b1;

    $display ("Sim Finish!");
    $display ("============");
    #0.1 $stop;

  end


endmodule
