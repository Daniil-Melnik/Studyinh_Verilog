`timescale 1 ns / 1 ps

module btn_led_top_tb
  ();

  logic in_s = 8'b00000000;
  logic out_s;

  btn_led_top  btn_led_top_inst (
                 .btns(in_s),
                 .leds(out_s)
               );
  initial
  begin
    #2    in_s = 8'b00000010;
    #2    in_s = 8'b00000100;
    #2    in_s = 8'b00001000;
    #2    in_s = 8'b00010000;
    #2    in_s = 8'b00100000;
    #2    in_s = 8'b01000000;
    #2    in_s = 8'b10000000;
    #2    in_s = 8'b11000000;
    #2    in_s = 8'b01100000;
    #2    in_s = 8'b00110000;
    #2    in_s = 8'b00011000;
    #2    in_s = 8'b00001100;
    $display ("Sim Finish!");
    $stop;

  end

endmodule
