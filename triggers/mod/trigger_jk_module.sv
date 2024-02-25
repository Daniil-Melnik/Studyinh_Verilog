module trigger_jk_module (
    input logic j, k,
    input logic clk,
    input rst,

    output logic q
);

always @(posedge clk) begin

    if (rst) q = 0;

    if (~j & k) q <= 0; //Modified combinations
    else if (j & ~k) q <= 1;
    else if (j & k) q <= ~q;
    else q <= q; 

end
endmodule