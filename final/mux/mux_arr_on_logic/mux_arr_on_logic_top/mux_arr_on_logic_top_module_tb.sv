`timescale 1 ns / 1 ps
module mux_arr_on_logic_top_module_tb ();

logic [1:0] in;
logic [1:0] out;

mux_arr_on_logic_top_module  mux_arr_on_logic_top_module_inst (
    .in(in),
    .out(out)
  );

  initial begin
    $display ("Sim Started!");
    in = 2'b00;
    #0.1 in = 2'b01;
    #0.1 in = 2'b10;
    #0.1 in = 2'b11;
    #0.1 in = 2'bzz;
    #0.1 in = 2'b10;
    #0.1 in = 2'b00;
    #0.1 in = 2'b11;
    #0.1 in = 2'b01;
    
    $display ("Sim Finish!");
    #0.1 $stop;
  end
endmodule