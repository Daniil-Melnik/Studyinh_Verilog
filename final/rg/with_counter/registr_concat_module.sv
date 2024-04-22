module registr_concat_module
(
    input logic in,
    input logic clk_in1_p, clk_in1_n,

    output logic [7 : 0] outBus;
);

logic [7 : 0] bus;

logic [25 : 0] countBus;

clk_10M instance_name
(
 .out(clk_out),
 .clk_in1_p(clk_in1_p),
 .clk_in1_n(clk_in1_n));
 
always @(posedge clk_out) begin
    countBus <= countBus + 1;
end

always @(posedge countBus[21]) begin
    bus<={bus[WIDTH - 2:0], in};
    outBus <= bus;
end
endmodule