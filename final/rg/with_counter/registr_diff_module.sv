module registr_diff_module (
    input logic in,
    input logic clk_in1_n, clk_in1_p,
    input logic [3:0] rst,
    output logic [6 : 0] outBus,
    output logic out
  );

  clk_10M instance_name
  (
   .out(clkK),
   .clk_in1_p(clk_in1_p),
   .clk_in1_n(clk_in1_n));

  logic [6:0] Bus;
  logic [25 : 0] clk;
  logic outK;

always @(posedge clkK) begin
    clk <= clk + 1;
end

  trigger_d_module  trigger_d_0 (
                      .d(in),
                      .clk(clk[22]),
                      .q(Bus[0]),
                      .rst(rst[0])
                    );

  trigger_d_module  trigger_d_1 (
                      .d(Bus[0]),
                      .clk(clk[22]),
                      .q(Bus[1]),
                      .rst(rst[1])
                    );
  trigger_d_module  trigger_d_2 (
                      .d(Bus[1]),
                      .clk(clk[22]),
                      .q(Bus[2]),
                      .rst(rst[2])
                    );
  trigger_d_module  trigger_d_3 (
                      .d(Bus[2]),
                      .clk(clk[22]),
                      .q(Bus[3]),
                      .rst(rst[3])
                    );
  trigger_d_module  trigger_d_4 (
                      .d(Bus[3]),
                      .clk(clk[22]),
                      .q(Bus[4]),
                      .rst(rst[0])
                    );
  trigger_d_module  trigger_d_5 (
                      .d(Bus[4]),
                      .clk(clk[22]),
                      .q(Bus[5]),
                      .rst(rst[1])
                    );
  trigger_d_module  trigger_d_6 (
                      .d(Bus[5]),
                      .clk(clk[22]),
                      .q(Bus[6]),
                      .rst(rst[2])
                    );
  trigger_d_module  trigger_d_7 (
                      .d(Bus[6]),
                      .clk(clk[22]),
                      .q(outK),
                      .rst(rst[3])
                    );
always @(posedge clk[0]) begin
    outBus <= Bus;
    out <= outK;
end

endmodule
