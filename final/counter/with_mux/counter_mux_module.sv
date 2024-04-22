`timescale 1ns / 1ps

module counter_mux_module(
    input logic clk_in1_p, clk_in1_n,
    input logic enable,
    input logic [1:0] s,
    output logic [7:0] lamps
    );
    logic out;
    clk_10M clock
    (
     .out(out),
     .clk_in1_p(clk_in1_p),
     .clk_in1_n(clk_in1_n)); 

    logic [3:0][7:0] results;
    
    logic [25:0] bus;

    always @(posedge out) begin
        bus <= bus + 1;
    end

    always @(posedge bus[10]) begin
        results[0] <= results[0] + 1;
    end

    //--0--

    always @(posedge bus[15]) begin
        results[1] <= results[1] + 1;
    end

    //--1--
    always @(posedge bus[20]) begin
        results[2] <= results[2] + 1;
    end

    //--2--

    always @(posedge bus[25]) begin
        results[3] <= results[3] + 1;
    end

    always @(posedge out) begin
        if (enable) lamps <= results[s];
        else lamps <= 8'b00000000;
    end
endmodule
