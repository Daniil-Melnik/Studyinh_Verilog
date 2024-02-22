module trigger_t_module (
    input logic t,
    input logic clk,
    input rst, 


    output logic q
);
// 
// initial q = 0;

always @(posedge clk) begin
    //if (t == 1'b1) q <= ~qin;

    if (rst)
    begin 
        q <= 0;
    end
    else if (t)
        q <= ~q;
    else 
        q <=q;
end
endmodule