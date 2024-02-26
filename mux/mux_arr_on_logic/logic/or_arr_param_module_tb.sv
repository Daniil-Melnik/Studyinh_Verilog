`timescale 1 ns / 1 ps
module or_arr_param_module_tb ();

  localparam WIDTH_I = 4;
  localparam WIDTH_I_X = 2;

  logic [3:0][1:0] in;
  logic out;

  or_arr_param_module # (
    .WIDTH_I(WIDTH_I),
    .WIDTH_I_X(WIDTH_I_X)
  )
  or_arr_param_module_inst (
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
    #0.1 in = {2'b00 , 2'b01 , 2'b10 , 2'b11 };
    
    $display ("Sim Finish!");
    #0.1 $stop;
  end
endmodule
