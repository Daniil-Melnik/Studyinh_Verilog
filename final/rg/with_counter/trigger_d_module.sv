module trigger_d_module (
    input logic d,
    input logic clk,
    input logic rst,

    output logic q
);

always @(posedge clk) begin
    if (rst) q <= 0;
    else q <= d;
end
endmodule