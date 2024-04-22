module trigger_top_module (
    input logic [9:0] inBus,
    input logic clk, rst,
    output logic [9:0] outBus
  );

  /*trigger_d_module  trigger_d_0 (
                      .d(inBus[0]),
                      .clk(clk),
                      .q(outBus[0]),
                      .rst(rst)
                    );

  trigger_d_module  trigger_d_1 (
                      .d(inBus[1]),
                      .clk(clk),
                      .q(outBus[1]),
                      .rst(rst)
                    );
  trigger_d_module  trigger_d_2 (
                      .d(inBus[2]),
                      .clk(clk),
                      .q(outBus[2]),
                      .rst(rst)
                    );
  trigger_d_module  trigger_d_3 (
                      .d(inBus[3]),
                      .clk(clk),
                      .q(outBus[3]),
                      .rst(rst)
                    );
  trigger_d_module  trigger_d_4 (
                      .d(inBus[4]),
                      .clk(clk),
                      .q(outBus[4]),
                      .rst(rst)
                    );
  trigger_d_module  trigger_d_5 (
                      .d(inBus[5]),
                      .clk(clk),
                      .q(outBus[5]),
                      .rst(rst)
                    );
  trigger_d_module  trigger_d_6 (
                      .d(inBus[6]),
                      .clk(clk),
                      .q(outBus[6]),
                      .rst(rst)
                    );
  trigger_d_module  trigger_d_7 (
                      .d(inBus[7]),
                      .clk(clk),
                      .q(outBus[7]),
                      .rst(rst)
                    );
  trigger_d_module  trigger_d_8 (
                      .d(inBus[8]),
                      .clk(clk),
                      .q(outBus[8]),
                      .rst(rst)
                    );
  trigger_d_module  trigger_d_9 (
                      .d(inBus[9]),
                      .clk(clk),
                      .q(outBus[9]),
                      .rst(rst)
                    );*/

  genvar i;
  generate 
    for (i = 0; i < 10; i++)
    begin
      trigger_d_module  trigger_d (
        .d(inBus[i]),
        .clk(clk),
        .q(outBus[i]),
        .rst(rst)
      );
    end 
  endgenerate 


endmodule
