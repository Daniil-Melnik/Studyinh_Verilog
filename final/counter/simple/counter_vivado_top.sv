`timescale 1ns / 1ps

module counter_vivado_top(
        input logic clk_in1_p, clk_in1_n,
        output logic [7:0] lamps
    );

    clk_10M clock
    (
     .out(out), 
     .clk_in1_p(clk_in1_p),
     .clk_in1_n(clk_in1_n));

    logic [24:0] bus;

    always @(posedge out) begin
        bus <= bus + 1;
    end

    always @(posedge bus[22]) begin
        lamps <= lamps + 1;
    end


endmodule