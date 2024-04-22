module mux_top_module(
    input logic [3:0] x,
    input logic [1:0] a,
    output logic out
  );

  localparam WIDTH_AND = 3;
  localparam WIDTH_OR = 4;

  logic [WIDTH_OR - 1 : 0] busOr;
  logic [WIDTH_OR - 1 : 0] [WIDTH_AND - 1 : 0] busMain;

  assign busMain = {
    {x[0], ~a[0], ~a[1]},
    {x[1], a[0], ~a[1]},
    {x[2], ~a[0], a[1]},
    {x[3], a[0], a[1]}
};

  and_param_module # (
                     .WIDTH_I(WIDTH_AND)
                   )
                   and_0 (
                     .in(busMain[0]),
                     .out(busOr[0])
                   );


  and_param_module # (
                     .WIDTH_I(WIDTH_AND)
                   )
                   and_1 (
                     .in(busMain[1]),
                     .out(busOr[1])
                   );

  and_param_module # (
                     .WIDTH_I(WIDTH_AND)
                   )
                   and_2 (
                     .in(busMain[2]),
                     .out(busOr[2])
                   );

  and_param_module # (
                     .WIDTH_I(WIDTH_AND)
                   )
                   and_3 (
                     .in(busMain[3]),
                     .out(busOr[3])
                   );

  or_param_module # (
                    .WIDTH_I(WIDTH_OR)
                  )
                  or_0 (
                    .in(busOr),
                    .out(out)
                  );

endmodule
