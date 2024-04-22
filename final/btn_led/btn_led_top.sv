module btn_led_top (
    input logic [7:0] btns;
    output logic [7:0] leds;
);

assign leds = btns;
    
endmodule