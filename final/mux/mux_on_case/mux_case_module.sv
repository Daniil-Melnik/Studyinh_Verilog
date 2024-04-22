module mux_case_module
  #(
     parameter WIDTH_IN,
     parameter WIDTH_OP,
     parameter WIDTH_BUS
   )
   (
     input logic [WIDTH_IN - 1 : 0] in,
     input logic [WIDTH_OP - 1 : 0][WIDTH_BUS - 1 : 0] options,
     output logic [WIDTH_BUS - 1 : 0] out
   );

  always_comb
  begin
    case (in)
      0:
        out = options[0];
      1:
        out = options[1];
      2:
        out = options[2];
      3:
        out = options[3];
      default:
        out = options[0];
    endcase
  end

endmodule
