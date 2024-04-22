module trigger_t_module (
    input logic t,
    input logic clk,
    input rst, 


    output logic q
);
// 
// initial q = 0;

always @(posedge clk) begin

    if (rst) q <= 0;
    else if (t)
        q <= ~q;
    else 
        q <=q;
end
endmodule