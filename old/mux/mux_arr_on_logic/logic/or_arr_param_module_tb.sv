`timescale 1 ns / 1 ps
module or_arr_param_module_tb ();

  logic [3:0][1:0] in;
  logic out;

  or_arr_param_module1  or_arr_param_module1_inst (
    .in(in),
    .out(out)
  );
  initial
  begin
    $display ("Sim Started!");
    in = {2'b00 , 2'b01 , 2'b10 , 2'b11 };
    #0.1 in = {2'b00 , 2'b01 , 2'b10 , 2'b11 };
    #0.1 in = {2'b00 , 2'b00 , 2'b10 , 2'b10 };
    #0.1 in = {2'b01 , 2'b01 , 2'b10 , 2'b11 };
    #0.1 in = {2'b00 , 2'b00 , 2'b00 , 2'b00 };
    
    $display ("Sim Finish!");
    #0.1 $stop;
  end
endmodule
