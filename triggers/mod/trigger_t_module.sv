module trigger_t_module (
    input logic t,
    input logic clk,

    output logic q
);

logic q_s;

always @(posedge clk) begin
    if (t == 1'b1) q = 1'b1;
    else q = 1'b0;
end
endmodule