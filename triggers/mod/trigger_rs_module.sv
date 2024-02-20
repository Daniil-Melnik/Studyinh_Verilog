module trigger_rs_module (
    input logic r, s,
    input logic clk,

    output logic q
);

always @(posedge clk) begin
    if (r == 1'b0 & s == 1'b1) q = 1'b1;
    if (r == 1'b1 & s == 1'b0) q = 1'b0; 
end
endmodule