module registr_concat_module
#(
    parameter WIDTH
)
(
    input logic in,
    input logic rst,
    input logic clk,

    output logic out
);

logic [WIDTH - 1 : 0] bus;

always @(posedge clk) begin
    if (rst) bus <= 0;
    else begin
        out<=bus[WIDTH - 1];
        bus<={bus[WIDTH - 2:0], in};
    end
end
endmodule