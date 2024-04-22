module mux_arr_on_logic_top_module
(
    input logic [1 : 0] in,
    output logic [1 : 0] out
);

logic [3 : 0] [1 : 0] busOr;
logic [3 : 0] [1 : 0] busX = {2'b00 , 2'b01 , 2'b10 , 2'b11};
logic [3 : 0] [1 : 0] busIn;
assign busIn = {
    {~in[0], ~in[1]},
    {in[0], ~in[1]},
    {~in[0], in[1]},
    {in[0], in[1]}
};

and_arr_param_module # (
    .WIDTH_I(3)
  )
  and_arr_0 (
    .in(busIn[0]),
    .x(busX[0]),
    .out(busOr[0])
  );

  and_arr_param_module # (
    .WIDTH_I(3)
  )
  and_arr_1 (
    .in(busIn[1]),
    .x(busX[1]),
    .out(busOr[1])
  );

  and_arr_param_module # (
    .WIDTH_I(3)
  )
  and_arr_2 (
    .in(busIn[2]),
    .x(busX[2]),
    .out(busOr[2])
  );

  and_arr_param_module # (
    .WIDTH_I(3)
  )
  and_arr_3 (
    .in(busIn[3]),
    .x(busX[3]),
    .out(busOr[3])
  );

  or_arr_param_module1  or_arr (
    .in(busOr),
    .out(out)
  );
    
endmodule