`timescale 1 ns / 1 ps

module not_module_tb
  ();

  logic a_s = 0;
logic out_s; 

  not_module not_module_dut(
               .a(a_s),
               .out (out_s)
             );

             initial 
             begin 
             #2    a_s = 1'b1;
             #2    a_s = 1'b0;
             #2    a_s = 1'b1;
             #2    a_s = 1'b0;
             #2    a_s = 1'b1;
             #2    a_s = 1'b0;
            $display ("Sim Finish!");
            $stop; 

             end

endmodule
