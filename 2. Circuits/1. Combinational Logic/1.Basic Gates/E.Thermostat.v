module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    always @(*) begin
        if(mode == 1)begin //winter
            aircon = 0;
            heater = too_cold ? 1:0;
            fan = too_cold | fan_on;
        end
        else begin //summer
            heater = 0;
            aircon = too_hot ? 1:0;
            fan = too_hot | fan_on;
        end
    end
endmodule
