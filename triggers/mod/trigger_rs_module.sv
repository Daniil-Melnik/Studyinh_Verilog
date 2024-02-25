module trigger_rs_module (
    input logic r, s,
    input logic clk,
    input rst,

    output logic q
);

always @(posedge clk) begin

    if (rst) q = 0;

    if (r & ~s) q <= 0; //Modified combinations
    else if (~r & s) q <= 1;
    else if (r & s) q <= 1'bz;
    else q <= q; 

end
endmodule