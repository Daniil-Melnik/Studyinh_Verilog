// inversion operation with arrays

module not_arr_module
  #(
     parameter  WIDTH_I,
     localparam WIDTH_O = WIDTH_I
   )
   (
     input  logic [WIDTH_I - 1 : 0] a,
     output logic [WIDTH_O - 1 : 0] out
   );

    assign out    = ~a;

endmodule

// not_arr_module # (
//     .WIDTH_I(WIDTH_I)
//   )
//   not_arr_module_inst (
//     .a(a),
//     .out(out)
//   );
