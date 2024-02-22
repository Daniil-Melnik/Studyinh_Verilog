module trigger_rs_module (
    input logic r, s,
    input logic clk,
    input rst,

    output logic q
);

always @(posedge clk) begin

    if (rst) q = 0;

    if (r == 1'b0 & s == 1'b1) q <= 1'b1;
    else if (r == 1'b1 & s == 1'b0) q <= 1'b0;
    else if (r == 1'b1 & s == 1'b1) q <= 1'bz;
    else q <= q; 

end
endmodule