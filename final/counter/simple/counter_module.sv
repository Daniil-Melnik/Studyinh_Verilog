`timescale 1ns / 1ps

module counter_module(
    input logic clk,
    output logic out
    );

    logic [24:0] bus;

    always @(posedge clk) begin
        bus <= bus + 1;
        out <= bus[22];
    end

endmodule