module registr_module (
    input logic in,
    input logic clk,
    input logic [4:0] rst,
    output logic out
  );

  logic [3:0] Bus = 4'b0000;

  trigger_d_module  trigger_d_0 (
                      .d(in),
                      .clk(clk),
                      .q(Bus[0]),
                      .rst(rst[0])
                    );

  trigger_d_module  trigger_d_1 (
                      .d(Bus[0]),
                      .clk(clk),
                      .q(Bus[1]),
                      .rst(rst[1])
                    );
  trigger_d_module  trigger_d_2 (
                      .d(Bus[1]),
                      .clk(clk),
                      .q(Bus[2]),
                      .rst(rst[2])
                    );
  trigger_d_module  trigger_d_3 (
                      .d(Bus[2]),
                      .clk(clk),
                      .q(Bus[3]),
                      .rst(rst[3])
                    );
  trigger_d_module  trigger_d_4 (
                      .d(Bus[3]),
                      .clk(clk),
                      .q(out),
                      .rst(rst[4])
                    );

endmodule
