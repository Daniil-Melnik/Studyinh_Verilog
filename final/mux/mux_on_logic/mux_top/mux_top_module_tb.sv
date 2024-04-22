`timescale 1 ns / 1 ps

module mux_top_module_tb ();

logic [3:0] x = 4'b0101;
logic [1:0] a;
logic out;

mux_top_module  mux_top_module_inst (
    .x(x),
    .a(a),
    .out(out)
  );
  initial
  begin
    $display ("Sim Started!");
    a = 2'b00;
    #0.1 a = 2'b01;
    #0.1 a = 2'b10;
    #0.1 a = 2'b11;

    #0.1 a = 2'bzz;

    #0.1 a = 2'b00;
    #0.1 a = 2'b10;
    #0.1 a = 2'b01;
    #0.1 a = 2'b11;
    $display ("Sim Finish!");
    #0.1 $stop;
  end
    
endmodule